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
  
  textFont(font1); 
  text("Balloon Tower", 610, 50); 
  text("Defense", 670, 90); 
  
  textFont(font2); 
  String w = "Waves: " + waves; 
  text(w, 610, 130); 
  
  String l = "Lives Left: " + life; 
  text(l, 610, 160); 
  
  String bl = "Balloons Left: " + bLeft; 
  text(bl, 610, 190); 
  
  String money = "Coins: " + coins; 
  text(money, 610, 220);
  
  PImage tack = loadImage("tacks.png");
  text("Tacks: $10", 690, 285); 
  image(tack, 610, 240, 75, 75);
  
  PImage c = loadImage("catapult.png");
  text("Catapult: $100", 670, 370);
  image(c, 605, 315, 75, 75);
  
  PImage bomb = loadImage("bomb.png");
  text("Bombs: $25", 690, 450); 
  image(bomb, 615, 390, 75, 75);
  
  
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

    if (/*mouseX >= 610 && mouseX <= 685 && */ mouseY >= 240 && mouseY <= 315 ) {
      if(!selected){
        toolPicked = 1; //tacks 
        selected = true;
      }
      else{
        selected = false;
      }
    }
    if(/*mouseX >= 605 && mouseX <= 680 &&*/ mouseY >= 315 && mouseY <= 390 ){
      if(!selected){
        toolPicked = 2; //catapult
        selected = true;
      }
      else{
       selected = false; 
      }
    }
    if(/*mouseX >= 615 && mouseX <= 690 &&*/ mouseY >= 390 && mouseY < 465 ){
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
