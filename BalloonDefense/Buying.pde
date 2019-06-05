int waves = 1; 
int life = 100; 
int bLeft = 100; 
int coins = 200;
int toolPicked;  

void infoSetup() {
  //right side of the playing screen
  //shows lives, currency, wave, and balloons left
  //also shows prices of each tool 
  fill(#ede1d1); 
  rect(540, 0, 460, 900);
  fill(0, 0, 0); 
  
  image(sign, 610, 0, 280, 200);
  
  textFont(font1); 
  text("Balloon", 645, 90); 
  text("Tower", 665, 140); 
  text("Defense", 685, 190); 
  
  textFont(font2); 
  String w = "Waves: " + waves; 
  text(w, 610, 230); 
  
  String l = "Lives Left: " + life; 
  text(l, 610, 260); 
  
  String bl = "Balloons Left: " + bLeft; 
  text(bl, 610, 290); 
  
  String money = "Coins: " + coins; 
  text(money, 610, 320);
  
  PImage tack = loadImage("tacks.png");
  text("Tacks: $10", 690, 380); 
  image(tack, 610, 330, 75, 75);
  
  PImage c = loadImage("catapult.png");
  text("Catapult: $100", 670, 460);
  image(c, 605, 410, 75, 75);
  
  PImage bomb = loadImage("bomb.png");
  text("Bombs: $25", 690, 545); 
  image(bomb, 615, 490, 75, 75);
}

//returns tile with xcor and ycor
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

//initial click on right side of playing screen selects which tool given sufficient currency
//second and preceding clicks on map in appropriate areas for each tool instantiate the selected tool

void mouseClicked() {
  if (mouseX > 600) {
    if (mouseX >= 610 && mouseX <= 685 && mouseY >= 330 && mouseY <= 405 ) {
      toolPicked = 1; //tacks 
    }
    if(mouseX >= 605 && mouseX <= 680 && mouseY >= 410 && mouseY <= 485 ){
      toolPicked = 2; //catapult
    }
    if(mouseX >= 615 && mouseX <= 690 && mouseY >= 490 && mouseY < 565 ){
      toolPicked = 3; //bomb
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


//end message that appears when player has no lives
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


//end image when player survives all the waves
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
