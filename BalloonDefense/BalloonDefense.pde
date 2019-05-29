ArrayList<RegularBalloon> RegBalloons = new ArrayList<RegularBalloon>(); 
int counter = 0; 
Tile[][] tiles = new Tile[10][10];

RegularBalloon r = new RegularBalloon();
  
    void setup(){
      size(900, 600);
      
      setuptiles(); 
    }
    
    void draw(){
      infosetup(); 
      
      for(int i = 0; i < tiles.length; i++){
        for(int j = 0; j < tiles[0].length; j++){
         tiles[i][j].display(); 
        }
      }
      
      counter++; 
      if (counter%10 == 0 && counter < 1000) {
        RegularBalloon b = new RegularBalloon();
        RegBalloons.add(b);  
      }
      
      for (int i = 0; i < RegBalloons.size(); i++) {
        if (RegBalloons.get(i).getLives() == 0) {
          RegBalloons.remove(i); 
          bLeft--; 
        }
        if (RegBalloons.get(i).reachedEnd()) {
          RegBalloons.remove(i); 
          life--; 
        }
        else {
          RegularBalloon rb = RegBalloons.get(i); 
          if (rb.popping()) {
            if (i+1 < RegBalloons.size()) {
              RegBalloons.remove(i+1);
            }
            if (i+2 < RegBalloons.size()) {
              RegBalloons.remove(i+2);
            }
            if (i-1 > -1) {
              RegBalloons.remove(i-1);
            }
            if (i-2 > -1) {
              RegBalloons.remove(i-2);
            }
          }
          rb.popping(); 
          rb.move(); 
          rb.display(); 
        }
       }

    }
  
  
 
