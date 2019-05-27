class RegularBalloon extends Balloon {
  
  RegularBalloon(int l, int s, int c, boolean e, boolean p) {
    super(l, s, c, e, p); 
  }
  
  
  
  void loseLife() {
    lives--; 
    if (lives == 0) {
      popped = true; 
    }
  }
  
  void update(){
    for(int i = 0; i < getTile().stuffLength(); i++){
     if(getTile().getTool(i).isTouching(this)){
       this.loseLife();
     }
    }
    
  }
  
  
}
