void setup() {
  size(200, 200);
  background(255);
  smooth();
  noStroke();
}

void draw(){
  if (frameCount % 10 == 0) {
    fill(100);
    pushMatrix();
    translate(100, 100); 
    rotate(millis() * 0.001 * TWO_PI / 10.0);
    rect(0, 0, 80, 20);
  }
}

//Rotate 360' Reference http://www.openprocessing.org/sketch/60525

