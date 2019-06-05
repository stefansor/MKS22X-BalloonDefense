class Catapult extends Tools{
  private int rate, lives, count;
  private PImage img;
  private float x, y, rotation ;
  private ArrayList<Bullet> bullets;
  
  
  Catapult(int xcor, int ycor){
    x = xcor;
    y = ycor;
    lives = 10;
    img = loadImage("catapult.png");
    rotation = 0;
    rate = 20;
    count = 0;
    changeisC();
    bullets = new ArrayList<Bullet>();
  }
  
  void update(){
   for(int i = 0; i < bullets.size(); i++){
    if(!bullets.get(i).isOnMap()){
      bullets.remove(i); //bullets no longer on map no longer get updated
      i--;
    }
   }
  }
  
  
  void display(){
    update();
    pushMatrix();
     translate(x, y);
     rotation = atan2(mouseY-height/2, mouseX-width/2);
     rotate(rotation);
     imageMode(CENTER);
     image(img, 0, 0, 40, 40); 
     imageMode(CORNER);
    popMatrix();
    count++;
    for(Bullet bu : bullets){
       bu.update();
       bu.display();
     }
  }
  
  int getLives(){
    return lives;
  }
  
  void loseLife(){
   lives--; 
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
  
  ArrayList<Bullet> getBullets(){
   return bullets; 
  }
  
  Bullet getbullet(int f){
   return bullets.get(f); 
  }
  
  void shoot(){
    if(count % rate == 0){
      Bullet b = new Bullet(x, y, rotation);
      bullets.add(b);
    }
  }
  
}
