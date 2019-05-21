abstract class Balloon {
  int xcor, ycor, direction, lives, speed, hue; 
  boolean explode, pop, popped;
  
  Balloon(int l, int s, int c, boolean e, boolean p) {
    xcor = 0; 
    ycor = 0;
    lives = l;
    direction = 1; //get rid of once tile is compelete
    speed = s;
    hue = c; 
    explode = e;
    pop = p; 
    popped = false; 
  }
  
  void display() {
    fill(hue); 
    
    if (!popped) {
      ellipseMode(CENTER); 
      ellipse(xcor, ycor, 30, 35); 
      triangle(xcor-10, ycor+25, xcor, ycor+17.5, xcor+10, ycor+25); 
    }
  }

  public abstract void move(); 
  public abstract void loseLife(); 
}
