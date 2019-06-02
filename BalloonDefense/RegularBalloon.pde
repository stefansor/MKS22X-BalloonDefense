class RegularBalloon extends Balloon {
  
  RegularBalloon() {
    super(1, 4, #FF0000, true); 
  }
  
  void loseLife() {
    setLives(getLives() - 1);
    if (getLives() == 0) {
      setPopped(); 
    }
  }
}
