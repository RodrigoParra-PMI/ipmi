PImage mural;

void setup(){
  
  size (800, 400);
  
  
  mural = loadImage("MuralConmemorativo.jpg");
  
}
void draw(){
  background(255);
  fill(#000000);
  textSize(70);
  text("Floreceran", 420, 100);
  text("Pañuelos", 420, 370);
  image(mural,0,0,400,400);
  fill(#FFFFFF);
  circle(600,200,150);
  triangle(570, 130, 570, 270, 408, 211);
  triangle(584, 274, 610, 276, 578, 350);
  triangle(610, 275, 635, 269, 650, 351);
  fill(#000000);
  ellipse(650,200,50,90);
    //petalos
  fill(#2B3ABA);
  ellipse(670,190,20,30);
  ellipse(680,200,30,20);
  ellipse(660,200,30,20);
  ellipse(670,210,20,30);
  //flor
  fill(#EEFF59);
  ellipse(670,200,20,20);
  
  pushMatrix();
  translate(50,50);
      //petalos
  fill(#2B3ABA);
  ellipse(670,190,20,30);
  ellipse(680,200,30,20);
  ellipse(660,200,30,20);
  ellipse(670,210,20,30);
  //flor
  fill(#EEFF59);
  ellipse(670,200,20,20);
  popMatrix();
  
   pushMatrix();
  translate(50,-50);
      //petalos
  fill(#2B3ABA);
  ellipse(670,190,20,30);
  ellipse(680,200,30,20);
  ellipse(660,200,30,20);
  ellipse(670,210,20,30);
  //flor
  fill(#EEFF59);
  ellipse(670,200,20,20);
  popMatrix();
 
  pushMatrix();
  translate(100,0);
  //petalos
  fill(#2B3ABA);
  ellipse(670,190,20,30);
  ellipse(680,200,30,20);
  ellipse(660,200,30,20);
  ellipse(670,210,20,30);
  //flor
  fill(#EEFF59);
  ellipse(670,200,20,20);
  popMatrix();
  
  fill(#57FF70);
  ellipse(655, 165, 40,15);
  line(636,164,675,164);
  
  pushMatrix();
  translate(0,70);
  fill(#57FF70);
  ellipse(655, 165, 40,15);
  line(636,164,675,164);
  popMatrix();
  
  pushMatrix();
  translate(60,35);
  fill(#57FF70);
  ellipse(655, 165, 40,15);
  line(636,164,675,164);
  popMatrix();
}
void mousePressed() {
  println("X: " + mouseX + " Y: " + mouseY);
}
