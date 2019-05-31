Tile[][] tiles = new Tile[10][10];

BlackBalloon b = new BlackBalloon();
  
    void setup(){
      size(900, 600);
      
      setupTiles(); 
    }
    
    void draw(){
      infoSetup(); 
      
      for(int i = 0; i < tiles.length; i++){
        for(int j = 0; j < tiles[0].length; j++){
         tiles[i][j].display(); 
        }
      }
      
      bSetup(); 
      
      for

    }
  
  
 
