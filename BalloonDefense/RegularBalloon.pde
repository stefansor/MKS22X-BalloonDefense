class RegularBalloon extends Balloon {
  
  RegularBalloon() {
    super(1, 4, #FF0000, true); 
  }
  
  RegularBalloon(float x, float y) {
    super(1, 4, #FF0000, true); 
    setXY(x, y); 
  }
  
  void loseLife() {
    setLives(getLives() - 1);
    if (getLives() == 0) {
      setPopped(); 
    }
  }
}
