class Bullet{
  float x, y, rotation;
  boolean firing; 
  int speed;
  
  
  Bullet(float xcor, float ycor, float rot){
    x = xcor;
    y = ycor; 
    speed = 5; 
    rotation = rot;
    firing = true;
  }
  
  void update(){
    if(firing){
      x += cos(rotation) * speed;
      y += sin(rotation) * speed;
      if(x > width || x < 0 || y > height || y < 0){
       firing = false; 
      }
    }
  }
  
  
  void display(){
   if(firing){
       rotate(rotation);
       rectMode(CENTER);
       fill(255);
       rect(x, y, 5, 15);
   }
    
    
  }
  
  
  
  
  
  
}
