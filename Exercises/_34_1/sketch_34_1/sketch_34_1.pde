int numFrames = 60; // The number of animation frames
int frame = 0; // The frame to display
PImage[] images = new PImage[numFrames]; // Image array
void setup() {
size(400, 225);
frameRate(30); // Maximum 30 frames per second
images[0] = loadImage("frame_000.gif");
images[1] = loadImage("frame_001.gif");
images[2] = loadImage("frame_002.gif");
images[3] = loadImage("frame_003.gif");
images[4] = loadImage("frame_004.gif");
images[5] = loadImage("frame_005.gif");
images[6] = loadImage("frame_006.gif");
images[7] = loadImage("frame_007.gif");
images[8] = loadImage("frame_008.gif");
images[9] = loadImage("frame_009.gif");
images[10] = loadImage("frame_010.gif");
images[11] = loadImage("frame_011.gif");
images[12] = loadImage("frame_012.gif");
images[13] = loadImage("frame_013.gif");
images[14] = loadImage("frame_014.gif");
images[15] = loadImage("frame_015.gif");
images[16] = loadImage("frame_016.gif");
images[17] = loadImage("frame_017.gif");
images[18] = loadImage("frame_018.gif");
images[19] = loadImage("frame_019.gif");
images[20] = loadImage("frame_020.gif");
images[21] = loadImage("frame_021.gif");
images[22] = loadImage("frame_022.gif");
images[23] = loadImage("frame_023.gif");
images[24] = loadImage("frame_024.gif");
images[25] = loadImage("frame_025.gif");
images[26] = loadImage("frame_026.gif");
images[27] = loadImage("frame_027.gif");
images[28] = loadImage("frame_028.gif");
images[29] = loadImage("frame_029.gif");
images[30] = loadImage("frame_030.gif");
images[31] = loadImage("frame_031.gif");
images[32] = loadImage("frame_032.gif");
images[33] = loadImage("frame_033.gif");
images[34] = loadImage("frame_034.gif");
images[35] = loadImage("frame_035.gif");
images[36] = loadImage("frame_036.gif");
images[37] = loadImage("frame_037.gif");
images[38] = loadImage("frame_038.gif");
images[39] = loadImage("frame_039.gif");
images[40] = loadImage("frame_040.gif");
images[41] = loadImage("frame_041.gif");
images[42] = loadImage("frame_042.gif");
images[43] = loadImage("frame_043.gif");
images[44] = loadImage("frame_044.gif");
images[45] = loadImage("frame_045.gif");
images[46] = loadImage("frame_046.gif");
images[47] = loadImage("frame_047.gif");
images[48] = loadImage("frame_048.gif");
images[49] = loadImage("frame_049.gif");
images[50] = loadImage("frame_050.gif");
images[51] = loadImage("frame_051.gif");
images[52] = loadImage("frame_052.gif");
images[53] = loadImage("frame_053.gif");
images[54] = loadImage("frame_054.gif");
images[55] = loadImage("frame_055.gif");
images[56] = loadImage("frame_056.gif");
images[57] = loadImage("frame_057.gif");
images[58] = loadImage("frame_058.gif");
images[59] = loadImage("frame_059.gif");
} //split images with http://ezgif.com/split/8f777b3877.gif
void draw() {
frame++;
if (frame == numFrames) {
frame = 0;
}
image(images[frame], 0, 0);
}
