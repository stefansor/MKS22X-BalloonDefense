void setup() {
  size(600, 600); 
  
  float xcor, ycor; 
  xcor = 0;
  ycor = 0; 
  
  fill(255, 0, 0); 
  ellipseMode(CENTER); 
  ellipse(xcor, ycor, 30, 35); 
  triangle(xcor-10, ycor+25, xcor, ycor+17.5, xcor+10, ycor+25); 
  
}

void draw() {
}
