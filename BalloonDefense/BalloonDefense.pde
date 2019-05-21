
class balloonDefense{
    private int mapwidth;
    private int maplength;    
        
    balloonDefense(int x, int y){
      mapwidth = x;
      maplength = y;
    }
      
 }

RegularBalloon r = new RegularBalloon(1, 1, 153, false, true);
Tile[][] tiles = new Tile[10][10];
  
    void setup(){
      size(750, 600);
     
      Tile t1 = new Tile(0, 0, false, "blank");
      Tile t2 = new Tile(0, 0, false, "blank");
      Tile t3 = new Tile(0, 0, false, "blank");
      Tile t4 = new Tile(0, 0, false, "blank");
      Tile t5 = new Tile(0, 0, false, "blank");
      Tile t6 = new Tile(0, 0, false, "blank");
      Tile t7 = new Tile(0, 0, false, "blank");
      Tile t8 = new Tile(0, 0, false, "blank");
      Tile t9 = new Tile(0, 0, false, "blank");
      Tile t10 = new Tile(0, 0, false, "blank");
      Tile t11 = new Tile(0, 0, false, "blank");
      Tile t12 = new Tile(0, 0, false, "blank");
      Tile t13 = new Tile(0, 0, false, "blank");
      Tile t14 = new Tile(0, 0, false, "blank");
      Tile t15 = new Tile(0, 0, false, "blank");
      Tile t16 = new Tile(0, 0, false, "blank");
      Tile t17 = new Tile(0, 0, false, "blank");
      Tile t18 = new Tile(0, 0, false, "blank");
      Tile t19 = new Tile(0, 0, false, "blank");
      Tile t20 = new Tile(0, 0, false, "blank");
      
      Tile t21 = new Tile(0, 0, false, "blank");
      Tile t22 = new Tile(0, 0, false, "blank");
      Tile t23 = new Tile(0, 0, false, "blank");
      Tile t24 = new Tile(0, 0, false, "blank");
      Tile t25 = new Tile(0, 0, false, "blank");
      Tile t26 = new Tile(0, 0, false, "blank");
      Tile t27 = new Tile(0, 0, false, "blank");
      Tile t28 = new Tile(0, 0, false, "blank");
      Tile t29 = new Tile(0, 0, false, "blank");
      Tile t30 = new Tile(0, 0, false, "blank");
      Tile t31 = new Tile(0, 0, false, "blank");
      Tile t32 = new Tile(0, 0, false, "blank");
      Tile t33 = new Tile(0, 0, false, "blank");
      Tile t34 = new Tile(0, 0, false, "blank");
      Tile t35 = new Tile(0, 0, false, "blank");
      Tile t36 = new Tile(0, 0, false, "blank");
      Tile t37 = new Tile(0, 0, false, "blank");
      Tile t38 = new Tile(0, 0, false, "blank");
      Tile t39 = new Tile(0, 0, false, "blank");
      Tile t40 = new Tile(0, 0, false, "blank");
      Tile t41 = new Tile(0, 0, false, "blank");
      Tile t42 = new Tile(0, 0, false, "blank");
      Tile t43 = new Tile(0, 0, false, "blank");
      Tile t44 = new Tile(0, 0, false, "blank");
      Tile t45 = new Tile(0, 0, false, "blank");
      Tile t46 = new Tile(0, 0, false, "blank");
      Tile t47 = new Tile(0, 0, false, "blank");
      Tile t48 = new Tile(0, 0, false, "blank");
      Tile t49 = new Tile(0, 0, false, "blank");
      Tile t50 = new Tile(0, 0, false, "blank");
      Tile t51 = new Tile(0, 0, false, "blank");
      Tile t52 = new Tile(0, 0, false, "blank");
      Tile t53 = new Tile(0, 0, false, "blank");
      Tile t54 = new Tile(0, 0, false, "blank");
      Tile t55 = new Tile(0, 0, false, "blank");
      Tile t56 = new Tile(0, 0, false, "blank");
      Tile t57 = new Tile(0, 0, false, "blank");
      Tile t58 = new Tile(0, 0, false, "blank");
      Tile t59 = new Tile(0, 0, false, "blank");
      Tile t60 = new Tile(0, 0, false, "blank");
      Tile t61 = new Tile(0, 0, false, "blank");
      Tile t62 = new Tile(0, 0, false, "blank");
      Tile t63 = new Tile(0, 0, false, "blank");
      Tile t64 = new Tile(0, 0, false, "blank");
      Tile t65 = new Tile(0, 0, false, "blank");
      Tile t66 = new Tile(0, 0, false, "blank");
      Tile t67 = new Tile(0, 0, false, "blank");
      Tile t68 = new Tile(0, 0, false, "blank");
      Tile t69 = new Tile(0, 0, false, "blank");
      Tile t70 = new Tile(0, 0, false, "blank");
      Tile t71 = new Tile(0, 0, false, "blank");
      Tile t72 = new Tile(0, 0, false, "blank");
      Tile t73 = new Tile(0, 0, false, "blank");
      Tile t74 = new Tile(0, 0, false, "blank");
      Tile t75 = new Tile(0, 0, false, "blank");
      Tile t76 = new Tile(0, 0, false, "blank");
      Tile t77 = new Tile(0, 0, false, "blank");
      Tile t78 = new Tile(0, 0, false, "blank");
      Tile t79 = new Tile(0, 0, false, "blank");
      Tile t80 = new Tile(0, 0, false, "blank");
      Tile t81 = new Tile(0, 0, false, "blank");
      Tile t82 = new Tile(0, 0, false, "blank");
      Tile t83 = new Tile(0, 0, false, "blank");
      Tile t84 = new Tile(0, 0, false, "blank");
      Tile t85 = new Tile(0, 0, false, "blank");
      Tile t86 = new Tile(0, 0, false, "blank");
      Tile t87 = new Tile(0, 0, false, "blank");
      Tile t88 = new Tile(0, 0, false, "blank");
      Tile t89 = new Tile(0, 0, false, "blank");
      Tile t90 = new Tile(0, 0, false, "blank");
      Tile t91 = new Tile(0, 0, false, "blank");
      Tile t92 = new Tile(0, 0, false, "blank");
      Tile t93 = new Tile(0, 0, false, "blank");
      Tile t94 = new Tile(0, 0, false, "blank");
      Tile t95 = new Tile(0, 0, false, "blank");
      Tile t96 = new Tile(0, 0, false, "blank");
      Tile t97 = new Tile(0, 0, false, "blank");
      Tile t98 = new Tile(0, 0, false, "blank");
      Tile t99 = new Tile(0, 0, false, "blank");
      Tile t100 = new Tile(0, 0, false, "blank");
 

      tiles[0][0] = t1; 
      tiles[0][1] = t2;
      tiles[0][2] = t3; 
      tiles[0][3] = t4;
      tiles[0][4] = t5; 
      tiles[0][5] = t6;
      tiles[0][6] = t7; 
      tiles[0][7] = t8;
      tiles[0][8] = t9; 
      tiles[0][9] = t10;
      tiles[1][0] = t11; 
      tiles[1][1] = t12;
      tiles[1][2] = t13; 
      tiles[1][3] = t14;
      tiles[1][4] = t15; 
      tiles[1][5] = t16;
      tiles[1][6] = t17; 
      tiles[1][7] = t18;
      tiles[1][8] = t19; 
      tiles[1][9] = t20;
      tiles[2][0] = t21; 
      tiles[2][1] = t22;
      tiles[2][2] = t23; 
      tiles[2][3] = t24;
      tiles[2][4] = t25; 
      tiles[2][5] = t26;
      tiles[2][6] = t27; 
      tiles[2][7] = t28;
      tiles[2][8] = t29; 
      tiles[2][9] = t30;
      tiles[3][0] = t31; 
      tiles[3][1] = t32;
      tiles[3][2] = t33; 
      tiles[3][3] = t34;
      tiles[3][4] = t35; 
      tiles[3][5] = t36;
      tiles[3][6] = t37; 
      tiles[3][7] = t38;
      tiles[3][8] = t39; 
      tiles[3][9] = t40;
      tiles[4][0] = t41; 
      tiles[4][1] = t42;
      tiles[4][2] = t43; 
      tiles[4][3] = t44;
      tiles[4][4] = t45; 
      tiles[4][5] = t46;
      tiles[4][6] = t47; 
      tiles[4][7] = t48;
      tiles[4][8] = t49; 
      tiles[4][9] = t50;
      tiles[5][0] = t51; 
      tiles[5][1] = t52;
      tiles[5][2] = t53; 
      tiles[5][3] = t54;
      tiles[5][4] = t55; 
      tiles[5][5] = t56;
      tiles[5][6] = t57; 
      tiles[5][7] = t58;
      tiles[5][8] = t59; 
      tiles[5][9] = t60;
      tiles[6][0] = t61; 
      tiles[6][1] = t62;
      tiles[6][2] = t63; 
      tiles[6][3] = t64;
      tiles[6][4] = t65; 
      tiles[6][5] = t66;
      tiles[6][6] = t67; 
      tiles[6][7] = t68;
      tiles[6][8] = t69; 
      tiles[6][9] = t70;
      tiles[7][0] = t71; 
      tiles[7][1] = t72;
      tiles[7][2] = t73; 
      tiles[7][3] = t74;
      tiles[7][4] = t75; 
      tiles[7][5] = t76;
      tiles[7][6] = t77; 
      tiles[7][7] = t78;
      tiles[7][8] = t79; 
      tiles[7][9] = t80;
      tiles[8][0] = t81; 
      tiles[8][1] = t82;
      tiles[8][2] = t83; 
      tiles[8][3] = t84;
      tiles[8][4] = t85; 
      tiles[8][5] = t86;
      tiles[8][6] = t87; 
      tiles[8][7] = t88;
      tiles[8][8] = t89; 
      tiles[8][9] = t90;
      tiles[9][0] = t91; 
      tiles[9][1] = t92;
      tiles[9][2] = t93; 
      tiles[9][3] = t94;
      tiles[9][4] = t95; 
      tiles[9][5] = t96;
      tiles[9][6] = t97; 
      tiles[9][7] = t98;
      tiles[9][8] = t99; 
      tiles[9][9] = t100;
      for(int i = 0; i < tiles.length; i++){
        for(int j = 0; j < tiles[0].length; j++){
          tiles[i][j].setX(j*60);
          tiles[i][j].setY(i*60);
          
          if((j == 1 && (i == 0 || (3 < i  && i < 8)))
          || (j == 8 && i == 9)
          || (j == 7 && (1 < i && i < 5))){
            tiles[i][j].setDir("down");
            tiles[i][j].setImage("upstraight.jpg");
          }
          
          if(j == 5 && i == 4){
           tiles[i][j].setDir("up");
           tiles[i][j].setImage("upstraight.jpg");
          }
          
          if((i == 1 && (1 < j && j < 7))
          || (i == 7 && j == 4)
          || (i == 8 && (j == 2 || (5 < j && j < 8)))){
            tiles[i][j].setDir("right");
            tiles[i][j].setImage("sidestraight.jpg");
            
          }
          if((i == 3 && (1 < j && j < 5))
          || (i == 5 && j == 6)){
            tiles[i][j].setDir("left");
            tiles[i][j].setImage("sidestraight.jpg");
          }
          
          if(((i == 1 || i == 8) && j == 1)
          || (i == 8 && j == 5)){
            tiles[i][j].setDir("downturningright");
            tiles[i][j].setImage("downrightcorner.jpg");
          }
          
          if((i == 1 && j == 7)
          || (i == 7 && j == 5)
          || (i == 8 && j == 8)){
            tiles[i][j].setDir("rightturningdown");
            tiles[i][j].setImage("upleftcorner.jpg");
            
          }
          
          if((i == 5 && j == 7)){
            tiles[i][j].setDir("downturningleft");
            tiles[i][j].setImage("downleftcorner.jpg"); 
          }
          
          if((i == 5 && j == 5)){
            tiles[i][j].setDir("leftturningup");
            tiles[i][j].setImage("downrightcorner.jpg");
          }
          
          if(i == 3 && j == 5){
            tiles[i][j].setDir("upturningleft");
            tiles[i][j].setImage("upleftcorner.jpg");
          }
          
          if(i == 3 && j == 1){
            tiles[i][j].setDir("leftturningdown");
            tiles[i][j].setImage("uprightcorner.jpg");
          }
           
          if(i == 8 && j == 3){
           tiles[i][j].setDir("leftturningup");
           tiles[i][j].setImage("downleftcorner.jpg"); 
          }
          
          if(i == 7 && j == 3){
            tiles[i][j].setDir("upturningright");
            tiles[i][j].setImage("uprightcorner.jpg"); 
          }
         
          
          

        }
      }
    }
    
    
    void draw(){
      background(255);
      /*for(int i = 0; i < tiles[0].length; i++){
         if(i != 1){
           tiles[0][i].setImage("notpath.jpg");
         }
         tiles[0][i].display(); 
      }
      for(int i = 0; i < tiles[0].length; i++){
         if(i != 1){
           tiles[1][i].setImage("notpath.jpg");
         }
         tiles[1][i].display(); 
      }*/
      for(int i = 0; i < tiles.length; i++){
        for(int j = 0; j < tiles[0].length; j++){
         tiles[i][j].display(); 
        }
      }
      r.display();
      r.move();
    }
  
  
 
