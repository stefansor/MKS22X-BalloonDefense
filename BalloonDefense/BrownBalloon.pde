class BrownBalloon extends Balloon{
  
  BrownBalloon() {
    super(2, 5, #A0522D, true); 
  }
  
  BrownBalloon(float x, float y) {
    super(1, 4, #A0522D, true); 
    setXY(x, y); 
  }
    
  void loseLife() {
    setLives(getLives() - 1);
    if (getLives() == 0) {
      setPopped(); 
      Balloons.add(new RegularBalloon(getxcor()-10, getycor())); 
      Balloons.add(new RegularBalloon(getxcor()-20, getycor()));
      Balloons.add(new RegularBalloon(getxcor(), getycor())); 
      Balloons.add(new RegularBalloon(getxcor()+10, getycor())); 
      Balloons.add(new RegularBalloon(getxcor()+20, getycor())); 
      bLeft += 4; 
    }
  }
}
