class BlackBalloon extends Balloon{
  
  BlackBalloon() {
    super(1, 5, #000000, true, true, 2); 
  }
  
  void loseLife() {
    setLives(getLives() - 1);
    if (getLives() == 0) {
      setPopped(); 
      for (int i = 0; i < 5; i++) {
        Balloons.add(new RegularBalloon()); 
      }
    }
  }
}
