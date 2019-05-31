class RegularBalloon extends Balloon {
  
  RegularBalloon() {
    super(1, 3, #FF0000, true, true, 1); 
  }
  
  void loseLife() {
    setLives(getLives() - 1);
    if (getLives() == 0) {
      setPopped(); 
    }
  }
}
