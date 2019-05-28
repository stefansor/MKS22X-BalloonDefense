class BlackBalloons extends Balloon{
  
  BlackBalloons() {
    super(1, 5, 0, true, true); 
  }
  
  void loseLife() {
    setLives(getLives() - 1);
    if (getLives() == 0) {
      setPopped(); 
      for (int i = 0; i < 5; i++) {
        RegBalloons.add(new RegularBalloon()); 
      }
    }
  }
}
