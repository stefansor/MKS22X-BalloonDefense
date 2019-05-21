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
      void setImage(PImage m){
       img = m;  
      }
      void display(){
        image(img, x, y, 100, 100);
        
      }
    }

class balloonDefense{
    private int mapwidth;
    private int maplength;    
    
    //preconditions: should both the length and width should be able to fit a whole number of 10 by 10 tiles 
    
    balloonDefense(int x, int y){
      mapwidth = x;
      maplength = y;
    }
      
 }
  
Tile[][] tiles = new Tile[10][10];
  
    void setup(){
      size(1000, 1000);
      Tile t = new Tile(0, 0, false, "up");
      tiles[0][0] = t; 
    }
    
    
    void draw(){
      background(255);
      tiles[0][0].display();
    }
  
  
 
