abstract class Tools{
  float xcor, ycor; 
  
  boolean isTouching(Balloon other) {
    return dist(xcor, ycor, other.xcor,other.ycor) <= 10;
  }
  
  abstract void display();
}
