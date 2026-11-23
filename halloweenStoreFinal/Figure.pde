/*
Thijmen van Groenestijn
Xueting Lin
Programming Final Project Group:26
*/

class Figure{
//Displays the shelfs in the window. Tracks the mouse when its dark.
int x;
int y;

boolean isDark;
float scale;

//pupil offset variables
float pupilOfsetX;
float pupilOfsetY;
float pupilStiffness=1;

//color vars
color colorHead;
color colorBody;
color colorRightEye;
color colorLeftEye;
color colorRightPupil;
color colorLeftPupil;
color colorFeed;
Figure(int intX, int intY, float intScale, color intColorHead, color intColorBody, color intColorRightEye, color intColorLeftEye, color intColorRightPupil, color intColorLeftPupil, color intColorFeed){
    x=intX;
    y=intY;
    isDark=dayMode();
    scale=intScale;
    //Pupil Offset variables
    pupilOfsetX=0;
    pupilOfsetY=0;
    //Color vars
    colorHead=intColorHead;
    colorBody=intColorBody;
    //Eyes Right
    colorRightEye=intColorRightEye;
    colorRightPupil=intColorRightPupil;
    //Eyes Left
    colorLeftEye=intColorLeftEye;
    colorLeftPupil=intColorLeftPupil;
    //Feed color
    colorFeed=intColorFeed;


}
void display(){
checkDark();
pushMatrix();
translate(x,y);
pushStyle();
scale(scale);
rectMode(CENTER);

    //Head
    fill(colorHead);
    arc(0,0,100,100,PI,TWO_PI);
    //Left eye
    fill(colorLeftEye);
    circle(-25,-25,20);
    //Left pupil
    fill(colorLeftPupil);
    stroke(colorLeftPupil);
    circle(-25+pupilOfsetX,-25+pupilOfsetY,6);
    //Right eye
    fill(colorRightEye);
    circle(25,-25,20);
    //Right pupil
    fill(colorRightPupil);
    stroke(colorRightPupil);
    circle(25+pupilOfsetX,-25+pupilOfsetY,6);
    //Body
    //noStroke();
    fill(colorBody);
    rect(0,25,100,50);
    rectMode(CORNER);
    //Restore the orginal matrix
    popMatrix();
    pushMatrix();
    //Store the original matrix, and then translate to the center for the feed
    translate(x+25*scale,y+25*scale);
    scale(scale);
    //feed Left
    fill(colorFeed);
    arc(10,25,20,20,PI,TWO_PI);
    //feed Right
    arc(-60,25,20,20,PI,TWO_PI);
    popMatrix();
    popStyle();
}
//When dark follows the mouse, when not  they do not follow the mouse.
void updatePupil(float mouseX, float mouseY){
if(isDark){
    //calculate the distance from the mouse to the centre of the figure
    float distanceX = mouseX - x;
    float distanceY = mouseY - y;
    //Map the distance to -7 to 7, from the distance of the mouse and -+ the width and heigt for full coverage of the window. 
    pupilOfsetX = constrain(map(distanceX, -x, width, -7, 7), -7, 7);
    pupilOfsetY = constrain(map(distanceY, -y, height, -7, 7), -7, 7);

}
else{
    pupilOfsetX =0;
    pupilOfsetY =0;
}
//Turns off tracking of eyes When called
}
void checkDark(){
    isDark=dayMode();
 }
}
