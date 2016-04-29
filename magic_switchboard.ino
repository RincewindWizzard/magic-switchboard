/*
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

#define SCHWITCH_MASK 0b1111
#define LAMP_MASK 0b11110000
#define RESET_DELAY 3000
#define LAMP_COUNT 4
#define LAMP_SHIFT 4
#define DISCONNECTED (0xFF)


byte connections[LAMP_COUNT] = {DISCONNECTED, DISCONNECTED, DISCONNECTED, DISCONNECTED };
byte change_history[LAMP_COUNT] = { 0, 1, 2, 3 };

byte current_lamp = 0;
byte lamp_ordering[LAMP_COUNT] = { 0, 1, 2, 3 };


byte last_switches = 0b0000;
byte current_switches = 0b0000;
 
void setup() {
  // sets the LEDs to OUTPUT and the switches to input
  DDRB = 0b11110000;

  // activate pin change interrupt for switches
  PCMSK |= 0b00001111;
  GIMSK |= 1 << PCIE;

  // set sleep modes
  //MCUCR |= 1 << SE | 1 << SM1 | 1 << SM0;
  sei();

  // update switches
  PORTB = LAMP_MASK & (PINB << 4);

  // set up timer 1
  TCCR1B = (TCCR1B & ~0b111) | 0b101;
  
  // set timer compare register
  OCR1A = RESET_DELAY;
  TIMSK |= 1 << OCIE1A;
}

void loop() {
  asm("sleep");
  //PORTB = LAMP_MASK & (TCNT1>>4);
}

ISR(TIMER1_COMPA_vect) {
  if(current_switches == 0b0000) {
    for(byte i = 0; i < LAMP_COUNT; i++) {
      connections[i] = DISCONNECTED;
    }

    // the lights go on the same sequence the went off
    memcpy(lamp_ordering, change_history, LAMP_COUNT);
    current_lamp = 0;

    for(byte i = 0; i < LAMP_COUNT; i++) {
      PORTB = ((1 << get_next_lamp()) << LAMP_SHIFT) & LAMP_MASK;
      delay(1000);
      PORTB = 0;
    }
    current_lamp = 0;
    // deactivate timer
    TIMSK &= ~(1 << OCIE1A);
  }
  TCNT1 = 0;
}

// returns a lamp without a connection. Returns DISCONNECTED if there is no such lamp.
byte get_next_lamp() {
  if(current_lamp < LAMP_COUNT)
    return 3 - lamp_ordering[3 - current_lamp++];
  else fail();
}

void push_history(byte switched) {
  byte i = LAMP_COUNT;
  for(; i > 0 && change_history[i] != switched; i--);
  for(; i > 0; i--) {
    change_history[i] = change_history[i - 1];
  }
  change_history[0] = switched;
}

// a switch has been switched
ISR(PCINT_vect)
{
  current_switches = PINB & SCHWITCH_MASK;
  byte changed = current_switches ^ last_switches;

  for(byte i = 0; i < LAMP_COUNT; i++) {
    // switch i changed
    if((changed >> i) & 1) {
      // remember which switch was last changed
      push_history(i);
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

  // reset and activate timer
  TCNT1 = 0;
  TIMSK |= 1 << OCIE1A;
}

void fail() {
  while(1) {
    PORTB = LAMP_MASK & 0xFF;
    delay(100);
    PORTB = LAMP_MASK & 0;
    delay(100);
  }
}

