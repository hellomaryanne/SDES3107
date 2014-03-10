size(500,500);

//i is number 0 to 100

for (int x = 0; x < 100; x++) {
  //change to red
  
  float n = norm (x, 0.0, 100.0);
  float y = pow(n, 4);
  y *= 100;
  point(x,y);
  
}


