ArrayList<RegularBalloon> RegBalloons; 

void setup() {
  size(1000, 1000); 
  
  RegBalloons = new ArrayList<RegularBalloon>(); 
  for (int i = 0; i < 100; i++) {
    RegularBalloon b = new RegularBalloon(1, 1, #ff0000, false, true);
    RegBalloons.add(b); 
  }
  
}

void draw() {
  background(255); 
  
  for (RegularBalloon rb : RegBalloons) {
    rb.move(); 
    rb.display(); 
  }
}