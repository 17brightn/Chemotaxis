
 
Bacterium [] colon;
Bacteria [] colony;   
 void setup()   
 {     
  size(800,800);
  colony=new Bacteria[30000];
  for(int i=0;i<colony.length;i++){
    colony[i] = new Bacteria();
   }
   colon=new Bacterium[30000];
  for(int i=0;i<colon.length;i++){
    colon[i] = new Bacterium();
  }
 }
 void draw()   
 { 
  background(0,0,0);
  for (int i=0;i<colony.length;i++){
  colony[i].show();
  colony[i].move(); 
 }
 for (int i=0;i<colon.length;i++){
  colon[i].show();
  colon[i].move(); 
 }
 }  
 class Bacteria    
 {
   int x;
int y;
int colorR;
int colorG;
int colorB;
int size;
Bacteria(){
   x=(int)(Math.random()*800);
   y=(int)(Math.random()*800);
   colorR=(int)(Math.random()*250);
   colorG=(int)(Math.random()*250);
   colorB=(int)(Math.random()*250);
   size=(int)(Math.random()*50);
}
  void show(){
    fill(colorR,colorG,colorB);
    ellipse(x,y,size,size);
 }
 void move(){
   if (mousePressed){
   x=(int)(Math.random()*800);
   y=(int)(Math.random()*800);
 }
  else if(mouseX>x && mouseY>y){
     x=x+(int)(Math.random()*8);
     x=x-(int)(Math.random()*3);
     y=y+(int)(Math.random()*8);
     y=y-(int)(Math.random()*3);
 }
 else if(mouseX<x && mouseY>y){
     x=x-(int)(Math.random()*8);
     x=x+(int)(Math.random()*3);
     y=y+(int)(Math.random()*8);
     y=y-(int)(Math.random()*3);
 }
else if(mouseX>x && mouseY<y){
     x=x+(int)(Math.random()*8);
     x=x-(int)(Math.random()*3);
     y=y-(int)(Math.random()*8);
     y=y+(int)(Math.random()*3);
 }
else if(mouseX<x && mouseY<y){
     x=x-(int)(Math.random()*8);
     x=x+(int)(Math.random()*3);
     y=y-(int)(Math.random()*8);
     y=y+(int)(Math.random()*3);
 }
 else {
   x=x+(int)(Math.random()*8);
   x=x-(int)(Math.random()*8);
   y=y+(int)(Math.random()*8);
   y=y-(int)(Math.random()*8);
 }
 }
 }
  class Bacterium    
 {
   int x;
int y;
int colorR;
int colorG;
int colorB;
int size;
Bacterium(){
   x=(int)(Math.random()*800);
   y=(int)(Math.random()*800);
   colorR=(int)(Math.random()*250);
   colorG=(int)(Math.random()*250);
   colorB=(int)(Math.random()*250);
   size=(int)(Math.random()*50);
}
  void show(){
    fill(colorR,colorG,colorB);
    rect(x,y,size,size);
 }
 void move(){
    if (mousePressed){
   x=(int)(Math.random()*800);
   y=(int)(Math.random()*800);
 }
   else if(mouseX>x && mouseY>y){
     x=x+(int)(Math.random()*30);
     y=y+(int)(Math.random()*30);
 }
 else if(mouseX<x && mouseY>y){
     x=x-(int)(Math.random()*30);
     y=y+(int)(Math.random()*30);
 }
else if(mouseX>x && mouseY<y){
     x=x+(int)(Math.random()*30);
     y=y-(int)(Math.random()*30);
 }
else if(mouseX<x && mouseY<y){
     x=x-(int)(Math.random()*30);
     y=y-(int)(Math.random()*30);
 }
 else {
   x=x+(int)(Math.random()*30);
   x=x-(int)(Math.random()*30);
   y=y+(int)(Math.random()*30);
   y=y-(int)(Math.random()*30);
 }
 }
 }
 
