abstract class Balloon {
  private float xcor, ycor; 
  private int lives, speed, hue; 
  private boolean popable, pop, popped, end;
  
  Balloon(int l, int s, int c, boolean p) {
    xcor = 90; 
    ycor = 0;
    lives = l;
    speed = s;
    hue = c; 
    popable = p;
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
  
  void setXY(float x, float y) {
    xcor = x;
    ycor = y; 
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
   
  void popping(int x) {
    ArrayList<Tools> t = getTile().getList(); 
    for (int i = 0; i < t.size(); i++) {
      if(t.get(i).isTouching(this)) {
        if (t.get(i).isTack() && popable) { //if tool is a tack, only Regular and Brown balloons can pop
          loseLife(); 
          t.get(i).loseLife(); 
          if (t.get(i).getLives() == 0) {
            t.remove(i); 
          }
        }
        else if (t.get(i).isBomb()){ //if tool is a bomb, all balloons can pop
          loseLife();  
          int last = x+5; 
          while (x < last) {
            if (x < Balloons.size() && t.get(i).isTouching(Balloons.get(x))) {
              Balloons.get(x).loseLife(); 
            }
            x++; 
          }
          t.get(i).loseLife(); 
          t.remove(i);
        }
      }
    }
    
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
