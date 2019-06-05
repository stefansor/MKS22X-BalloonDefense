ArrayList<Balloon> Balloons = new ArrayList<Balloon>(); 
int counter = 0; 

void bSetup() { 
   counter++;
   if (counter%10 == 0 && counter < 1010) { //spawn balloons at the start every 10 frames until there are 100
     float pick = random(10); 
     if (waves < 3) { //Only has RegularBalloons
       RegularBalloon b = new RegularBalloon(); 
       Balloons.add(b); 
     }
     else if (waves < 5) { 
       if (pick < 2) {
         BrownBalloon b = new BrownBalloon(); //20% chance of BrownBalloon
         Balloons.add(b); 
       }
       else {
         RegularBalloon b = new RegularBalloon(); 
         Balloons.add(b); 
       }
     }
     else if (waves < 10) { 
       if (pick < 4) {
         BrownBalloon b = new BrownBalloon(); //40% chance of BrownBalloon
         Balloons.add(b); 
       }
       else {
         RegularBalloon b = new RegularBalloon(); 
         Balloons.add(b); 
       }
     }
     else if (waves < 15) {  
       if (pick < 1.5) {
         IronBalloon b = new IronBalloon(); //15% chance of IronBalloons
         Balloons.add(b); 
       }
       else if (pick < 5) {
         BrownBalloon b = new BrownBalloon(); //35% chance of BrownBalloons
         Balloons.add(b); 
       }
       else {
         RegularBalloon b = new RegularBalloon(); 
         Balloons.add(b); 
       }
     }
     else if (waves < 21) { 
       if (pick < 2.5) {
         IronBalloon b = new IronBalloon(); //25% chanceof IronBalloons 
         Balloons.add(b); 
       }
       else if (pick < 6) {
         BrownBalloon b = new BrownBalloon(); //35% chance of BrownBalloons
         Balloons.add(b); 
       }
       else {
         RegularBalloon b = new RegularBalloon(); 
         Balloons.add(b); 
       }
     }
   }
}
