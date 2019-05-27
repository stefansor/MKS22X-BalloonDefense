class Tack extends Tools{
    private int x,y,lives;
    private PImage img; 
    
    
    Tack(int posx, int posy){
      x = posx;
      y = posy;
      lives = 10; 
      img = loadImage("tacks.jpg");
    }
    
    void loseLife(){
     lives--; 
    }
    
    int getLives(){
     return lives; 
    }
    
    PImage getImage() {
      return img; 
    }
    
    void display(){
      if (lives > 0) {
        image(img, x-15, y-15, 30, 30);
      }
    } 
}
