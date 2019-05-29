class Catapult extends Tools{
  private int x, y, rate, lives;
  private PImage img;
  
  
  Catapult(int xcor, int ycor){
    x = xcor;
    y = ycor;
    lives = 10;
    img = loadImage("catapult.jpeg");
  }
  
  
  void display(){
    push();
     translate(x, y);
     float a = atan2(mouseY-height/2, mouseX-width/2);
     rotate(a);
     imageMode(CENTER);
     image(img, 0, 0, 40, 40); 
    pop();
  }
  
  int getLives(){
    return lives;
  }
  
  void loseLife(){
   lives--; 
  }
  
  PImage getImage(){
   return img; 
  }
  
  void shoot(){
    
  }
  
}
