/*
Thijmen van Groenestijn
Xueting Lin
Programming Final Project Group:26
*/
class Light{
    int x;
    int y;
    float scale;
    //Color vars
    color colorSides;
    color colorOn;
    color colorTop;
    color candle;

    boolean isOn;
    float seed = random(1000);  // random seed for varius effects.
        Light(int intX, int intY, float intScale,color intColorSides, color intColorON, color intColorTop, boolean intIsOn){
        x=intX;
        y=intY;
        scale=intScale;
        colorSides=intColorSides;
        colorOn=intColorON;
        colorTop=intColorTop;
        isOn=intIsOn;

    }

void display(){
    pushStyle();
    pushMatrix();
    translate(x,y);
    scale(scale);
    rectMode(CENTER);
    //Lantern Body
    noFill();
    strokeJoin(ROUND);
    stroke(colorSides);
    strokeWeight(5);
    rect(0,0,75,100);
    fill(colorTop);
    triangle(75/2,-50,-75/2,-50,0,-100);
    //Light Should be disabled when the light is off.
    noStroke();
    fill(flame());
    ellipse(0, 30 - heightFlame() / 2, 20, heightFlame());
    fill(200,200,200,100);
    rect(0,40,15,25);
    popMatrix();
    //reset Stroke Weight to orginial
    strokeWeight(1);
    popStyle();
}

color flame(){
    if(isOn){
        //Slightly flicker the candle, by comparing the colorOn with Black. and change the color.
        float flicker = noise(frameCount *0.1 +seed);
        color colorCandle = lerpColor(colorOn, color(200), flicker * 0.8);
        return colorCandle;
    }
    else{
        return  color(0,1);
    }
}

float heightFlame(){
    float VarHeight = noise(frameCount * 0.05+seed);
    //First nummber needs to be changing to get a new value each frame. 
    //Second number sets the Speed. and the 
    //Third number adds a random seed to it so it won't be the same evrytime. 
    float h = 30+VarHeight*50; 
    //Min size = 30 and the max is 80.
    return h;
}
void checkMouseClick(int mouseX, int mouseY){
    if(mouseX>x-75/2*scale && mouseX<x+75/2*scale && mouseY>y-50*scale && mouseY<y+50*scale){
        isOn=!isOn;
        println(isOn);
        
   }
 }
}
