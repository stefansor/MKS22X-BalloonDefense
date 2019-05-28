class Tile{
      private int x;
      private int y;
      private boolean towerable;
      private String direction;
      private PImage img; 
      ArrayList<Tools> weapons = new ArrayList<Tools>(); 
      
      Tile(int tw, int tl, boolean tower, String dir){
       x = tw;
       y = tl;
       towerable = tower;
       direction = dir;
       img = loadImage("notpath.jpg");
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
      
      void setTowerable(boolean s){
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
        for (Tools tool : weapons) {
          tool.display(); 
        }
      }
      
      void addTool(Tools t) {
        weapons.add(t); 
      }
      
      void remove(Tools t) {
        weapons.remove(t); 
      }
      
      ArrayList getList() {
        return weapons; 
      }
    }