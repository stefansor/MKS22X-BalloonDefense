abstract class Balloon {
  int xcor, ycor, lives, speed, hue; 
  boolean explode, pop, popped;
  
  Balloon(int l, int s, int c, boolean e, boolean p) {
    xcor = 0; 
    ycor = 0;
    lives = l;
    speed = s;
    hue = c; 
    explode = e;
    pop = p; 
    popped = false; 
  }
  
  void display() {
    fill(hue); 
    
    if (!popped) {
      ellipseMode(CENTER); 
      ellipse(xcor, ycor, 30, 35); 
      triangle(xcor-10, ycor+25, xcor, ycor+17.5, xcor+10, ycor+25); 
    }
  }
  
  Tile getTile(){
    for(int i = 0; i < 2; i++){
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

  public abstract void move(); 
  public abstract void loseLife(); 
}
