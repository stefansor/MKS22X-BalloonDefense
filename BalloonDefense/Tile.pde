class Tile{
      private int x, w;
      private int y, h;
      private boolean towerable;
      private String direction;
      private PImage img; 
      
      Tile(int tw, int tl, boolean tower, String dir){
       x = tw;
       y = tl;
       h = 60;
       w = 60;
       towerable = tower;
       direction = dir;
       img = loadImage("notpath.jpg");
      }
      
      int getHeight(){
       return h; 
      }
      
      int getWidth(){
       return w;  
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
      
      int getX(){
       return x; 
      }
      void setX(int n){
        x = n;
      }
      
      int getY(){
       return y; 
      }
      void setY(int n){
        y = n;
      }
      void setImage(String m){
       img = loadImage(m);  
      }
      void display(){
        image(img, x, y, 60, 60);
        
      }
    }