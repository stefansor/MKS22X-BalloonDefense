class Catapult extends Tools{
  private int rate, lives, count;
  private PImage img;
  private float x, y, rotation ;
  
  
  Catapult(int xcor, int ycor){
    x = xcor;
    y = ycor;
    lives = 10;
    img = loadImage("catapult.jpeg");
    rotation = 0;
    rate = 20;
    count = 0;
    changeisC();
  }
  
  
  void display(){
    pushMatrix();
     translate(x, y);
     rotation = atan2(mouseY-height/2, mouseX-width/2);
     rotate(rotation);
     image(img, 0, 0, 40, 40); 
    popMatrix();
    count++;
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
  
  float getX(){
   return x; 
  }
  
  float getY(){
   return y; 
  }
  
  float getRot(){
   return rotation; 
  }
  
  void shoot(){
    if(count % rate == 0){
      Bullet b = new Bullet(x, y, rotation);
      b.update();
      b.display();
    }
  }
  
}
