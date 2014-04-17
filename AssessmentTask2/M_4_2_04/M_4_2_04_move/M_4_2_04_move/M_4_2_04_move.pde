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

//Imports
import generativedesign.*;
import processing.pdf.*;
import java.util.Calendar;

// initial parameters
int xCount = 200;
int yCount = 500;
float gridSize = 100;
int ColWidth = 20;
int lastCol = -1;
PImage bg;
int y;
MRect r1;

// nodes array 
Node[] myNodes = new Node[xCount*yCount];

// attractor
Attractor myAttractor;

// image output
boolean saveOneFrame = false;
boolean saveToPrint = false;

void setup(){
  size(800, 800);
  bg = loadImage("bowl3.jpg");
  fill(255, 204);
  noStroke();
  r1 = new MRect(1, 300.0, 0.532, 0.8*height, 10.0, 100.0);

  
    // setup node grid2


  // setup attractor
  myAttractor = new Attractor(0, 0);
  myAttractor.strength = -10;
  myAttractor.ramp = 1;
}
 
void draw()
{
  background(bg);
  
  r1.display();
 
 
  r1.move(mouseX-(width/2), mouseY+(height*0.1), 30);
 
}
 
class MRect 
{
  int w; // single bar width
  float xpos; // rect xposition
  float h; // rect height
  float ypos ; // rect yposition
  float d; // single bar distance
  float t; // number of bars
 
  MRect(int iw, float ixp, float ih, float iyp, float id, float it) {
    w = iw;
    xpos = ixp;
    h = ih;
    ypos = iyp;
    d = id;
    t = it;
 if (saveToPrint) {
    beginRecord(PDF, timestamp()+".pdf");
 
}
}

void initGrid() {
  int i = 0; 
  for (int y = 0; y < yCount; y++) {
    for (int x = 0; x < xCount; x++) {
      float xPos = x*(gridSize/(xCount+100))+(width-gridSize)/2.1;
      float yPos = y*(gridSize/(yCount-1000))+(height-gridSize)/1.2;
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


void move (float posX, float posY, float damping) {
    float dif = ypos - posY;
    if (abs(dif) > 1) {
      ypos -= dif/damping;
    }
    dif = xpos - posX;
    if (abs(dif) > 1) {
      xpos -= dif/damping;
    }
  }
 
  void display() {
    for (int i=0; i<t; i++) {
      rect(xpos+(i*(d+w)), ypos, w, height*h);
    }
  }
}

String timestamp() {
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", Calendar.getInstance());
}

//References:
//http://www.processing.org/examples/objects.html

