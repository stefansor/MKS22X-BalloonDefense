Tile[][] tiles = new Tile[10][10];
PFont font1, font2; 
  
    void setup(){
      size(900, 600);
      font1 = loadFont("title.vlw"); 
      font2 = loadFont("other.vlw");
      
      setupTiles(); 
    }
    
    void draw(){
      if (waves > 20) {
        displayWin(); 
      }
      else if (life <= 0) {
        displayEnd(); 
      }
      else {
        infoSetup(); 
        
        if (bLeft == 0) {
          waves++; 
          counter = 0; 
          bLeft = 100; 
          coins += 250; 
        }
        
        for(int i = 0; i < tiles.length; i++){
          for(int j = 0; j < tiles[0].length; j++){
           tiles[i][j].display(); 
          }
        }
        
        bSetup(); 
        
        for (int i = 0; i < Balloons.size(); i++) {
          System.out.print(i + " "); 
          if (Balloons.get(i).getLives() == 0) {
            Balloons.remove(i); 
            i--;
            bLeft--; 
            coins +=5;
          }
          else if (Balloons.size() > 0 && Balloons.get(i).reachedEnd()) {
            Balloons.remove(i); 
            i--;
            bLeft--;
            life--; 
          }
          else if(Balloons.size() > 0){
            Balloon ball = Balloons.get(i); 
            if (i > 3) {
              ball.popping(i-3); 
            }
            else {
              ball.popping(0); 
            }
            ball.shot();
            ball.move(); 
            ball.display(); 
          }
          System.out.println(); 
        }
      }
      
    }
  
  
 
