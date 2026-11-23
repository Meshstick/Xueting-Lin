/*
Thijmen van Groenestijn
Xueting Lin
Programming Final Project Group:26
*/
PFont font;          //container variable
PImage nameNormImg;
PImage nameScaryImg;
PImage cardTextImg;

int totalBalloons = 70;

Shelf shelf;
Clown clown;
Store store;
Inside inside;
ballerinaChest chest;
Mummy mummy;
Pumpkin pumpkin;
Cards cards;

float[] balloonX = new float[totalBalloons];
float[] balloonY = new float[totalBalloons];
color[] balloonColors = new color[totalBalloons];

Light Light1;

void setup() {
  size(950, 750);
  
  //Creates a lantern(X,Y,Scale,Color Sides, Color ON, Color Top, isON?)
  Light1=new Light(100,550,1,color(0,0,0),color(255,255,0,255),color(255,0,0),false);
  clown = new Clown();
  inside = new Inside();
  chest = new ballerinaChest();
  mummy = new Mummy();
  pumpkin = new Pumpkin();
  shelf = new Shelf();
  cards = new Cards();
  
  // (pink, yellow, blue, red, orange)
color[] colors = {#FFE5F7, #F7B05B, #F4D35E, #3B93D8, #A63A50, #80F099};
randomSeed(10); 
  for (int i = 0; i < totalBalloons; i++) {
    
   balloonColors[i] = color((colors[int(random(colors.length))]));
   balloonX[i] = random(-30, width + 30);
   balloonY[i] = random(620, 770); 
  }
 
store = new Store(balloonX, balloonY, balloonColors);
 

}

void draw() {
  store.display();
  inside.display(); 
  Light1.display();
}

void mousePressed() {
  cards.cardClick();
  chest.chestClick();
  clown.noseClick(mouseX, mouseY);
  Light1.checkMouseClick(mouseX,mouseY);
  }
  
boolean dayMode(){
    if(Light1.isOn){
        return true;
    }
    else{
        return false;
    }
}
