class RegularBalloon extends Balloon {
  
  RegularBalloon(int l, int s, int c, boolean e, boolean p) {
    super(l, s, c, e, p); 
  }
  
  void move() {
    if (direction == 1) {
      ycor += speed; 
      if (ycor >= 150) {
        direction++;
      }
    }
    if (direction == 2) {
      xcor += speed; 
      if (xcor >= 550) {
        direction++;
      }
    }
    if (direction == 3) {
      ycor += speed; 
      if (ycor >= 300) {
        direction++;
      }
    }
    if (direction == 4) {
      xcor -= speed; 
      if (xcor <= 300) {
        direction++;
      }
    }
    if (direction == 5) {
      ycor -= speed; 
      if (ycor >= 200) {
        direction++;
      }
    }
    if (direction == 6) {
      xcor -= speed; 
      if (xcor <= 50) {
        direction++;
      }
    }
    if (direction == 7) {
      ycor += speed; 
      if (ycor >= 500) {
        direction++;
      }
    }
    if (direction == 8) {
      xcor += speed; 
      if (xcor >= 500) {
        direction++;
      }
    }
    if (direction == 9) {
      ycor += speed; 
      if (ycor >= 550) {
        popped = true; //need to find way to make number of main lives decrease
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
