class IronBalloon extends Balloon{
  
  IronBalloon() {
    super(1, 2, #A9A9A9, false); 
  }
  
  void loseLife() {
    setLives(getLives() - 1);
    setPopped();
    Balloons.add(new BrownBalloon(getxcor(), getycor())); //when popped generates a brown balloon 
  } //demonstrates layering
}
