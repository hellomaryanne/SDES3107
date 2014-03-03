int screenWidth = 500;
int pos = 50;
int ellipseSize = 100;

size(screenWidth, screenWidth*2);

/*this program creates a super duper happy face, yey! (experimentation)

background(0,0,40);

ellipse(200,40,30,30);

ellipse(250,60,30,30);
arc(200, 300, width/2, width/2, 0, PI+QUARTER_PI, CHORD);

*/

//Use multiplication to create a series of lines with increasing space between each

ellipse(pos, pos, ellipseSize, ellipseSize);
pos +=20;
ellipseSize -= 10;

ellipse(pos, pos, ellipseSize, ellipseSize);
pos +=20;
ellipseSize -= 10;

ellipse(pos, pos, ellipseSize, ellipseSize);
pos +=20;
ellipseSize -= 10;

ellipse(pos, pos, ellipseSize, ellipseSize);
pos +=20;
ellipseSize -= 10;

ellipse(pos, pos, ellipseSize, ellipseSize);
pos +=20;
ellipseSize -= 10;

ellipse(pos, pos, ellipseSize, ellipseSize);
pos +=20;
ellipseSize -= 10;

stroke(255,0,0);
int drawPosition = 10;
int distanceBetweenLines = 50;


println(drawPosition);

int position = 10;
float position = 10;
line (position, 0, position, height);
position = position * 2.5;
println(position);

