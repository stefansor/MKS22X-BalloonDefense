class Tack extends Tools{
    private int lives;
    private PImage img; 
    
    
    Tack(float posx, float posy){
      setX(posx); 
      setY(posy); 
      lives = 5; 
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
        image(img, getX()-15, getY()-15, 30, 30);
      }
    } 
}
