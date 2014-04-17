//Shades of cool colours chasing each other
PImage bg; 
import processing.pdf.*;
import java.util.Calendar;

boolean savePDF = false;

void setup() {
   
  size(800, 800);
  smooth();
  frameRate(20);
}
 
void draw() {
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");
  noStroke();
  fill(255, 100);
  rect(0, 0, width, height);
  circle();
 
   
}
 
void circle()  {
   
  float x = random(0, 100);
  float y = random(120, 30);
  float spi = random(2, 100);
  float in = random(255);
  float prog = random(-2, 5);
  float progtwo = random(-10, 10);
  fill(in/3, 130, 750);
  ellipse(mouseX + prog, mouseY + prog, spi, spi);
   
}

void keyReleased() {  
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_####.png");
  if (key == 'p' || key == 'P') savePDF = true;
}

String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}


//References:
//https://www.processing.org/examples/softbody.html
//http://www.processing.org/examples/pattern.html
