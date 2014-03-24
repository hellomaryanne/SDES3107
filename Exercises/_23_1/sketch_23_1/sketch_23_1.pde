int i = 0;

/*
void setup() {
size(300,300); 
fill(100); 
noStroke();
frameRate(10);
}

void draw() {
  background(255);
int randomPos =
int(random(300.0));
rect(randomPos,randomPos+
10,50,50);
}

*/

void setup() {
size(500,500); 
smooth(); 
//noStroke();
}

void draw() {
background(126);
ellipse(width-mouseX+2,mouseY,
55,55);
ellipse(mouseX,mouseY,
55,55);
ellipse(mouseX-100,mouseY+50,
13,13);
ellipse(mouseX+100,mouseY-50,
13,13);
ellipse(mouseX-50,mouseY+100,
13,13);
ellipse(mouseX+50,mouseY-100,
13,13);

}
