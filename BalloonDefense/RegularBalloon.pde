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
      xcor -= speed; 
      ycor -= speed; 
    }
    if (direction.equals("upturningright")) {
      xcor += speed; 
      ycor -= speed; 
    }
    if (direction.equals("downturningleft")) {
      xcor -= speed; 
      ycor += speed; 
    }
    if (direction.equals("downturningright")) {
      xcor += speed; 
      ycor += speed; 
    }
    if (direction.equals("leftturningdown")) {
      xcor -= speed; 
      ycor += speed; 
    }
    if (direction.equals("leftturningup")) {
      xcor -= speed; 
      ycor -= speed; 
    }
    if (direction.equals("rightturningup")) {
      xcor += speed; 
      ycor -= speed; 
    }
    if (direction.equals("rightturningdown")) {
      xcor += speed; 
      ycor += speed; 
    }
    
  }
  
  void loseLife() {
    lives--; 
    if (lives == 0) {
      popped = true; 
    }
  }
}