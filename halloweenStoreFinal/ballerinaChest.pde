/*
Thijmen van Groenestijn
Xueting Lin
Programming Final Project Group:26
*/
class ballerinaChest {
  
float gloabalScale = 1; 
color pink = color(255, 222, 222);
color skin = color(255, 243, 224);
color hair = color(129, 92, 31);
color chest = #462F15;
color chestRim = #E3BD5C;

int phase =4; 
boolean isChestClosed = false; 
boolean isDark;

void display() {
   if(isChestClosed == true) {  
     chestOpen();
     pushMatrix();
     translate(422, 364);
     scale(0.27);
     spin();
     popMatrix();
   }
   if(isChestClosed == false) {
     chestClosed();
   }
}

void chestClick() {
    if (mouseX >= 417 && mouseX <= 522 && mouseY >= 444 && mouseY <= 489) {
    isChestClosed = !isChestClosed;
    }
}

void spin() {
int spinTime; 

checkDark();

    if(isDark){
    spinTime = 6000; 
  } else {
  spinTime = 2000;
  }

  phase = 1 + (millis() / (spinTime / 4)) % 4;   

   if (phase == 1) {
      front();
    } else if (phase == 2) {
      side(); 
    } else if (phase == 3) {
      back();
    } else if (phase == 4) {
      side();
    }
}
  
void chestClosed() {
  fill(chest);
  rect(420, 467, 99, 21);    //bottom chest
  rect(420, 446, 99, 21);   //top chest
  fill(chestRim);
  rect(417, 483, 105, 6);    //bottom rim
  rect(417, 444, 105, 6);   //top rim
  rect(465, 457, 10, 17);    //notch  
}

void chestOpen() {
  fill(chestRim);
  rect(427, 463, 10, 7);    //back left
  rect(500, 463, 10, 7);    //back right
  fill(chest);
  rect(420, 467, 99, 21);    //bottom chest
  fill(chestRim);
  rect(417, 483, 105, 6);    //bottom rim
  rect(417, 378, 105, 86);   //top rim
  fill(chest);
  rect(420, 384, 99, 76);   //top chest
  fill(chestRim);
  rect(465, 374, 10, 7);    //notch  
 }

void front() {
  fill(skin);
  triangle(180, 205, 140, 231, 151, 152);   // air leg
  triangle(167, 259, 174, 378, 209, 201);   // front leg
  
  fill(pink);
  ellipse(177, 228, 81, 134);               // skirt front
  
  fill(skin);
  triangle(205, 8, 196, 114, 213, 60);       // air arm                         
  rect(170, 87, 17, 43);                     // neck
  
  fill(pink);
  ellipse(178, 139, 43, 79);                 // torso
  
  fill(skin);
  ellipse(177, 69, 34, 53);                  // head

  pushMatrix();  
  rotate(radians(-6));
  arc(160, 82, 11, 4, PI, TWO_PI, OPEN);     // left eye
  rotate(radians(14));
  arc(194, 38, 11, 4, PI, TWO_PI, OPEN);     // right eye
  popMatrix();

  fill(hair);
  circle(177, 44, 22);                       // bun
  arc(177, 58, 35, 28, PI, TWO_PI, OPEN);    // hair

  fill(skin);
  triangle(162, 107, 137, 197, 142, 146);    // back arm
}

void side() {
  
pushMatrix();  
translate(177, 0); 
   if (phase == 4) {
      scale(-1, 1);
    }
translate(-177, 0); 
    
  fill(skin);
  triangle(133, 205, 102, 222, 44, 159);     // air leg
  triangle(222, 289, 173, 378, 205, 241);    // front leg
  
  fill(pink);
  triangle(106, 188, 228, 297, 234, 154);    // skirt
  
  fill(skin);
  triangle(227, 8, 217, 112, 236, 60);       // air arm
 
  pushMatrix();
  rotate(radians(-4));                              
  rect(191, 97, 17, 43);                     // neck
  rotate(radians(-21)); 
  fill(pink);
  ellipse(139, 214, 43, 79);                 // torso
  rotate(radians(-6));
  fill(skin);
  ellipse(140, 162, 34, 53);                 // head
  arc(147, 156, 11, 4, PI, TWO_PI, OPEN);    // eye
  rotate(radians(-6));
  fill(hair);
  arc(124, 163, 35, 28, PI, TWO_PI, OPEN);   // hair
  popMatrix();       
  
  circle(175, 55, 22);                       // bun
  
  fill(skin);
  triangle(206, 106, 175, 198, 175, 146);    // back arm
popMatrix();
}

void back() {
  fill(pink);
  ellipse(177, 228, 81, 134);  // skirt front
  
  fill(skin);
  triangle(219, 205, 184, 231, 217, 152);   // air leg
  triangle(174, 259, 168, 386, 146, 201);   // front leg
  triangle(151, 8, 166, 114, 144, 60);       // air arm                           
  rect(170, 87, 17, 43);                     // neck
  
  fill(pink);
  ellipse(178, 139, 43, 79);                 // torso
  
  fill(hair);
  ellipse(177, 69, 34, 53);                  // head
  circle(177, 44, 22);                       // bun
  
  fill(skin);
  triangle(191, 107, 210, 196, 213, 146);    // back arm
 }
 
  void checkDark(){
    isDark=dayMode();
}
}
