/*
Thijmen van Groenestijn
Xueting Lin
Programming Final Project Group:26
*/
class Cards {

boolean isCardClicked = false;
int cardHeightBase = 500;
color leftCardsColor = #148670;
color rightCardsColor = #B39DFF;
color middleCardsColor = #FF9DDF;
color bigCardColor;

color[] colors = {middleCardsColor, rightCardsColor, leftCardsColor};

Cards() {
cardTextImg = loadImage("cardText.png");
}

void display() {

 for(int i = 0; i < 3; i++) {
 int cardHeight = cardHeightBase - (i*67); 
  fill(leftCardsColor);
  rect(260, cardHeight, 28, 45); //card left
  fill(middleCardsColor);
  rect(293, cardHeight+8, 28, 45 );  //card middle
  fill(rightCardsColor);
  rect(327, cardHeight, 28, 45);  //card right
  }
 }

void bigCard() {
   if(isCardClicked == true) {
    fill(bigCardColor);
    rect(337, 183, 263, 386);
    image(cardTextImg, 337, 183, 263, 386);
 }
}
 
void cardClick() {
   if(isCardClicked == true) {
   isCardClicked = false;
   return;
  }
  if (mouseX >= 290 && mouseX <= 410 && mouseY >= 320 && mouseY <= 545) { 
   isCardClicked = true;
   int bigCardColorRandom = int(random(colors.length));
    bigCardColor = colors[bigCardColorRandom];
  }
 }
}
