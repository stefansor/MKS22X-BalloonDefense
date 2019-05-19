abstract class Balloon {
  private int xcor, ycor, lives, speed, hue; 
  private boolean explode, pop, popped;
  
  Balloon(int l, int s, int c, boolean e, boolean p) {
    xcor = 0; 
    ycor = 0;
    lives = l;
    speed = s;
    hue = c; 
    explode = e;
    pop = p; 
    popped = false; 
  }
  
  void display() {
    if (hue == 1) {
      fill(255, 0, 0); 
    }
    if (hue == 2) {
      fill(0, 0, 0); 
    }
    if (!popped) {
      ellipseMode(CENTER); 
      ellipse(xcor, ycor, 30, 35); 
      triangle(xcor-10, ycor+25, xcor, ycor+17.5, xcor+10, ycor+25); 
    }
  }

  public abstract void move(); 
  public abstract void loseLife(); 
}
