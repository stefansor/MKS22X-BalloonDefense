int waves = 1; 
int life = 100; 
int bLeft = 100; 
int coins = 200;
boolean selected = false; 
int toolPicked;  

void infoSetup() {
  fill(#DEB887); 
  rect(540, 0, 460, 900);
  fill(0, 0, 0); 
  textSize(24); 
  
  text("Balloon Tower", 610, 30); 
  text("Defense", 650, 60); 
  
  String w = "Waves: " + waves; 
  text(w, 610, 90); 
  
  String l = "Lives Left: " + life; 
  text(l, 610, 120); 
  
  String bl = "Balloons Left: " + bLeft; 
  text(bl, 610, 150); 
  
  String money = "Coins: " + coins; 
  text(money, 610, 180);
  
  PImage tack = loadImage("tacks.png");
  text("Tacks: $10", 700, 260); 
  image(tack, 625, 215, 75, 75);
  
  PImage c = loadImage("catapult.png");
  text("Catapult: $100", 700, 330);
  image(c, 625, 290, 75, 75);
  
  PImage bomb = loadImage("bomb.png");
  text("Bombs: $25", 700, 420); 
  image(bomb, 630, 370, 75, 75);
}

  Tile getTile(int xcor, int ycor){
    for(int i = 0; i < tiles.length ; i++){
     for(int j = 0; j < tiles[0].length; j++){
       if(tiles[i][j].getX() <= xcor && xcor < tiles[i][j].getX() + 60
       && tiles[i][j].getY() <= ycor && ycor < tiles[i][j].getY() + 60){
         return tiles[i][j];   
       }
     }
    }
    Tile n = new Tile(0, 0, false, "up");
    return n;
  }

void mouseClicked() {
  if (mouseX > 600) {

    if (mouseX > 625 && mouseX < 700 && mouseY > 215 && mouseY < 290 ) {
      if(!selected){
        toolPicked = 1; //tacks 
        selected = true;
      }
      else{
        selected = false;
      }
    }
    if(mouseX > 625 && mouseX < 700 && mouseY > 290 && mouseY < 365 ){
      if(!selected){
        toolPicked = 2; //catapult
        selected = true;
      }
      else{
       selected = false; 
      }
    }
    if(mouseX > 630 && mouseX < 705 && mouseY > 370 && mouseY < 445 ){
      if(!selected){
        toolPicked = 3; //bomb
        selected = true;
      }
      else{
       selected = false; 
      }
    }
  }
  else if(coins >= 10 && toolPicked == 1 && !getTile(mouseX, mouseY).isTowerable()){
      Tack t = new Tack (mouseX, mouseY); 
      getTile(mouseX, mouseY).addTool(t); 
      coins -= 10;
  }
  else if(coins >= 100 && toolPicked == 2 && getTile(mouseX, mouseY).isTowerable()){
      Catapult c = new Catapult(mouseX, mouseY);
      getTile(mouseX, mouseY).addTool(c);
      coins -= 100;
  }
  else if(coins >= 25 &&toolPicked == 3 && !getTile(mouseX, mouseY).isTowerable()){
      Bomb b = new Bomb (mouseX, mouseY); 
      getTile(mouseX, mouseY).addTool(b); 
      coins -= 25;
  }
}

void displayEnd() {
  fill(#DEB887); 
  rect(100, 100, 700, 400);
  fill(0, 0, 0); 
  
  textSize(60); 
  text("Game Over", 300, 250); 
  textSize(50); 
  String message = "You survivied " + waves + " waves" ; 
  text(message, 180, 320); 
}

void displayWin(){
  fill(#DEB887); 
  rect(100, 100, 700, 400);
  fill(0, 0, 0); 
  
  textSize(60);
  text("Congradulations!", 200, 250); 
  text("The towers are safe!", 160, 320); 
  textSize(50); 
  String message = "You survivied " + waves + " waves" ; 
  text(message, 180, 390); 
}
