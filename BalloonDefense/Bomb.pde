class Bomb extends Tools{
  private int lives;
  private PImage img;
  
  Bomb(float posx, float posy) {
    setX(posx); 
    setY(posy); 
    lives = 1; 
    changeisB();
    img = loadImage("bomb.png");
  }
  
  int getLives() { 
    return lives; 
  }
  
  void loseLife() { 
    lives--; 
  }
  
  boolean isTouching(Balloon other) {
    float x = other.getxcor(); 
    float y = other.getycor(); 
    if (x < getX() + 120 && x > getX() - 120 && y < getY() + 120 && y > getY() - 120) {
      return true;
    }
    else {
      return false; 
    }
  }
  
  void display(){
      if (lives > 0) {
        image(img, getX()-20, getY()-20, 40, 40);
      }
    }
  
  void shoot(){
    
  }
  
  PImage getImage(){
   return img; 
  }
  ArrayList<Bullet> getBullets(){
     ArrayList<Bullet> n = new ArrayList<Bullet>();
     return n;
  }
  
  Bullet getbullet(int f){
     ArrayList<Bullet> n = new ArrayList<Bullet>();
     return n.get(f);
  }
  
}
