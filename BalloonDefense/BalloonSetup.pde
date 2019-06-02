ArrayList<Balloon> Balloons = new ArrayList<Balloon>(); 
int counter = 0; 

void bSetup() { 
   counter++;
   if (counter%10 == 0 && counter < 1010) {
     float pick = random(10); 
     if (waves < 3) { //Only has RegularBalloons
       RegularBalloon b = new RegularBalloon(); 
       Balloons.add(b); 
     }
     else if (waves < 5) { //20% chance of BrownBalloon
       if (pick < 2) {
         BrownBalloon b = new BrownBalloon(); 
         Balloons.add(b); 
       }
       else {
         RegularBalloon b = new RegularBalloon(); 
         Balloons.add(b); 
       }
     }
     else if (waves < 10) { //40% chance of BrownBalloon
       if (pick < 4) {
         BrownBalloon b = new BrownBalloon(); 
         Balloons.add(b); 
       }
       else {
         RegularBalloon b = new RegularBalloon(); 
         Balloons.add(b); 
       }
     }
     else if (waves < 15) { //15% chance of IronBalloons and 35% chance of BrownBalloons
       if (pick < 1.5) {
         IronBalloon b = new IronBalloon(); 
         Balloons.add(b); 
       }
       else if (pick < 5) {
         BrownBalloon b = new BrownBalloon(); 
         Balloons.add(b); 
       }
       else {
         RegularBalloon b = new RegularBalloon(); 
         Balloons.add(b); 
       }
     }
     else if (waves < 21) { //25% chanceof IronBalloons and 35% chance of BrownBalloons
       if (pick < 2.5) {
         IronBalloon b = new IronBalloon(); 
         Balloons.add(b); 
       }
       else if (pick < 6) {
         BrownBalloon b = new BrownBalloon(); 
         Balloons.add(b); 
       }
       else {
         RegularBalloon b = new RegularBalloon(); 
         Balloons.add(b); 
       }
     }
   }
}
