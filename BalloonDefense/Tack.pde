class Tack{
   private int x;
   private int y;
   private int lives;
   private PImage img;
 
 
   Tack(int posx, int posy){
    x = posx;
    y = posy;
    img = loadImage("tacks.jpg");
   }
  
   void Dsiplay(){
    if(lives > 0){
     if(mousePressed){
      x = mouseX;
      y = mouseY;
     }
      
    }
   }
   
   void loseLife(){ 
     lives--;
   }
   
   int getLives(){
    return lives; 
   }
     
     
   }
  
  
  
 
  
  
  