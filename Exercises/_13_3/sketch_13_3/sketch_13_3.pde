background(#DBC489);
PFont font;
font = loadFont("FuturaStd-Book-32.vlw");
textFont(font, 32);
fill(0);
String m = "EUP";
float mw = textWidth(m);
text(m, 22, 40);
textAlign(CENTER);
rect(22, 42, mw, 5);

font = loadFont("GillSansStd-48.vlw");
textFont(font, 48);
String s = "PHORIA";
float sw = textWidth(s);
textLeading(500);
text(s, 40, 90);
textAlign(CENTER, TOP);
rect(0, 93, sw, 5);