class Bullet{
  float x, y, rotation;
  boolean firing; 
  int speed;
  
  
  Bullet(float xcor, float ycor, float rot){
    x = xcor;
    y = ycor; 
    speed = 10; 
    rotation = rot;
    firing = true;
  }
  
  void update(){
    if(firing){
      x += cos(rotation) * speed;
      y += sin(rotation) * speed;
      if(x > 600 || x < 0 || y > height || y < 0){
       firing = false; 
      }
    }
  }
  
  
  void display(){
   if(firing){
     pushMatrix();
       translate(x, y);
       rotate(rotation);
       rectMode(CENTER);
       fill(0, 0, 0);
       rect(0, 0, 5, 15);
     popMatrix();
   } 
  }
  
  boolean isOnMap(){
   return firing; 
  }
  
  boolean touching(Balloon other) {
    float xcor = other.getxcor(); 
    float ycor = other.getycor(); 
    if (dist(x, y, xcor, ycor) < 20) {
      return true;
    }
    else {
      return false; 
    }
  }
  
  
  
  
  
  
}
