int coins = 200;
boolean selected = false; 

void infosetup() {
  fill(255,255,255); 
  rect(540, 0, 460, 900);
  fill(0, 0, 0); 
  textSize(32); 
  String money = "Coins: " + coins; 
  text(money, 650, 100);
  
  PImage i = loadImage("tacks.jpg");
  image(i, 650, 200, 60, 60);
}

void mouseClicked() {
  if (mouseX > 600) {
    
  }
}
