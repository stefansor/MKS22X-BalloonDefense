Tile[][] tiles = new Tile[10][10];
PFont font1, font2; 
PImage sign; 
  
    void setup(){
      size(900, 600);
      font1 = loadFont("title.vlw"); //Fonts for side panel
      font2 = loadFont("other.vlw");
      sign = loadImage("Sign.png");
      
      setupTiles(); //sets up tiles for map
    }
    
    void draw(){
      if (waves > 20) { //player beats the game after 20 waves
        displayWin(); 
      }
      else if (life <= 0) { //player loses game
        displayEnd(); 
      }
      else {
        infoSetup(); //sets up side panel
        
        if (bLeft == 0) { //starts a different wave when current has ended
          waves++; 
          counter = 0; 
          bLeft = 100; 
          coins += 250; 
        }
        
        for(int i = 0; i < tiles.length; i++){ //displays map 
          for(int j = 0; j < tiles[0].length; j++){
           tiles[i][j].display(); 
          }
        }
        
        bSetup(); //sets up balloons for that wave
        
        for (int i = 0; i < Balloons.size(); i++) { //for the balloons on the map
          if (Balloons.get(i).getLives() == 0) { //remove those that have been popped
            Balloons.remove(i); 
            i--;
            bLeft--; 
            coins +=5;
          }
          else if (Balloons.size() > 0 && Balloons.get(i).reachedEnd()) { //remove those that have reached the end and player loses life 
            Balloons.remove(i); 
            i--;
            bLeft--;
            life--; 
          }
          else if(Balloons.size() > 0){
            Balloon ball = Balloons.get(i); 
            if (i > 3) { //balloon loses life due to tack or bomb
              ball.popping(i-3); 
            }
            else {
              ball.popping(0); 
            }
            ball.shot(); //balloon loses life due to bullet
            ball.move(); //balloon moves
            ball.display(); 
          }
        }
      }
      
    }
  
  
 
