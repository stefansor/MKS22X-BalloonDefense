int coins = 200;
boolean selected = false; 
int toolPicked; 

void infosetup() {
  fill(255,255,255); 
  rect(540, 0, 460, 900);
  fill(0, 0, 0); 
  textSize(32); 
  String money = "Coins: " + coins; 
  text(money, 650, 100);
  
  PImage i = loadImage("tacks.jpg");
  image(i, 700, 200, 100, 100);
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
    if (mouseX > 650 && mouseX < 750 && mouseY > 150 && mouseY < 250) {
      toolPicked = 1; 
      selected = true; 
    }
  }
  else if (selected) {
    if (toolPicked == 1) {
      if(coins >= 10){
        Tack t = new Tack (mouseX, mouseY); 
        getTile(mouseX, mouseY).addTool(t); 
        coins -= 10;
      }
    }
  }
}
