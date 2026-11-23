/*
Thijmen van Groenestijn
Xueting Lin
Programming Final Project Group:26
*/
class Inside { 
  
boolean isDark;

void display() {
  
fill(#D8CEB8);             //inside
rect(45, 220, width-90, 388);     //inside walls
fill(#817A71);
rect(45, 450, 860, 100);  //floor

poster();
ballerinaTable();
 
 pushMatrix();              //poscard rack
 translate(9, -70);
 scale(1.1);
 rack();
 popMatrix();
 
 shelf.display();                 //front shelf
 
 pushMatrix();
 translate(570, 66);
 scale(0.7);
 shelf.display();                //back shelf
 popMatrix();
 
 clownTable();         //clown table
 
 pushMatrix();
 translate(9, 13);
 clown.display();       //clown
 popMatrix();
 
 pushMatrix();
 translate(-80, -8);
 mummy.display(); 
 popMatrix();
 
 chest.display();        //ballerina chest
 
 fill(#462F15);
 rect(45, 549, width-90, 59);      //inside display plank
 
 pushMatrix();
 scale(1.3);
 translate(-154, -94);
  //WHEN CHANGING LOCATOIN MAKE SURE TO MODIFY THE updatePupil() in the Pumpkin.pde
 pumpkin.display();            //pumpkin
 popMatrix();
 
cards.bigCard();           //big card function
 checkDark();
 if (isDark == true) {
   fill(#0C1276, 70);
   rect(0, 0, width, height);
 }
 

}                           //end display funcion

void poster() {
  fill(#E5E4E1);
  rect(303, 249, 130, 166); //poster left outer
  rect(453, 249, 130, 166); //poster right outer
  rect(311, 257, 115, 149); //poster left inner
  rect(461, 257, 115, 149); //poster right inner
  
  fill(#F5CF45);
  circle(370, 330, 77); //body        //smiley on left poster
  arc(370, 335 ,47 , 21, 1, PI); //smile
  fill(#504E49);
  circle(352, 320, 18); //eye
  circle(386, 320, 18); //eye
  
  fill(#417C44);
  arc(522, 340 ,68 , 121, PI, 6.3); //cactus
  
  fill(#6C533E);
  rect(489, 346, 66, 52, 9, 9, 15, 15); //pot body
  rect(479, 340, 83, 27, 2, 2, 4, 4); //pot top
}

 void rack() {
int plateHeightBase = 548;    
 color rackColor = #CECDCC; 
 
 fill(rackColor);
 
 rect(257, 360, 6, 220);   //left leg
 rect(353, 361, 6, 220);   //right leg
 
  for(int i = 0; i < 3; i++) {  
  int plateHeight = plateHeightBase - (i*67);  
  
  fill(rackColor);
  ellipse(308, plateHeight, 105, 33); //bottom plate      //67 diff  
  cards.display(); //
  noFill();
  arc(308, plateHeight-18, 102, 23, 0, PI);
  fill(rackColor);
   } 
 popMatrix();
 } 
 
void ballerinaTable() {
  pushMatrix();
  translate(-30, -40);
  scale(1.1);
  
  fill(#835D34);
  rect(415, 516, 76, 16);    //leg support  
  rect(403, 484, 15, 65);    //left leg
  rect(490, 484, 15, 65);    //right leg
  rect(395, 481, 116, 19);   //table under
 }

void clownTable() {
  fill(#835D34);
  rect(777, 459, 128, 16);    //table 
  rect(791, 475, 10, 80);    //left leg
  rect(897, 475, 8, 80);    //right leg
 }
 
   void checkDark(){
    isDark=dayMode();
}
}
