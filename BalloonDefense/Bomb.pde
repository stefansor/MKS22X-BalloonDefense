class Bomb extends Tools{
  private int lives;
  private PImage img;
  
  Bomb(float posx, float posy) {
    setX(posx); 
    setY(posy); 
    lives = 1; 
    img = loadImage("bomb.png");
  }
  
  int getLives() { 
    return lives; 
  }
  
  void loseLife() { 
  }
  
  boolean isTouching(Balloon other) {
    float x = other.getxcor(); 
    float y = other.getycor(); 
    if (x < getX() + 90 && x > getX() - 90 && y < getY() + 90 && y > getY() - 90) {
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
  
  
}
