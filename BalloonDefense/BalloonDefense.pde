class balloonDefense{
    private int mapwidth;
    private int maplength;
    
    balloonDefense(int x, int y){
      mapwidth = x;
      maplength = y;
    }
    class tile{
      private int tw;
      private int tl;
      private boolean towerable;
      private String direction;
      
      tile(int x, int y, boolean tower, String dir){
       tw = x;
       tl = y;
       towerable = tower;
       direction = dir;
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
      
      
      
      
    }
  
    void map(){
       //construct 100 tiles and use for loop with mutator methods 
    }
  
    void setup(){
      size(1000, 1000);
      balloonDefense a = new balloonDefense
    }
    
    
    void draw(){
      background(255);
      map();
      
      
      
    }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}