// M_1_2_01.pde
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
 * order vs random! 
 * how to interpolate beetween a free composition (random) and a circle shape (order)
 * 
 * MOUSE
 * position x          : fade between random and circle shape
 * 
 * KEYS
 * p                   : save pdf
 * s                   : save png
 */

//Rotating circle with more circles overlapping! 

import processing.pdf.*;
import java.util.Calendar;

float hr, vr;  
float angle = 0;
float rad = 25; 
float radtwo = 4; 
float d = 170; 
PImage bg; 
 
void setup() {
  size(800,800);
  bg = loadImage("beanie.jpg");
  
  
}
 
void draw() {
  background(bg);
  noStroke();
  fill(69,216,184); 
  
 
  pushMatrix();
  noStroke();
  fill(#d86375);
  translate(width/2,height/2);
  for (int i=0; i < d+1; i++) {
    ellipse(0,-200,radtwo,radtwo);
    rotate(5*PI/d);
  }
  popMatrix();
   
   
  pushMatrix();
  translate(width/2,height/2);
  rotate(angle-PI/2);
  fill(255);
  ellipse(200*cos(6*PI/3),150*sin(12*PI/3),rad,rad);
  ellipse(200*cos(6*PI/6),150*sin(12*PI/6),rad,rad);
  angle = (.005*PI + angle)%(2*PI);
  popMatrix();
  
}

void keyReleased() {  
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_####.png");
}

String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}


//References:
//http://processing.org/discourse/beta/num_1231088194.html
//http://www.openprocessing.org/sketch/50505
