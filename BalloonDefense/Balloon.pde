abstract class Balloon {
  private int xcor, ycor, lives, speed, hue; 
  private boolean explode, pop, popped, end;
  
  Balloon(int l, int s, int c, boolean e, boolean p) {
    xcor = 90; 
    ycor = 0;
    lives = l;
    speed = s;
    hue = c; 
    explode = e;
    pop = p; 
    popped = false; 
    end = false;
  }
  
  void display() {
    if (!popped) {
      fill(hue); 
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
 
  float getxcor() {
    return xcor; 
  }
  
  float getycor() {
    return ycor; 
  }
  
  int getLives() {
    return lives; 
  }
  
  void setLives(int l) {
    lives = l; 
  }
  
  void setPopped() {
    popped = true; 
  }
  
  boolean popping() { //Need to do something different for ironballoons bc they are only explodable
    boolean hasbomb = false; 
    ArrayList<Tools> t = getTile().getList(); 
    for (int i = 0; i < t.size(); i++) {
      if (t.get(i).isBomb()) {
        hasbomb = true; 
  
      }
      if (t.get(i).isTouching(this)) {
        loseLife(); 
        t.get(i).loseLife(); 
        if (t.get(i).getLives() == 0) {
          t.remove(i); 
        }
      }
    }
    return hasbomb; 
  }
  
  boolean reachedEnd() {
    return end; 
  }
  
  void move() {    
    if (ycor >= 600) {
      popped = true;
      end = true; 
    } 
    else {
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
        if (ycor % 60 > 30) {
          ycor -= speed; 
        }
        else {
          xcor -= speed; 
        }
      }
      if (direction.equals("upturningright")) {
        if (ycor % 60 > 30) {
          ycor -= speed; 
        }
        else {
          xcor += speed; 
        }
      }
      if (direction.equals("downturningleft")) {
        if (ycor % 60 < 30) {
          ycor += speed; 
        }
        else {
          xcor -= speed; 
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
        if (xcor % 60 > 30) {
          xcor -= speed; 
        }
        else {
          ycor += speed; 
        }
      } 
      if (direction.equals("leftturningup")) {
        if (xcor % 60 > 30) {
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
  }

  public abstract void loseLife(); 
}