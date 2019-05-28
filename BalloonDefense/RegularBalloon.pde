class RegularBalloon extends Balloon {
  
  RegularBalloon() {
    super(1, 3, #FF0000, true, true); 
  }
  
  void loseLife() {
    setLives(getLives() - 1);
    if (getLives() == 0) {
      setPopped(); 
    }
  }
}
