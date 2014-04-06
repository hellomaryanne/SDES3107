int boxSize = 20;
int boxAlpha = 150;

void setup()
{
    size(500, 500);
    PImage backImage = loadImage("beauty.jpg");
    image(backImage, 0, 0, width, height);
    rectMode(CENTER);
    noStroke();
}

void draw()
{
    color c = get(mouseX, mouseY);
    
    fill(c, boxAlpha);
    rect(mouseX, mouseY, boxSize, boxSize);
}
