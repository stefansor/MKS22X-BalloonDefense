int waves = 1; 
int life = 100; 
int bLeft = 100; 
int coins = 200;
boolean selected = false; 
int toolPicked; 

void infosetup() {
  fill(255,255,255); 
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
  text("Tacks: $10", 690, 250); 
  image(tack, 650, 240, 50, 50);
  
  PImage c = loadImage("catapult.jpeg");
  text("Catapult: $100", 690, 320);
  image(c, 650, 310, 50, 50);
  
  PImage bomb = loadImage("bomb.png");
  text("Bombs: $25", 690, 390); 
  image(bomb, 650, 380, 50, 50);
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

    if (mouseX > 625 && mouseX < 675 && mouseY > 215 && mouseY < 265 ) {
      if(!selected){
        toolPicked = 1; //tacks 
        selected = true;
      }
      else{
        selected = false;
      }
    }
    if(mouseX > 625 && mouseX < 675 && mouseY > 285 && mouseY < 335 ){
      if(!selected){
        toolPicked = 2; //catapult
        selected = true;
      }
      else{
       selected = false; 
      }
    }
    else if(toolPicked == 2 && getTile(mouseX, mouseY).isTowerable()){
      Catapult c = new Catapult(mouseX, mouseY);
      getTile(mouseX, mouseY).addTool(c);
      coins -= 100;
    }
    if(mouseX > 625 && mouseX < 675 && mouseY > 355 && mouseY < 405 ){
      if(!selected){
        toolPicked = 3; //bomb
        selected = true;
      }
      else{
       selected = false; 
      }
    }
    else if(toolPicked == 3 && !getTile(mouseX, mouseY).isTowerable()){
      Bomb b = new Bomb (mouseX, mouseY); 
      getTile(mouseX, mouseY).addTool(b); 
      coins -= 25;
    }
    
  }
}