size (500,500);

float y;

// i is number 0 to 100

for (int i = 0; i < 500; i++) {
  //change to red
  stroke(255,0,0);
  y = map(i,0,500,40,200);
  point(i, y);

}
