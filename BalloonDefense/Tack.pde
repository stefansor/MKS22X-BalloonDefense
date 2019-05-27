class Tack extends Tool{
    private int x,y,lives;
    
    
    Tack(int posx, int posy){
      x = posx;
      y = posy;
      lives = 10; 
    }
    
    void loseLife(){
     lives--; 
    }
    
    int getLives(){
     return lives; 
    }
    
    void display(){
      fill(255, 153, 0);
      if(lives > 0){
        triangle(x, y, x + 2, y + 1, x + 2, y + 2);
        triangle(x - 4, y + 4, x - 5, y + 3, x - 2, y + 7);
        triangle( x + 7, y + 1, x + 8, y + 2, x + 4, y + 4);
        triangle(x + 1, y + 9, x + 4, y + 7, x + 5, y + 9);
      }
    }
  
  
  
  
  
}
