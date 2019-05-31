void setupTiles() {
      for (int r = 0; r < 10; r++) {
        for (int c = 0; c < 10; c++) {
          Tile t = new Tile(0, 0, true, "blank"); 
          tiles[r][c] = t; 
        }
      }

      for(int i = 0; i < tiles.length; i++){
        for(int j = 0; j < tiles[0].length; j++){
          
          tiles[i][j].setX(j*60);
          tiles[i][j].setY(i*60);
          
          if((j == 1 && (i == 0 || (3 < i  && i < 8)))
          || (j == 8 && i == 9)
          || (j == 7 && (1 < i && i < 5))){
            tiles[i][j].setDir("down");
            tiles[i][j].setImage("upstraight.jpg");
            tiles[i][j].setTowerable(false);
          }
          
          else if(j == 5 && i == 4){
           tiles[i][j].setDir("up");
           tiles[i][j].setImage("upstraight.jpg");
           tiles[i][j].setTowerable(false);

          }
          
          else if((i == 1 && (1 < j && j < 7))
          || (i == 7 && j == 4)
          || (i == 8 && (j == 2 || (5 < j && j < 8)))){
            tiles[i][j].setDir("right");
            tiles[i][j].setImage("sidestraight.jpg");
            tiles[i][j].setTowerable(false);

            
          }
          else if((i == 3 && (1 < j && j < 5))
          || (i == 5 && j == 6)){
            tiles[i][j].setDir("left");
            tiles[i][j].setImage("sidestraight.jpg");
            tiles[i][j].setTowerable(false);

          }
          
          else if(((i == 1 || i == 8) && j == 1)
          || (i == 8 && j == 5)){
            tiles[i][j].setDir("downturningright");
            tiles[i][j].setImage("downrightcorner.jpg");
            tiles[i][j].setTowerable(false);

          }
          
          else if((i == 5 && j == 7)){
            tiles[i][j].setDir("downturningleft");
            tiles[i][j].setImage("downleftcorner.jpg"); 
            tiles[i][j].setTowerable(false);

          }
          
          else if((i == 1 && j == 7)
          || (i == 7 && j == 5)
          || (i == 8 && j == 8)){
            tiles[i][j].setDir("rightturningdown");
            tiles[i][j].setImage("upleftcorner.jpg");
            tiles[i][j].setTowerable(false);

          }
          
          else if(i == 8 && j == 3){
           tiles[i][j].setDir("rightturningup");
           tiles[i][j].setImage("downleftcorner.jpg"); 
           tiles[i][j].setTowerable(false);
          }
          
          else if((i == 5 && j == 5)){
            tiles[i][j].setDir("leftturningup");
            tiles[i][j].setImage("downrightcorner.jpg");
            tiles[i][j].setTowerable(false);
          }
          
          
          else if(i == 3 && j == 1){
            tiles[i][j].setDir("leftturningdown");
            tiles[i][j].setImage("uprightcorner.jpg");
            tiles[i][j].setTowerable(false);
          }
          
          else if(i == 3 && j == 5){
            tiles[i][j].setDir("upturningleft");
            tiles[i][j].setImage("upleftcorner.jpg");
            tiles[i][j].setTowerable(false);
          }
          
          
          else if(i == 7 && j == 3){
            tiles[i][j].setDir("upturningright");
            tiles[i][j].setImage("uprightcorner.jpg"); 
            tiles[i][j].setTowerable(false);
          }       
        }
      }
}
