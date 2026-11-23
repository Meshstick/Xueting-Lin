/*
Thijmen van Groenestijn
Xueting Lin
Programming Final Project Group:26
*/
class Shelf {
Figure[] FigureArray = new Figure[12];

Shelf() {
    //Figure (X,Y,scale,colorHead,ColorBody,colorRightEye,colorLeftEye,colorRightPupil,colorLeftPupil,colorFeed)
   for(int i=0; i<FigureArray.length/4; i++){
   FigureArray[i]=  new Figure(95+70*i, 307, 0.5,color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)));
   FigureArray[i+3]=new Figure(95+70*i, 374, 0.5,color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255))); 
   FigureArray[i+6]=new Figure(95+70*i, 441, 0.5,color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)));
   FigureArray[i+9]=new Figure(95+70*i, 508, 0.5,color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)),color(random(0,255),random(0,255),random(0,255)));
}
}

void bookShelf() {
int shelfHeightBase = 466;
color shelf = #835D34;

  fill(shelf);
  rect(45, 220, 241, 363); //back plank
  rect(45, 220, 11, 367); //figurine case left 
  rect(275, 220, 11, 364); //figurine case right
  rect(45, 220, 241, 46); //top plank 
  rect(45, 532, 241, 61); //bottom plank
  
  for(int i = 0; i < 3; i++) {
    
  int shelfHeight = shelfHeightBase - (i*67);  
  rect(56, shelfHeight, 219, 12); //bottom shelf
  }
 }
 
void display() {
  bookShelf();
  
  for (int i = 0; i < FigureArray.length; i++) {
        FigureArray[i].updatePupil(mouseX, mouseY);
        FigureArray[i].display();
    }
  }   
}
