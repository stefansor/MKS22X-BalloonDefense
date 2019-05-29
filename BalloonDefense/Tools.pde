abstract class Tools{
  private float xcor, ycor; 
  private boolean isT = false; 
  private boolean isB = false; 
  
  boolean isTouching(Balloon other) {
    float x = other.getxcor(); 
    float y = other.getycor(); 
    if (x < xcor + 15 && x > xcor - 15 && y < ycor + 15 && y > ycor - 15) {
      return true;
    }
    else {
      return false; 
    }
  }
  
  void changeisT() {
    isT = true; 
  }
  
  void changeisB() {
    isB = true; 
  }
  
  boolean isTack() {
    return isT; 
  }
  
  boolean isBomb() {
    return isB; 
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
  
  int getLives() { //NEED TO TALK ABOUT THIS
    return 1; 
  }
  
  void loseLife() { //NEED TO TALK ABOUT THIS
  }
  
  abstract void display();
}
