class Tile{
      private int x;
      private int y;
      private boolean towerable;
      private String direction;
      private PImage img; 
      private ArrayList<Tool> stuff;
      
      Tile(int tw, int tl, boolean tower, String dir){
       x = tw;
       y = tl;
       towerable = tower;
       direction = dir;
       img = loadImage("notpath.jpg");
       stuff = new ArrayList<Tool>();
      }
      
      void addTool(Tool t){
        stuff.add(t);
      }
      
      Tool getTool(int n){
       return stuff.get(n);
      }
      
      void removeTool(int n){
       stuff.remove(n);  
      }
      
      int stuffLength(){
       return stuff.size(); 
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
