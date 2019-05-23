class RegularBalloon extends Balloon {
  
  RegularBalloon(int l, int s, int c, boolean e, boolean p) {
    super(l, s, c, e, p); 
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
  
  void loseLife() {
    lives--; 
    if (lives == 0) {
      popped = true; 
    }
  }
}