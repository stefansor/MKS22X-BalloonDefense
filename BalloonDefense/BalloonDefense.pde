ArrayList<RegularBalloon> RegBalloons = new ArrayList<RegularBalloon>(); ; 
int counter = 0; 
int coins = 200; 

void setup() {
  size(1000, 1000); 
    
  fill(255,235,205); 
  rect(540, 0, 460, 1000);
  fill(0, 0, 0); 
  textSize(32); 
  String money = "Coins: " + coins; 
  text(money, 560, 100); 
}

void update() {
  
}

void draw() {
  counter++; 
  if (counter%50 == 0 && counter < 5000) {
    RegularBalloon b = new RegularBalloon(1, 1, #ff0000, false, true);
    RegBalloons.add(b);  
  }
  update(); 
  for (RegularBalloon rb : RegBalloons) {
    rb.move(); 
    rb.display(); 
  }
}