class Tack extends Tools{
  int lives; 
  
  Tack(float x, float y) {
    xcor = x;
    ycor = y; 
    lives = 5; 
  }
  
  void loseLife() {
    //if balloon touches it, it loses a life
  }
  
  void display() {
    PImage spike = loadImage("spike.jpg"); 
    image(spike , xcor, ycor, 5, 5); 
  }
}
