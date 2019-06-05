class Catapult extends Tools{
  private int rate, lives, count;
  private PImage img;
  private float rotation ;
  private ArrayList<Bullet> bullets;
  
  
  Catapult(int xcor, int ycor){
    setX(xcor);
    setY(ycor);
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
     translate(getX(), getY());
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
      Bullet b = new Bullet(getX(), getY(), rotation);
      bullets.add(b);
    }
  }
  
}
