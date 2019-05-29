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
  text("Tacks: $10", 690, 210); 
  image(tack, 700, 210, 100, 100);
  
  PImage bomb = loadImage("bomb.png");
  text("Bombs: $25", 690, 325); 
  image(bomb, 700, 320, 100, 100);
  
<<<<<<< HEAD
  /*
  PImage tack = loadImage("tacks.png");
  image(tack, 700, 210, 100, 100);
  */ 
=======
  PImage i = loadImage("tacks.png");
  image(i, 700, 200, 100, 100);
  
  PImage c = loadImage("catapult.jpeg");
  image(c, 700, 400, 100, 100);
>>>>>>> catapult
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
<<<<<<< HEAD
    if (mouseX >= 700 && mouseX <= 800 && mouseY >= 210 && mouseY <= 310) {
      toolPicked = 1; 
      selected = true; 
=======
    if (mouseX > 650 && mouseX < 750 && mouseY > 150 && mouseY < 250 ) {
      if(!selected){
        toolPicked = 1; //tacks 
        selected = true;
      }
      else{
        selected = false;
      }
    }
    if(mouseX > 650 && mouseX < 750 && mouseY > 350 && mouseY < 450 ){
      if(!selected){
        toolPicked = 2; //catapult
        selected = true;
      }
      else{
       selected = false; 
      }
>>>>>>> catapult
    }
    if (mouseX >= 700 && mouseX <= 800 && mouseY >= 320 && mouseY <= 420) {
      toolPicked = 2; 
      selected = true; 
    }
  }
<<<<<<< HEAD
  else if (selected && !getTile(mouseX, mouseY).isTowerable()) {
    if (toolPicked == 1) {
=======
  
  
  else if (selected) {
    if (toolPicked == 1 && !getTile(mouseX, mouseY).isTowerable()) {
>>>>>>> catapult
      Tack t = new Tack (mouseX, mouseY); 
      getTile(mouseX, mouseY).addTool(t); 
      coins -= 10; 
    }
<<<<<<< HEAD
    if (toolPicked == 2) {
      Bomb b = new Bomb (mouseX, mouseY); 
      getTile(mouseX, mouseY).addTool(b); 
      coins -= 25;
    }
=======
    else if(toolPicked == 2 && getTile(mouseX, mouseY).isTowerable()){
      Catapult c = new Catapult(mouseX, mouseY);
      getTile(mouseX, mouseY).addTool(c);
      coins -= 100;
>>>>>>> catapult
    }
  }
}
