size(600, 400);
background(255); // white ground
stroke(255,0,0); // red lines
  
int increment = 5;
  
for (int y = 0; y<height; y+=increment) {
    
  line(0, y, width, y);
    
  increment--;
  
  if (increment<5) {
    increment = 80;
  }
  
}

