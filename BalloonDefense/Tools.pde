abstract class Tools{
  float xcor, ycor; 
  
  boolean isTouching(Balloon other) {
    return dist(xcor, ycor, other.xcor,other.ycor) <= 10;
  }
  
  abstract void display();
  
  Tile getTile(){
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
  
  
  
}
