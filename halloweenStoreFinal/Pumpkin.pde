/*
Thijmen van Groenestijn
Xueting Lin
Programming Final Project Group:26
*/
class Pumpkin {
  color stem = #835D34;
  color pumpkin = #F2AF31;
  color pumpkinInner = #F5C254;
  boolean isDark;
   	

  //Pupils
  float pupilOfsetX;
  float pupilOfsetY;

void display() {
checkDark();
updatePupil();
pushStyle();
  fill(pumpkin);
  ellipse(774, 498, 112, 103);
  pushMatrix();
  rotate(radians(-25));
  ellipse(461, 767, 70, 102);
  arc(460, 767 ,40 , 102, -4.9, -1.6);
  rotate(radians(50));
  ellipse(944, 112, 70, 102);
  arc(940, 113 ,40 , 102, -1.6, 1.3);
  popMatrix();
  
   if(isDark){
  circle(735, 488, 36); //left eye perspective
  circle(805, 488, 37); //right eye perspective
  fill(pumpkinInner);
  circle(738, 488, 30); //left eye
  circle(807, 488, 31); //right eye 
  
  arc(770, 513 ,73 , 45, 0, PI);   //smile
   //Pupils
  fill(pumpkin);
  circle(738 + pupilOfsetX, 488 + pupilOfsetY, 10); //left pupil
  circle(807 + pupilOfsetX, 488 + pupilOfsetY, 10); //right pupil


  fill(pumpkin);
  triangle(744, 513, 761, 513, 759, 527);  //tooth left
  triangle(781, 513, 797, 513, 794, 527);  //tooth Right
  line(734, 513, 806, 513); //mouth upper line
   }
  
  fill(stem);
  triangle(770, 432, 801, 439, 775, 465);  //stem
  popStyle();
  }


  void checkDark(){
   isDark=dayMode();
 }
 void updatePupil(){
if(isDark){
    //calculate the distance from the mouse to the centre of the figure
    float distanceX = mouseX - 154;
    float distanceY = mouseY - 94;
    //Map the distance to -7 to 7, from the distance of the mouse and -+ the width and heigt for full coverage of the window. 
    pupilOfsetX = constrain(map(distanceX, -154, width, -10, 10), -5, 5);
    pupilOfsetY = constrain(map(distanceY, -94, height, -10, 10), -5, 5);

}
else{
    pupilOfsetX =0;
    pupilOfsetY =0;
}
//Turns off tracking of eyes When called
}

}
