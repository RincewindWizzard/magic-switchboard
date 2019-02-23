# Magic Switchboard
A magic schwitchboard is a little box with four switches and four lamps colored in red, green, blue and yellow.
The switches have got hats in the same colors. You can change the position of the lamps and the hats in any way you want.
But the red switch always lights the red lamp, the blue the blue, the yellow the yellow and the green the green one.
How does this work?
The magician is the one operating the switchbox. He has to remember which switch was turned off last. 
He then hands off the box to the audience and asks them to rearrange the colors.
When the audience returns his box he remembers the sequence in which the lights turn on and turns the switches with matching color.
For the audience it seems like the colors are connected somehow.

# Wiring
You can find wiring instructions in the [Schematics](Schematic_Magic-Switchboard.png).
The [Arduino Nano](https://store.arduino.cc/arduino-nano) can be powered with up to 12V.

With the [BC547](https://www.sparkfun.com/datasheets/Components/BC546.pdf) transistor you can safely drive a current up to 100 mA and voltage of 50V for your light bulbs. For bigger loads consider using [TIP100](https://www.onsemi.com/pub/Collateral/TIP100-D.PDF).

The voltage source for the arduino nano can be seperate to the voltage source of the lights, but they have to have a common ground (GND) for the circuit to work. For driving 230VAC (common household plug) light bulbs you might want to use a galvanic separation (opto-isolator). If you don't know what that means, don't try it.

If all lamps are off, the arduino is switched into sleep mode, which draws significant less current.
This circuit doesn't have a low power warning, so if there is strange behaviour (lamps dont turn on as expected) you might try change your batteries.

# How it Works
The sequence in which the lamps turn on is determined by last lever turned off.
After a longer sleep time (ca. 30sec) it resets to default = 0 lever.

| Lever (left to right) | Turn on Sequence |
| --------------------- |:----------------:|
| 0                     | 0, 1, 2, 3       |
| 1                     | 1, 0, 2, 3       |
| 2                     | 2, 3, 1, 0       |
| 3                     | 3, 2, 1, 0       |

In order to connect the correct colors from levers to lamps, you need to remember which lamp turns on next and flip the lever with the corresponding color.

# Parts List
- ON/OFF switch (MTS-203)
- color caps
- light bulb socket E10
- LED light bulbs E10 in red, green, blue, yellow
- Arduino Nano (or a cheap chinese clone)
- Battery Clip for CR2477: https://www.digikey.de/product-detail/de/keystone-electronics/3039/36-3039-ND/3884009
- On/Off Switch: https://www.digikey.de/product-detail/de/cw-industries/GF-123-3011/CWI334-ND/4089772

# Fehler
## Version v4
- Obere Kontaktfläche für Knopfzelle nicht mit GND verbunden
- bei einem boost converter von 5V zieht die Schaltung 80 mA, was deutlich über der Spezifikation für CR2477 Knopfzellen liegt (15mA)
