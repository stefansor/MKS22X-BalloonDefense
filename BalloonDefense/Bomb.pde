class Bomb extends Tools{
  private PImage img;
  
  Bomb(float posx, float posy) {
    setX(posx); 
    setY(posy); 
    changeisB();
    img = loadImage("bomb.png");
  }
  
  boolean isTouching(Balloon other) { //checks if balloons are close enough to bomb to explode
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
    image(img, getX()-20, getY()-20, 40, 40);
  }
}
