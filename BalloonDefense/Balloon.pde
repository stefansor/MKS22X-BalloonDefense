abstract class Balloon {
  private float xcor, ycor; 
  private int lives, speed, hue; 
  private boolean popable, popped, end;
  
  Balloon(int l, int s, int c, boolean p) {
    xcor = 90; 
    ycor = 0;
    lives = l; //move of times balloon must be hit before it is removed
    speed = s;
    hue = c; 
    popable = p; //whether the balloon can be popped by tacks and bullets
    popped = false; 
    end = false; //whether the balloon has reached the end
  }
  
  void display() {
    if (!popped) {
      fill(hue); 
      ellipseMode(CENTER); 
      ellipse(xcor, ycor, 25, 30); 
      triangle(xcor-10, ycor+20, xcor, ycor+15, xcor+10, ycor+20); 
    }
  }
  
  Tile getTile(){ //finds tile balloon is on 
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
    ArrayList<Tools> t = getTile().getList(); //list of tools on the tile the balloon is on 
    for (int i = 0; i < t.size(); i++) {
      if(t.get(i).isTouching(this)) { //if the tool is touching the balloon
        if (t.get(i).isTack() && popable) { //if tool is a tack and a Regular or Brown balloons 
          loseLife();  //balloon loses life
          t.get(i).loseLife(); //tack loses life
          if (t.get(i).getLives() == 0) { //if tack is used up, remove it from the tools list
            t.remove(i); 
          }
        }
        else if (t.get(i).isBomb()){ //if tool is a bomb
          loseLife();  //all balloons lose a life
          int last = x+5; //checks closest 5 balloons
          while (x < last) {
            if (x < Balloons.size() && t.get(i).isTouching(Balloons.get(x))) { //if they are close enought to the bomb
              Balloons.get(x).loseLife(); //those balloons lose a life
            }
            x++; 
          }
          t.remove(i); //remove bomb from tools list
        }
      }
    }
    
  }
  
  void shot(){ //checking to see if the balloon is getting hit by any of the bullets on screen
    for(int i = 0; i < tiles.length; i++){
     for(int j = 0; j < tiles[i].length; j++){
      ArrayList<Tools> t = tiles[i][j].getList(); //for each list of tools
      for(int h = 0; h < t.size(); h++){
       if(t.get(h).isCatapult()){ //if the tool is a catapult
         for(int k = 0; k < t.get(h).getBullets().size(); k++){ //check its bullets
           if(t.get(h).getbullet(k).touching(this) && popable){ //if the balloon is touch the bullet
             loseLife(); //the balloon loses a life
           }
         }
       }
      }
     }
    }
  }
  
  boolean reachedEnd() {
    return end; 
  }
  
  void move() {    
    if (ycor >= 600) { //if the balloon reaches the end, it is popped
      popped = true;
      end = true; 
    } 
    else {
      String direction = getTile().getDir(); //tile tells balloon which direction it should move
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
