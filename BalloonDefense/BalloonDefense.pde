class Tile{
      private int x;
      private int y;
      private boolean towerable;
      private String direction;
      private PImage img; 
      
      Tile(int tw, int tl, boolean tower, String dir){
       x = tw;
       y = tl;
       towerable = tower;
       direction = dir;
       img = loadImage("upstraight.jpg");
      }
      
      String getDir(){
       return direction; 
      }
      
      void setDir(String d){
       direction = d;
      }
      
      boolean isTowerbale(){
       return towerable; 
      }
      
      void setTowerbale(boolean s){
       towerable = s;
      }
      
      int getWidth(){
       return x; 
      }
      
      int getLength(){
       return y; 
      }
      void setImage(String m){
       img = loadImage(m);  
      }
      void display(){
        image(img, x, y, 60, 60);
        
      }
    }

class balloonDefense{
    private int mapwidth;
    private int maplength;    
        
    balloonDefense(int x, int y){
      mapwidth = x;
      maplength = y;
    }
      
 }
  
Tile[][] tiles = new Tile[10][10];
  
    void setup(){
      size(750, 600);
      Tile t1 = new Tile(0, 0, false, "blank");
      Tile t2 = new Tile(60, 0, false, "up");
      Tile t3 = new Tile(120, 0, false, "blank");
      Tile t4 = new Tile(180, 0, false, "blank");
      Tile t5 = new Tile(240, 0, false, "blank");
      Tile t6 = new Tile(300, 0, false, "blank");
      Tile t7 = new Tile(360, 0, false, "blank");
      Tile t8 = new Tile(420, 0, false, "blank");
      Tile t9 = new Tile(480, 0, false, "blank");
      Tile t10 = new Tile(540, 0, false, "blank");
      Tile t11 = new Tile(0, 60, false, "blank");
      Tile t12 = new Tile(60, 60, false, "up");
      Tile t13 = new Tile(120, 60, false, "blank");
      Tile t14 = new Tile(180, 60, false, "blank");
      Tile t15 = new Tile(240, 60, false, "blank");
      Tile t16 = new Tile(300, 60, false, "blank");
      Tile t17 = new Tile(360, 60, false, "blank");
      Tile t18 = new Tile(420, 60, false, "blank");
      Tile t19 = new Tile(480, 60, false, "blank");
      Tile t20 = new Tile(540, 60, false, "blank");
      /*
      Tile t21 = new Tile(0, 0, false, "up");
      Tile t22 = new Tile(0, 0, false, "up");
      Tile t23 = new Tile(0, 0, false, "up");
      Tile t24 = new Tile(0, 0, false, "up");
      Tile t25 = new Tile(0, 0, false, "up");
      Tile t26 = new Tile(0, 0, false, "up");
      Tile t27 = new Tile(0, 0, false, "up");
      Tile t28 = new Tile(0, 0, false, "up");
      Tile t29 = new Tile(0, 0, false, "up");
      Tile t30 = new Tile(0, 0, false, "up");
      Tile t31 = new Tile(0, 0, false, "up");
      Tile t32 = new Tile(0, 0, false, "up");*/

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
    }
    
    
    void draw(){
      background(255);
      for(int i = 0; i < tiles[0].length; i++){
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
      }
    }
  
  
 
