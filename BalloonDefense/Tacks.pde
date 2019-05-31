class Tack extends Tools{
    private int lives;
    private PImage img; 
    
    Tack(float posx, float posy){
      setX(posx); 
      setY(posy); 
      lives = 5; 
      changeisT(); 
      img = loadImage("tacks.png");
    }
    
    void loseLife(){
     lives--; 
    }
    
    int getLives(){
     return lives; 
    }
    
    void display(){
      pushMatrix();
      translate(getX(), getY());
      if (lives > 0) {
        image(img, 0-20, 0-20, 40, 40);
      }
      popMatrix();
    } 

    boolean isCatapult(){
     return false; 
    }
    void shoot(){
    
    }
    
    PImage getImage(){
     return img; 
    }
    
    ArrayList<Bullet> getBullets(){
     ArrayList<Bullet> b = new ArrayList<Bullet>();
     return b;
    }

}