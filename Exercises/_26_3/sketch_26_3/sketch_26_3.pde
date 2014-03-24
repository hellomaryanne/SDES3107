/*
// Shades of Gray Clicker 

float gray = 0;

void setup() {
   size(100, 100);
}

void draw() {
   background(gray);
}

void keyPressed() {
gray += 20;
}

*/


void setup() { 
  
  size(500, 500); 
  noLoop();
}


void draw() {
background(204);
ellipse(mouseX+4, 250, mouseX, 250);
}


void mousePressed() {
redraw();
}


