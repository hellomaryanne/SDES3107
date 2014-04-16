float yoff = 0.0;        // 2nd dimension of perlin noise
PImage bg;
float a;
float b;

void setup() {
  size(800, 800);
  bg = loadImage("bowl3.jpg");
  stroke(255);
  a = height/3;
  a = height/2.2;
}

void draw() {
 
   background(bg);
   
   line(0, a, width, a);  
  a = a - 0.5;
  if (a < 0) { 
    a = height; 
    
  }
  
     line(0, b, width, b);  
  b = b - .55;
  if (b < 0) { 
    b = height; 
    
  }

  fill(255);
  // We are going to draw a polygon out of the wave points
  beginShape(); 
  
  float xoff = 0;       // Option #1: 2D Noise
  // float xoff = yoff; // Option #2: 1D Noise
  
  // Iterate over horizontal pixels
  for (float x = 0; x <= width; x += 10) {
    // Calculate a y value according to noise, map to 
    float y = map(noise(xoff, yoff), 0, 1, 500,900); // Option #1: 2D Noise
    // float y = map(noise(xoff), 0, 1, 200,300);    // Option #2: 1D Noise
    
    // Set the vertex
    vertex(x, y); 
    // Increment x dimension for noise
    xoff += 0.05;
  }
  // increment y dimension for noise
  yoff += 0.01;
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
  
  
}
