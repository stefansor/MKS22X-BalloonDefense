abstract class Tools{
  float xcor, ycor; 
  
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
  
  abstract void display();
  abstract PImage getImage(); 
}
