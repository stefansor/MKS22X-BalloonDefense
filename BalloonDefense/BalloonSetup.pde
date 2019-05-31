ArrayList<Balloon> Balloons = new ArrayList<Balloon>(); 
int counter = 0; 

void bSetup() {
   counter++; 
   if (counter%10 == 0 && counter < 1000) {
     float pick = random(10); 
     if (waves < 3) { //Only has RegularBalloons
       RegularBalloon b = new RegularBalloon(); 
       Balloons.add(b); 
     }
     else if (waves < 5) { //20% chance of BlackBalloon
       if (pick < 2) {
         BlackBalloon b = new BlackBalloon(); 
         Balloons.add(b); 
       }
       else {
         RegularBalloon b = new RegularBalloon(); 
         Balloons.add(b); 
       }
     }
     else if (waves < 10) { //40% chance of BlackBalloon
       if (pick < 4) {
         BlackBalloon b = new BlackBalloon(); 
         Balloons.add(b); 
       }
       else {
         RegularBalloon b = new RegularBalloon(); 
         Balloons.add(b); 
       }
     }
     else if (waves < 15) { //15% chance of IronBalloons and 35% chance of BlackBalloons
       if (pick < 1.5) {
         IronBalloon b = new IronBalloon(); 
         Balloons.add(b); 
       }
       else if (pick < 5) {
         BlackBalloon b = new BlackBalloon(); 
         Balloons.add(b); 
       }
       else {
         RegularBalloon b = new RegularBalloon(); 
         Balloons.add(b); 
       }
     }
     else if (waves < 21) { //25% chanceof IronBalloons and 35% chance of BlackBalloons
       if (pick < 2.5) {
         IronBalloon b = new IronBalloon(); 
         Balloons.add(b); 
       }
       else if (pick < 6) {
         BlackBalloon b = new BlackBalloon(); 
         Balloons.add(b); 
       }
       else {
         RegularBalloon b = new RegularBalloon(); 
         Balloons.add(b); 
       }
     }
   }

}
