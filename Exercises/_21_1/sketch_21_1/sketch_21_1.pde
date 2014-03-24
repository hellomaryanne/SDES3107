/*PFont myFont;

void setup() {
  size(500,500);
  background(255);
}

void draw() {
  background(255);
  
  myFunction(100,100,50,50);
}

void myFunction(int size, int number, int x, int y) { 
  for(int counter = number; counter > 0; counter-=10) {
    rect(x,y,size,size);
size-=10; 

}
}
*/

PFont myFont;

void setup() {
  size(500,500);
  background(255);
  smooth();
}

void draw() {
  background(255);
  turnRed();
  
  myFunction(400,250,250,250);
}


void turnRed() {
  fill(252,0,0);
}



void myFunction(int size, int number, int x, int y) { 
  for(int counter = number; counter > 10; counter-=10) {
    ellipse(x,y,size,size);
size-=20; 

}
}



