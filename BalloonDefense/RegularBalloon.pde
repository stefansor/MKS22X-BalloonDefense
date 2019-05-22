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
    if (direction.equals("downturningright")) {
      xcor += speed; 
      ycor += speed; 
    }
    if (direction.equals("upturningright")) {
      xcor += speed; 
      ycor += speed; 
    }
    //directions that sill need to be added 
    /*
    upturningleft - 
    upturningright 
    downturningleft
    downturningright - 
    leftturningdown
    leftturningup
    rightturningdown
    rightturningup
    */
    
  }
  
  void loseLife() {
    lives--; 
    if (lives == 0) {
      popped = true; 
    }
  }
}