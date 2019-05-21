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
    }/*
    if (direction.equals(left)) {
      xcor -= speed; 
    }
    if (direction.equals(right)) {
      xcor += speed; 
    }*/
  }
  
  void loseLife() {
    lives--; 
    if (lives == 0) {
      popped = true; 
    }
  }
}
