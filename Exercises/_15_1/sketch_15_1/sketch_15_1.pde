void setup() {
  size(300, 300);
  background(0);
  strokeWeight(40);
  frameRate(3);
}

void draw() {
  for (int i = 0; i < width; i++) {
    float j = random(100);
    stroke(j);
    line(i, 0, i, height);

}
  }
