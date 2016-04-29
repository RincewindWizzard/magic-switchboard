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

This version is designed for the Attiny 2313 using the following pin Layout.

      Attiny 2313
            ______
Reset      |      | Vdd
           |      | PB7 Lamp 1
           |      | PB6 Lamp 2
           |      | PB5 Lamp 3
           |      | PB4 Lamp 4
           |      | PB3 Switch 4
           |      | PB2 Switch 3
           |      | PB1 Switch 2
           |      | PB0 Switch 1
GND        |______| 

 */

// this is the mask to get our input
#define SCHWITCH_MASK 0b1111

// this is the mask for our output
#define LAMP_MASK 0b11110000

// how long do we wait when turned off, to reset and powerdown
#define RESET_DELAY 2500

// how many lamps/switches are connected
#define LAMP_COUNT 4

// shift a mask up the output mask
#define LAMP_SHIFT 4

// this switch is not connected, yet
#define DISCONNECTED (0xFF)

// power modes
// in idle the main loop is paused, but the timer and the pcint are running
#define idle( )   MCUCR = MCUCR & 0b10001111; MCUCR |= 1 << SE | 0 << SM1 | 0 << SM0;

// in powerdown the timers and main loop are stopped, can only be woken up by PCINT (turning a switch)
#define powerdown( ) MCUCR = MCUCR & 0b10001111; MCUCR |= 1 << SE | 1 << SM1 | 1 << SM0;

// which switch is connected to which lamp
// connections[switch] = lamp
byte connections[LAMP_COUNT] = {DISCONNECTED, DISCONNECTED, DISCONNECTED, DISCONNECTED };

// which was the last swich changed?
byte last_changed = 0;

// current sequence used for assigning new lamps to unconnected switches
byte sequence = 0;

// how many lamps have already be connected
byte current_lamp = 0;

// sequences for new lamp connections
byte lamp_ordering[LAMP_COUNT][LAMP_COUNT] = {
  { 0, 1, 2, 3 },
  { 1, 0, 2, 3 },
  { 2, 3, 1, 0 },
  { 3, 2, 1, 0 }
};

// this mask stores the previous state of input
byte last_switches = 0b0000;

// this mask stores the current state of input
byte current_switches = 0b0000;
 
void setup() {
  // sets the LEDs to OUTPUT and the switches to input
  DDRB = 0b11110000;

  // activate pin change interrupt for switches
  PCMSK |= 0b00001111;
  GIMSK |= 1 << PCIE;

  // set sleep modes
  idle();

  // update switches
  PORTB = LAMP_MASK & (PINB << 4);

  // set up timer 1
  TCCR1B = (TCCR1B & ~0b111) | 0b101;
  
  // set timer compare register
  OCR1A = RESET_DELAY;
  TIMSK |= 1 << OCIE1A;

  // activate interupts
  sei();
}

void loop() {
  asm("sleep");
  //PORTB = LAMP_MASK & (TCNT1>>4);
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

    // deactivate timer
    TIMSK &= ~(1 << OCIE1A);
    // got to sleep
    powerdown();
  }
  TCNT1 = 0;
}

// returns a lamp without a connection. Calling this function more than LAMP_COUNT times causes an error!
byte get_next_lamp() {
  if(current_lamp < LAMP_COUNT)
    return lamp_ordering[sequence][current_lamp++];
  else fail();
}

// a switch has been switched
ISR(PCINT_vect)
{
  // idle while active, so timers are running
  idle();
  
  current_switches = PINB & SCHWITCH_MASK;
  byte changed = current_switches ^ last_switches;

  for(byte i = 0; i < LAMP_COUNT; i++) {
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
  byte lamps = 0b0000;
  for(byte i = 0; i < LAMP_COUNT; i++) {
    if(connections[i] != DISCONNECTED)
      lamps |= ((current_switches >> i) & 1) << connections[i];
  }
  
  PORTB = LAMP_MASK & (lamps << LAMP_SHIFT);
  last_switches = current_switches;

  // if all switches turned off
  if(!current_switches) {
    // reset and activate timer
    TCNT1 = 0;
    TIMSK |= 1 << OCIE1A;
  }
}

void fail() {
  while(1) {
    PORTB = LAMP_MASK & 0xFF;
    delay(100);
    PORTB = LAMP_MASK & 0;
    delay(100);
  }
}

