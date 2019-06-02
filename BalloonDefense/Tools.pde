abstract class Tools{
  private float xcor, ycor; 
  private boolean isT = false; 
  private boolean isB = false; 
  private boolean isC = false;
  
  boolean isTouching(Balloon other) {
    float x = other.getxcor(); 
    float y = other.getycor(); 
    if (x < xcor + 20 && x > xcor - 20 && y < ycor + 20 && y > ycor - 20) {
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
  void changeisC(){
    isC = true; 
  }
  
  boolean isTack() {
    return isT; 
  }
  
  boolean isBomb() {
    return isB; 
  }
  
  boolean isCatapult(){
   return isC; 
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
  abstract PImage getImage(); 
  abstract void shoot();
}
