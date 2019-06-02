class IronBalloon extends Balloon{
  
  IronBalloon() {
    super(3, 2, #A9A9A9, false); 
  }
  
  void loseLife() {
    setLives(getLives() - 1);
    if (getLives() == 0) {
      setPopped(); 
    }
  }
}
