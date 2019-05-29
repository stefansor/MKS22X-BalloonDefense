abstract class Tools{
  private float xcor, ycor; 
  
  boolean isTouching(Balloon other) {
    float x = other.getxcor(); 
    float y = other.getycor(); 
    if (x < xcor + 30 && x > xcor - 30 && y < ycor + 30 && y > ycor - 30) {
      return true;
    }
    else {
      return false; 
    }
  }
  
  float getX() {
    return xcor; 
  }
  
  float getY() {
    return ycor; 
  }
  
  void setX(float x) {
    xcor = x; 
  }
  
  void setY(float y) {
    ycor = y; 
  }
  
  abstract int getLives(); //NEED TO TALK ABOUT THIS
  abstract void loseLife(); //NEED TO TALK ABOUT THIS
  abstract void display();
  abstract PImage getImage(); 
  abstract boolean isCatapult();
  abstract void shoot();
}
