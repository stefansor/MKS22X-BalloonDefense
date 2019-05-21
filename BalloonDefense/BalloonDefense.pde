ArrayList<RegularBalloon> RegBalloons; 
int counter = 0; 

void setup() {
  size(1000, 1000); 
  
  RegBalloons = new ArrayList<RegularBalloon>(); 
 
}

void draw() {
  counter++; 
  if (counter%50 == 0 && counter < 5000) {
    RegularBalloon b = new RegularBalloon(1, 1, #ff0000, false, true);
    RegBalloons.add(b);  
  }
  
  background(255); 
  for (RegularBalloon rb : RegBalloons) {
    rb.move(); 
    rb.display(); 
  }
}
