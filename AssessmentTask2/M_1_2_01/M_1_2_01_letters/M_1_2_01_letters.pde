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

//Scattered letters but when the mouse is positioned at the bottom 
//right hand side of the screen, it forms a beautiful shape.

import processing.pdf.*;
import java.util.Calendar;

boolean savePDF = false;

int actRandomSeed = 0;
int count = 150;

PFont font;
PImage bg;

void setup() {
  size(800,800);
  bg = loadImage("bowl.jpg"); 
  cursor(CROSS);
  smooth();
  
  font = loadFont("FuturaStd-Book-12.vlw");
}

void draw() {
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");
  background(bg);
  noStroke();
  textFont(font,12);

  float faderX = (float)mouseX/width;

  randomSeed(actRandomSeed);
  float angle = radians(360/float(count));
  for (int i=0; i<count; i++){
    // positions
    float randomX = random(0,width);  
    float randomY = random(0,height);
    float circleX = width/1.5 + sin(angle*i)*300;
    float circleY = height/1.5 + tan(angle*i)*300;

    float x = lerp(randomX,circleX, faderX);
    float y = lerp(randomY,circleY, faderX);

    fill(255);
    String s = "The beauty of scattered words";
    text(s,x,y,11);
  }

  if (savePDF) {
    savePDF = false;
    endRecord();
  }
}

void mouseReleased() {
  actRandomSeed = (int) random(100000);
}

void keyReleased() {  
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_####.png");
  if (key == 'p' || key == 'P') savePDF = true;
}

String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}


//Reference:
//http://www.processing.org/reference/text_.html
//Image: http://cindyloughridge.tumblr.com/


