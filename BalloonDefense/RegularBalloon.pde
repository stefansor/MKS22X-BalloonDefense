class RegularBalloon extends Balloon {
  
  RegularBalloon(int l, int s, int c, boolean e, boolean p) {
    super(l, s, c, e, p); 
  }
  
  void loseLife() { 
    if (lives <= 0) {
      popped = true; 
    }
    else{
     lives--; 
    }
  }
  void update(){
    for(int i = 0; i < getTile().weaponsLength(); i++){
     if(getTile().getTool(i).isTouching(this)){
       this.loseLife();
     }
    }
    
  }

}
