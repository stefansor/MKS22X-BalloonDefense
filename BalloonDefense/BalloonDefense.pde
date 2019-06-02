Tile[][] tiles = new Tile[10][10];
  
    void setup(){
      size(900, 600);
      
      setupTiles(); 
    }
    
    void draw(){
      if (waves > 20) {
        displayWin(); 
      }
      else if (life == 0) {
        displayEnd(); 
      }
      else {
        infoSetup(); 
        
        if (bLeft == 0) {
          waves++; 
          counter = 0; 
          bLeft = 100; 
          coins += 250; //HOW MUCH DOES COINS INCREASE AT THE END OF A WAVE? 
        }
        
        for(int i = 0; i < tiles.length; i++){
          for(int j = 0; j < tiles[0].length; j++){
           tiles[i][j].display(); 
          }
        }
        
        bSetup(); 
        
        for (int i = 0; i < Balloons.size(); i++) {
          if (Balloons.get(i).getLives() == 0) {
            Balloons.remove(i); 
            bLeft--; 
            coins +=2;
          }
          if (Balloons.size() > 0 && Balloons.get(i).reachedEnd()) {
            Balloons.remove(i); 
            bLeft--;
            life--; 
          }
          else if(Balloons.size() > 0){
            Balloon ball = Balloons.get(i); 
            if (ball.popping()) {
              if (i+1 < Balloons.size()) {
                Balloons.remove(i+1);
                bLeft--; 
                coins +=2;
              }
              if (i+2 < Balloons.size()) {
                Balloons.remove(i+2);
                bLeft--; 
                coins +=2;
              }
              if (i-1 > -1) {
                Balloons.remove(i-1);
                bLeft--; 
                coins +=2;
              }
              if (i-2 > -1) {
                Balloons.remove(i-2);
                bLeft--; 
                coins +=2;
              }
            }
            ball.move(); 
            ball.display(); 
          }
        }
        
      }
      
    }
  
  
 
