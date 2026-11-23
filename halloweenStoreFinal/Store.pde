/*
Thijmen van Groenestijn
Xueting Lin
Programming Final Project Group:26
*/
class Store {

boolean isDark;
color red = #552b32;
color yellow = #f2e45a;

Store(float TempballoonX[], float TempballoonY[], color TempballoonColors[]) {
  
balloonX = TempballoonX;
balloonY = TempballoonY;
balloonColors = TempballoonColors;

font = loadFont("AppleSDGothicNeo-UltraLight-20.vlw");
nameNormImg = loadImage("nameNormal.png");
nameScaryImg = loadImage("nameScary.png");
textFont(font);
}
  
void display() {
background(#FFFFFF);
balloonBanner();

fill(#3B93D8);       //blue
rect(0, 0, width, 634);
fill(#40292D);
rect(-2, 21, width, 135);    //red board perspective
fill(red);     
rect(0, 0, width, 143);      //red board

fill(yellow);               //yellow
rect(20, 16, width-36, 92);  //yellow board

fill(red);              //red  
rect(0, 143, 15, 697);    //side poles L-R
rect(935, 143, 15, 619);

fill(#3977AF);                     //blue
rect(30, 202, width-60, 415);     //frame inside

line(45,220,30,202);              //upper lines L-R
line(903,220,920,202);
line(45,606,30,617);             //bottom lines L-R
line(903,606,920,617);

displayText();
 }
 
void displayText() {
checkDark();
fill(yellow);
text("COSTUMES  -  WIGS  -  MASKS  -  BALLOONS  -  PARTY STORE", 240, 133);

  if(isDark == true) {
  image(nameScaryImg, 54, -45, 857, 196);   //scary
  } else {
 image(nameNormImg, 54, -45, 857, 196);    //normal
  }
 }
 
void balloonBanner() {
fill(#FFFFFF);

for (int i = 0; i < balloonX.length; i++) {
    balloon(balloonX[i], balloonY[i], balloonColors[i]);
  }
}

void balloon(float x, float y, color c) { 
fill(c);
triangle(x - 14, y + 74, x, y + 52, x + 12, y + 74); 
ellipse(x, y, 98, 124);
fill(#FFFFFF, 170);
triangle(x + 15, y + -49, x+10, y -31, x + 42, y -20); 
 }
 
    void checkDark(){
    isDark=dayMode();
 }
}
