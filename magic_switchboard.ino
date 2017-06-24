/*
# Magic Switchboard
A magic schwitchboard is a little box with four switches and four lamps colored in red, green, blue and yellow.
The switches have got hats in the same colors. You can change the position of the lamps and the hats in any way you want.
But the red switch always lights the red lamp, the blue the blue, the yellow the yellow and the green the green one.

How does this work?
The magician is the one operating the switchbox. He has to remember which switch was turned off last. 
He then hands off the box to the audience and asks them to rearrange the colors.
When the audience returns his box he remembers the sequence in which the lights turn on and turns the switches with matching color.

For the audience it seems like the colors are connected somehow.

 */

// how many lamps/switches are connected
#define LAMP_COUNT 4

typedef uint8_t lamp_t;
typedef uint8_t switch_t;

const lamp_t LAMP1 = 6;
const lamp_t LAMP2 = 7;
const lamp_t LAMP3 = 8;
const lamp_t LAMP4 = 9 ;

const switch_t SWITCH1 = 2;
const switch_t SWITCH2 = 3;
const switch_t SWITCH3 = 4;
const switch_t SWITCH4 = 5;

#define ON 1
#define OFF 0

// how long do we wait when turned off, to reset and powerdown
#define RESET_DELAY 50000



// this switch is not connected, yet
#define DISCONNECTED (0xFF)


// which switch is connected to which lamp
// connections[switch] = lamp
uint8_t connections[LAMP_COUNT] = {DISCONNECTED, DISCONNECTED, DISCONNECTED, DISCONNECTED };

// which was the last swich changed?
uint8_t last_changed = 0;

// current sequence used for assigning new lamps to unconnected switches
uint8_t sequence = 0;

// how many lamps have already be connected
uint8_t current_lamp = 0;

// sequences for new lamp connections
uint8_t lamp_ordering[LAMP_COUNT][LAMP_COUNT] = {
  { 0, 1, 2, 3 },
  { 1, 0, 2, 3 },
  { 2, 3, 1, 0 },
  { 3, 2, 1, 0 }
};

// this mask stores the previous state of input
uint8_t last_switches = 0b0000;

// this mask stores the current state of input
uint8_t current_switches = 0b0000;

void setup() {
  pinMode(LAMP1, OUTPUT);
  pinMode(LAMP2, OUTPUT);
  pinMode(LAMP3, OUTPUT);
  pinMode(LAMP4, OUTPUT);

  pinMode(SWITCH1, INPUT);
  pinMode(SWITCH2, INPUT);
  pinMode(SWITCH3, INPUT);
  pinMode(SWITCH4, INPUT);

  cli();
  // activate pin change interrupt for switches
  PCICR |= _BV(PCIE2);
  PCMSK2 |= _BV(PCINT18) | _BV(PCINT19) | _BV(PCINT20) | _BV(PCINT21);
  
  // activate interupts
  sei();
}

void loop() {
  idle();
  //blink();
}

void enable_reset_timer() {
  cli();
  
  // reset
  TCCR1A = 0;
  TCCR1B = 0;

  // set up timer 1 to prescaler / 1024
  TCCR1B |= _BV(CS12) | _BV(CS10);
  
  // set to CTC Mode with OCR1A as top value
  TCCR1B |=  _BV(WGM12);
  TCNT1 = 0;
  // activate timer counter compare register
  TIMSK1 = _BV(OCIE1A);
  // set timer compare register
  OCR1A = RESET_DELAY;  
  
  sei();
}

void disable_reset_timer() {
  // activate timer counter compare register
  TIMSK1 = 0;
}


// power modes
void idle() {
  // in idle the main loop is paused, but the timer and the pcint are running
  SMCR = _BV(SE); // set to idle
  asm("sleep");
}

#define PRTWI0 7
#define PRSPI0 2
void powerdown() {
  // in powerdown the timers and main loop are stopped, can only be woken up by PCINT (turning a switch)
  // set sleep mode to powerdown
  SMCR = _BV(SM1) | _BV(SE);
  // disable everthing that costs power
  //PRR = _BV(PRTWI0) | _BV(PRTIM2) | _BV(PRTIM0) | _BV(PRTIM1) | _BV(PRSPI0) | _BV(PRUSART0) | _BV(PRADC); 
  asm("sleep");
}

void set_lamp(lamp_t lamp, bool state) {
  if(lamp == 0) digitalWrite(LAMP1, state);
  if(lamp == 1) digitalWrite(LAMP2, state);
  if(lamp == 2) digitalWrite(LAMP3, state);
  if(lamp == 3) digitalWrite(LAMP4, state);
}

bool get_switch(switch_t swit) {
  if(swit == 0) return digitalRead(SWITCH1);
  if(swit == 1) return digitalRead(SWITCH2);
  if(swit == 2) return digitalRead(SWITCH3);
  if(swit == 3) return digitalRead(SWITCH4);
}

uint8_t get_switches() {
  return digitalRead(SWITCH4) << 3 | digitalRead(SWITCH3) << 2 | digitalRead(SWITCH2) << 1 | digitalRead(SWITCH1);
}

ISR(TIMER1_COMPA_vect) {
  // if all switches are turned off
  if(!current_switches) {
    // disconnect all switches
    for(byte i = 0; i < LAMP_COUNT; i++) {
      connections[i] = DISCONNECTED;
    }

    // the lights go on in one of 4 sequences
    // the sequence is selected by the last switch turned off
    current_lamp = 0;
    sequence = last_changed;

    disable_reset_timer();
    // got to sleep
    //powerdown();
  }


  disable_reset_timer();
}

// returns a lamp without a connection. Calling this function more than LAMP_COUNT times causes an error!
byte get_next_lamp() {
  if(current_lamp < LAMP_COUNT)
    return lamp_ordering[sequence][current_lamp++];
  else fail();
}

// a switch has been switched
ISR(PCINT2_vect)
{
  // idle while active, so timers are running
  //idle();
  
  current_switches = get_switches();
  uint8_t changed = current_switches ^ last_switches;

  for(uint8_t i = 0; i < LAMP_COUNT; i++) {
    // switch i changed
    if((changed >> i) & 1) {
      // remember which switch was last changed
      last_changed = i;
      // does it already have an connection?
      if(connections[i] == DISCONNECTED) {
        // if not connect to the next free Lamp
        connections[i] = get_next_lamp();
      }
    }
  }
  

  // sets the lamps by their connected switches
  for(uint8_t i = 0; i < LAMP_COUNT; i++) {
    if(connections[i] != DISCONNECTED)
      set_lamp(connections[i], get_switch(i));
  }

  last_switches = current_switches;

  // if all switches turned off
  if(!current_switches) {
    enable_reset_timer();
  }
}


void fail() {
  while(1) {
    blink();
    delay(100);
  }
}

void blink() {
  for(uint8_t i = 0; i < LAMP_COUNT; i++) {
    set_lamp(i, ON);
  }
  //for(uint16_t i = 0; i < 16000000; i++) asm("nop");
  delay(500);
  for(uint8_t i = 0; i < LAMP_COUNT; i++) {
    set_lamp(i, OFF);
  }
  delay(500);
  //for(uint16_t i = 0; i < 16000000; i++) asm("nop");
}

