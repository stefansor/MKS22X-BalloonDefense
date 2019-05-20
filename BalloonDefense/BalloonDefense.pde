RegularBalloon B; 
void setup() {
  size(600, 600); 
  B = new RegularBalloon(1, 1, #ff0000, false, true); 
}

void draw() {
  background(255); 
  B.move(); 
  B.display(); 
}
