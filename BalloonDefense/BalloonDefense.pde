ArrayList<RegularBalloon> RegBalloons = new ArrayList<RegularBalloon>(); 
int counter = 0; 
Tile[][] tiles = new Tile[10][10];

//int coins = 200;
RegularBalloon r = new RegularBalloon(1, 5, 153, false, true);
  
    void setup(){
      size(900, 600);
      
      setuptiles(); 
    }
    
    void update() {
      //if mouse pressed and dragged, add tool to list
      //coins changes 
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
        RegularBalloon b = new RegularBalloon(1, 4, #ff0000, false, true);
        RegBalloons.add(b);  
      }
      
      for (RegularBalloon rb : RegBalloons) {
        update(); 
        rb.move(); 
        rb.display(); 
       }

    }
  
  
 
