class RegularBalloon extends Balloon {
  
  RegularBalloon(int l, int s, int c, boolean e, boolean p) {
    super(l, s, c, e, p); 
  }
  
  void loseLife() {
    lives--; 
    if (lives == 0) {
      popped = true; 
    }
  }
}