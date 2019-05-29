#Balloon Tower Defense

5/19/2019
- Vivien: I created the abstract class Balloon. Then, I started working on RegularBalloons. I was looking into how to move the balloons based on the color of the pixel in front of it, but found that I could only use get() with PImages. From what I found, I cannot check background/object color so I decided to determine when a balloon should turn based of location. Because the balloon's movement depends on location, I only made some general movements because I need to match the movements to a the map.  

5/20/2019
- Vivien: During class, Stefan and I (at Mr. K's suggestion) decided to change the map into a collection of tiles that have directions to make balloon movement easier. We talked more about the design and began to code. I focused on spawning the balloons so that they are appropriately spaced and moving in a general pattern. I also got the framework for move using the tiles. However, I wasn't able to complete move because we need to complete the tile design and write another method that allows the balloon to determine which tile it is on. Once we complete the map and move, we can move onto tack and finish our basic version.

5/21/2019
- Vivien: During the first half of class, Stefan and I talked about how we could set up the map and write a getTile to identify which tile the balloon is on. Then, I started to work on displaying coins and adding tools. I wrote the abstract class Tools and am in the process of writing Tack. I also experimented a little with Stefan's code. Tomorrow, we need to merge the tiles with master and make sure RegularBalloons works on the map. Oncce we confirm that, we can focus on completing the additional displays and Tack.   
- Stefan: At home I wrote getTile and finished the map design. I integrated some of Vivien's code to see how the balloon will start to interact with the tiles and if the getTile works. I also started to write the move function and will finish later tomorrow. 

5/23/2019
- Vivien: I worked on completing move so that it smoothly manuvers balloons around corners. I also tried to experiment and find ways to record the last tile to stop the balloon movement. Other than adding an if statement to move to stop balloons at the end, Balloons and RegularBalloons seem complete. 

5/24/2019
- Vivien: I fixed move so that the balloons pop when they reach the finish line. Then, I experimented with mouseClick(), mouseX and mouseY to figure out how to place the takcs on the map. I also experimented with printing text to show the information on the side. 
  
5/27/2019
- Vivien: First, I wrote methods to purchase and place tacks on the map. Then, I worked on making the balloons pop when they are in contact with the tack. Once I completed that, I made sure that the tacks lost lives as they popped balloons and disappeared once they lost all their lives. I also wrote the basic outlines of BlackBalloons(when popped, they generate 5 RegularBalloons) and IronBalloons(can only be exploded). Lastly, I completed the list of basic information on the side. 

5/28/2019
- Vivien: I fixed how livesLeft was change. Because I didn't remove a balloon from the list of balloons in the game when it reached the finish line, the balloon continued to move even though it was not displayed. This cause livesLeft to become a negative number. Afterwards, I wrote the bomb class. Then, I added to mouseClicked() to include when a bomb is purchased and placed. I am working on getting bombs to explode the balloons surrounding it.  
