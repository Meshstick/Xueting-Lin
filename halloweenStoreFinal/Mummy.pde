/*
Thijmen van Groenestijn
Xueting Lin
Programming Final Project Group:26
*/
class Mummy {
  
boolean isDark;  
color mummy = #E5E3E1;
color mummyEye = #272424;

void display() {
  checkDark();
  
  if(isDark){
  mummyDark();
}
else {
  still();
 }
}
 
void mummyDark() {
  fill(mummy);
  rect(706, 487, 41, 121, 40, 40, 40, 40); //leg left
  rect(755, 490, 46, 117, 40, 40, 40, 40); //leg right  
  rect(629, 367, 132, 48, 40, 40, 40, 40); //arm back
  rect(702, 367, 105, 148, 41, 56, 17, 11); //body
  rect(736, 351, 25, 23, 30, 25, 2, 2); //neck
  circle(747, 320, 93);      //head
  rect(680, 377, 132, 48, 40, 40, 40, 40); //arm front
  
  pushMatrix();              //mummy rags
  noFill();
  rotate(radians(-18));
  arc(612, 539 ,94 , 28, 0, PI);
  arc(612, 524 ,90 , 20, 0, PI);
  rotate(radians(36));
  arc(813, 90 ,82 , 27, 0, 2);
  arc(809, 103 ,66 , 28, 0.4, 3);
  rotate(radians(-44));
  arc(483, 697 ,81 , 25, 1.6, PI);
  arc(469, 720 ,73 , 21, 0.0, PI);
  rotate(radians(30));
  arc(786, 435 ,107 , 20, 0, PI);
  arc(809, 411 ,117 , 21, 1, PI);
  rotate(radians(27));
  arc(868, -51 ,102 , 20, 1, PI);
  arc(835, -30 ,95 , 20, 1, PI);
  popMatrix();
  
  fill(#CB372F);
  circle(719, 326, 20);      //eye left
  circle(763, 330, 21);     //eye right
 }
 
void still() {
   fill(mummy);
  
  rect(706, 487, 41, 121, 40, 40, 40, 40); //leg left
  rect(755, 490, 46, 117, 40, 40, 40, 40); //leg right  
  rect(699, 373, 48, 132, 40, 40, 40, 40); //arm back
  rect(702, 367, 105, 148, 41, 56, 17, 11); //body
  rect(736, 351, 25, 23, 30, 25, 2, 2); //neck
  circle(747, 320, 93);      //head
  rect(761, 372, 48, 132, 40, 40, 40, 40); //arm front
  
  pushMatrix();              //mummy rags
  noFill();
  rotate(radians(-18));
  arc(612, 539 ,94 , 28, 0, PI);
  arc(612, 524 ,90 , 20, 0, PI);
  rotate(radians(36));
  arc(813, 90 ,82 , 27, 0, 2);
  arc(809, 103 ,66 , 28, 0.4, 3);
  rotate(radians(-44));
  arc(482, 696 ,82 , 20, 1, PI);
  arc(469, 722 ,79 , 20, 1, PI);
  rotate(radians(30));
  arc(786, 435 ,107 , 20, 0, PI);
  arc(809, 411 ,117 , 21, 1, PI);
  rotate(radians(-13));
  arc(720, 513 ,62 , 20, 1, PI);
  arc(715, 541 ,58 , 20, 1, PI);
  popMatrix();
  
  fill(mummyEye);
  circle(719, 326, 20);      //eye left
  circle(763, 330, 21);     //eye right
 }
 
 void checkDark(){
    isDark=dayMode();
}

}
