 
int x = min (3,21);
int y = min (2,28);
int a = max (3,18,21);
int b = max (2,26,28);
 
line(x,y,a,b);
line(x+200,y+200,a+200,b+200);
line(x+400,y+400,a+400,b+400);
noFill();
rect(x,y,a,b);
rect(x+200,y+200,a+200,b+200);
rect(x+400,y+400,a+400,b+400);

