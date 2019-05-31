class BrownBalloon extends Balloon{
  
  BrownBalloon() {
    super(1, 5, #A0522D, true, true); 
  }
  
  void loseLife() {
    setLives(getLives() - 1);
    if (getLives() == 0) {
      setPopped(); 
      for (int i = 0; i < 5; i++) {
        Balloons.add(new RegularBalloon()); 
        bLeft++; 
      }
    }
  }
}
