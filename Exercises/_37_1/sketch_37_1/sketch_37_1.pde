PFont f;
float x = 133; 
float y = 160; 
void setup() {
size(300, 300);
f = loadFont("FuturaStd-Book-32.vlw");
textFont(f);
noStroke();
}
void draw() {
fill(#54ace4, #ffcc66);
rect(0, 0, width, height);
fill(#ffcc66);


if ((mouseX >= x) && (mouseX <= x+55) &&
(mouseY >= y-24) && (mouseY <= y)) {
x += random(-5, 5);
y += random(-5, 5);
}
text("tickle me", x, y);
}
