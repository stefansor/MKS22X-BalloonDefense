class Tack{
    private int x,y,lives;
    private PImage img; 
    
    
    Tack(int posx, int posy){
      img = loadImage("tacks.jpg");
      x = posx;
      y = posy;
      lives = 10; 
    }
    
    void loseLife(){
     lives--; 
    }
    
    int getLives(){
     return lives; 
    }
    
    void display(){
      imageMode(CENTER);
      image(img, x, y, 15, 15);
    }
  
  
  
  
  
}
