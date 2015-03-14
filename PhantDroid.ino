/*
PhantDroid Analog Reader
03/14/2015 Pete Marchetto, pmm223@cornell.edu

This program polls analog inputs once every period and outputs them in the form:
v1=1000
v2=10
etc.
This program is designed for use with the PhantDroid.sh shell script.

This code follows the standard beerware license: if you use it, and meet me, you owe me a beer then. Hooray beer.
*/

const int channels=8;
const int period=60000;

void setup() {
  // put your setup code here, to run once:
  Serial.begin (9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  for(int i=0; i<channels; i++){
    Serial.print("v");
    Serial.print(i+1);
    Serial.print("=");
    Serial.print(analogRead(i));
    Serial.println();
  }
}
