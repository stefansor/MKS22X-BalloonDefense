abstract class Balloon {
  int xcor, ycor, lives, speed, hue; 
  boolean explode, pop, popped;
  
  Balloon(int l, int s, int c, boolean e, boolean p) {
    xcor = 90; 
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
      ellipse(xcor, ycor, 25, 30); 
      triangle(xcor-10, ycor+20, xcor, ycor+15, xcor+10, ycor+20); 
    }
  }
  
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
  
    void move() {    
    String direction = getTile().getDir();  
    if (direction.equals("up")) {
      ycor -= speed; 
    }
    if (direction.equals("down")) {
      ycor += speed; 
    }
    if (direction.equals("left")) {
      xcor -= speed; 
    }
    if (direction.equals("right")) {
      xcor += speed; 
    }
    if (direction.equals("upturningleft")) {
      if (ycor % 60 < 30) {
        ycor -= speed; 
      }
      else {
        xcor -= speed; 
      }
    }
    if (direction.equals("upturningright")) {
      if (ycor % 60 < 30) {
        ycor -= speed; 
      }
      else {
        xcor += speed; 
      }
    }
    if (direction.equals("downturningleft")) {
      if (ycor % 60 < 30) {
        ycor -= speed; 
      }
      else {
        xcor += speed; 
      }
    }
    if (direction.equals("downturningright")) {
      if (ycor % 60 < 30) {
        ycor += speed; 
      }
      else {
        xcor += speed; 
      }
    }
    if (direction.equals("leftturningdown")) {
      if (xcor % 60 < 30) {
        xcor -= speed; 
      }
      else {
        ycor += speed; 
      }
    }
    if (direction.equals("leftturningup")) {
      if (xcor % 60 < 30) {
        xcor -= speed; 
      }
      else {
        ycor -= speed; 
      }
    }
    if (direction.equals("rightturningup")) {
      if (xcor % 60 < 30) {
        xcor += speed; 
      }
      else {
        ycor -= speed; 
      }
    }
    if (direction.equals("rightturningdown")) {
      if (xcor % 60 < 30) {
        xcor += speed; 
      }
      else {
        ycor += speed; 
      }
    }
    
  }

  public abstract void loseLife(); 
}