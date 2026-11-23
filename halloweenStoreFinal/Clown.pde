/*
Thijmen van Groenestijn
Xueting Lin
Programming Final Project Group:26
*/
class Clown {

color[] colors = {#AF4722, #7378CB, #62BF63, #987586, #FAD449};

color wig = #AF4722;
color body = #E5E3E1;
color mask = #60D376;

void display() {

  fill(body);
  rect(784, 416, 100, 41, 96, 60, 3, 4); //body
  rect(814, 385, 28, 36, 11, 21, 3, 3); //neck
  fill(wig);
  circle(830, 341, 112); //wig
  fill(body);
  circle(823, 358, 75); //head
  
  fill(mask);
  triangle(788, 380 ,859 ,376, 823, 422); //mouth cover
  
  pushMatrix();
  rotate(radians(-22));
  ellipse(666, 670, 26, 6); //cover back
  ellipse(651, 680, 8, 18); //cover back
  popMatrix();
  
  fill(#AF4722);
  circle(812, 371, 33); //nose
  
  fill(#FFFFFF, 70);
  triangle(816, 358 ,825 ,372, 812, 369); //nose shine
 }
 
void noseClick(int x, int y) {
  float distance = dist(x, y, 812, 371);
  if(distance < 20) {
    int wigColor = int(random(colors.length));
    int maskColor = int(random(colors.length));
    
      wig = colors[wigColor];
      mask = colors[maskColor];
  }
 }
}
