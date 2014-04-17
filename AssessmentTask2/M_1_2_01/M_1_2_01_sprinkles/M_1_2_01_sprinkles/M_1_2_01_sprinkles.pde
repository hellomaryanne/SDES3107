//Rainbow Sprinkles!

PImage img; 
import processing.pdf.*;
import java.util.Calendar;

boolean savePDF = false;

void setup()
{
  size(800, 800);
  frameRate(90);
}
 
void draw()
{
  stroke(255);
  strokeWeight(2);
  fill(random(450), random (450), random (450), 40);
  //line(width/2,height/2, pmouseX,pmouseY);
  ellipse(mouseX, mouseY, 100,100);
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
//http://www.processing.org/examples/pattern.html
//http://learning.codasign.com/index.php?title=Animating_a_Coloured_Shape_in_Processing

