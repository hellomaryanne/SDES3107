// M_4_2_04.pde
// Attractor.pde
// 
// Generative Gestaltung, ISBN: 978-3-87439-759-9
// First Edition, Hermann Schmidt, Mainz, 2009
// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
//
// http://www.generative-gestaltung.de
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/**
 * a simple attractor
 *
 * MOUSE
 * left click, drag  : attract nodes
 *
 * KEYS
 * r                 : reset nodes
 * s                 : save png
 */

// imports
import generativedesign.*;
import processing.pdf.*;
import java.util.Calendar;

// initial parameters
int xCount = 401;
int yCount = 61;
float gridSize = 0;
int ColWidth = 20;
int lastCol = -1;
PImage bg;
int NUM = 30;
 
float[] a = new float[   NUM  ];
float[] b = new float[   NUM  ];
float[] c = new float[   NUM  ];
float[] d = new float[   NUM  ];

float[] as = new float[   NUM  ];
float[] bs = new float[   NUM  ];
float[] cs = new float[   NUM  ];
float[] ds = new float[   NUM  ];



// nodes array 
Node[] myNodes = new Node[xCount*yCount];

// attractor
Attractor myAttractor;

// image output
boolean saveOneFrame = false;
boolean saveToPrint = false;



void setup() {  
  size(800, 800); 
  bg = loadImage("bowl3.jpg");

for ( int i = 0; i < NUM; i++){
   
    a[i] = width;
    b[i] = height;
    c[i] = width;
    d[i] = height;
    as[i] = random(8);
    bs[i] = random(8);
    cs[i] = random(8);
    ds[i] = random(8);



  // setup drawing parameters
  colorMode(RGB, 255, 255, 255, 100);
  smooth();
  noStroke();
  fill(0);


  cursor(CROSS);

  // setup node grid
  initGrid();

  // setup attractor
  myAttractor = new Attractor(0, 0);
  myAttractor.strength = -10;
  myAttractor.ramp = 1;
}
}

void draw() {
  background(bg);
  
  for ( int i = 0; i < NUM; i++){
     a[i] += as[i];
     b[i] += bs[i];
     c[i] += cs[i];
     d[i] += ds[i];
     
       if ( a[i] > width ) a[i] = 900;
  if ( b[i] > width ) b[i] = 90;
  if ( c[i] > width ) c[i] = 200;
  if ( d[i] > width ) d[i] = 1000;
   
  if ( a[i] < 10 ) a[i] = width;
  if ( b[i] < 10 ) b[i] = height;
  if ( c[i] < 10 ) c[i] = width;
  if ( d[i] < 10 ) d[i] = height;
     
    
  stroke(255);
  line(  a[i] , b[i] , c[i]  , d[i] );
  
  }

  if (saveToPrint) {
    beginRecord(PDF, timestamp()+".pdf");
  }


  myAttractor.x = mouseX;
  myAttractor.y = mouseY;

  for (int i = 0; i < myNodes.length; i++) {
    if (mousePressed) {
      myAttractor.attract(myNodes[i]);
    }

    myNodes[i].update();

    // draw nodes

    /*    beginShape();
     vertex(myNodes[i].x, myNodes[i].y);
     for (int i = i1+1; i <= i2; i++) {
     vertex(points[i].x, points[i].y);
     }
     */

    if (saveToPrint) {
      ellipse(myNodes[i].x, myNodes[i].y, 2, 2);

      if (i%1000 == 0) {
        println("saving to pdf - step " + int(i/1000 + 1) + "/" + int(myNodes.length / 1000));
      }
    }
    else {
      rect(myNodes[i].x, myNodes[i].y, 1, 1);
    }
  }




  // image output
  if (saveToPrint) {
    saveToPrint = false;
    println("saving to pdf – finishing");
    endRecord();
    println("saving to pdf – done");
  }

  if (saveOneFrame == true) {
    saveFrame(timestamp()+".png");
    saveOneFrame = false;
  }

 int ColBar = mouseX / ColWidth;
  if (ColBar != lastCol) {
    int ColX = ColBar * ColWidth;
    fill(ColX, mouseY, 20);
    lastCol = ColWidth;
    
   
}
}

void initGrid() {
  int i = 0; 
  for (int y = 0; y < yCount; y++) {
    for (int x = 0; x < xCount; x++) {
      float xPos = x*(gridSize/(xCount-1))+(width-gridSize)/-2000;
      float yPos = y*(gridSize/(yCount-1))+(height-gridSize)/2;
      myNodes[i] = new Node(xPos, yPos);
      myNodes[i].setBoundary(0, 0, width, height);
      myNodes[i].setDamping(0.8);  //// 0.0 - 1.0
      i++;
    }
  }
}


void keyPressed() {
  if (key=='r' || key=='R') {
    initGrid();
  }

  if (key=='s' || key=='S') {
    saveOneFrame = true;
  }
  if (key=='p' || key=='P') {
    saveToPrint = true; 
    saveOneFrame = true; 
    println("saving to pdf - starting (this may take some time)");
  }
}


String timestamp() {
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", Calendar.getInstance());
}




 //Reference: http://www.openprocessing.org/sketch/43316 & http://forum.processing.org/one/topic/color-change-background-with-click.html







