int i = 0; 
 
void draw(){ 
 i = i + 2; 
  
 if (i>50){ 
   fill(255,0,0); 
 }
  
 if (i>200){ 
   fill(255);  
   i=0;  
 }
  rect(25,25,50,50);  
}

