class Bullet{
  float x, y, rotation;
  boolean firing; 
  int speed;
  
  
  Bullet(float xcor, float ycor){
    x = xcor;
    y = ycor; 
    speed = 10; 
    rotation = 0;
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
     push();
       translate(x, y);
       rotate(rotation);
       rectMode(CENTER);
       fill(255);
       rect(0,0, 20, 30);
     pop();
   }
    
    
  }
  
  
  
  
  
  
}
