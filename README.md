# Balloon Tower Defense

## Project Description
The mission is to defend the tower from the incoming waves of balloons. Each wave, one hundred balloons of varying strengths will travel along a path. To keep the tower safe, you must purchase and place tools to pop these balloons before they reach the end of the path. For each balloon you pop, you will receive two dollars, and for each wave you survive, you will receive two hundred and fifty dollars. If one hundred balloons reach the end of the path and breach the tower, the game will end.

###### Types of Balloons
- Red Balloons: Have 1 life and can be popped using tacks, bombs or bullets.
- Brown Balloons: Have 2 lives and can be popped by tacks, bombs or bullets.
  - When  Brown Balloons are popped, they spawn 5 Red Balloons
- Iron Balloons: Have 1 life and can only be popped by bombs
  - When Iron Balloons are popped, they spawn a Brown Balloon.

###### Types of Tools
- Tacks:  Can be used to get rid of 5 lives
- Bombs: Can be used to get rid of 1 life of all balloons surrounding it
- Catapult: Shoots bullets that get rid of 1 life of each balloon in its path.

## Directions
Prevent the balloons from reaching the end of the path by buying tools to pop them! Select a tool by clicking on the image of the tool on the side panel. Then, click where you would like to place it on the map to purchase it. For catapults, click a second time to indicate which the direction the catapult will shoot. Tacks and bombs must be placed on the path. Catapults must be placed along the path.  

## Logs
5/19/2019
- Vivien: I created the abstract class Balloon. Then, I started working on RegularBalloons. I was looking into how to move the balloons based on the color of the pixel in front of it, but found that I could only use get() with PImages. From what I found, I cannot check background/object color so I decided to determine when a balloon should turn based of location. Because the balloon's movement depends on location, I only made some general movements because I need to match the movements to a the map.  

5/20/2019
- Vivien: During class, Stefan and I (at Mr. K's suggestion) decided to change the map into a collection of tiles that have directions to make balloon movement easier. We talked more about the design and began to code. I focused on spawning the balloons so that they are appropriately spaced and moving in a general pattern. I also got the framework for move using the tiles. However, I wasn't able to complete move because we need to complete the tile design and write another method that allows the balloon to determine which tile it is on. Once we complete the map and move, we can move onto tack and finish our basic version.

5/21/2019
- Vivien: During the first half of class, Stefan and I talked about how we could set up the map and write a getTile to identify which tile the balloon is on. Then, I started to work on displaying coins and adding tools. I wrote the abstract class Tools and am in the process of writing Tack. I also experimented a little with Stefan's code. Tomorrow, we need to merge the tiles with master and make sure RegularBalloons works on the map. Oncce we confirm that, we can focus on completing the additional displays and Tack.   
- Stefan: At home I wrote getTile and finished the map design. I integrated some of Vivien's code to see how the balloon will start to interact with the tiles and if the getTile works. I also started to write the move function and will finish later tomorrow.

5/23/2019
- Vivien: I worked on completing move so that it smoothly manuvers balloons around corners. I also tried to experiment and find ways to record the last tile to stop the balloon movement. Other than adding an if statement to move to stop balloons at the end, Balloons and RegularBalloons seem complete.
- Stefan: I worked on generating the tacks to see if they could be placed on the path exclusively. I used some triangle to create a small tack like object that we latter will replace with an image.

5/24/2019
- Vivien: I fixed move so that the balloons pop when they reach the finish line. Then, I experimented with mouseClick(), mouseX and mouseY to figure out how to place the tacks on the map. I also experimented with printing text to show the information on the side.

5/27/2019
- Vivien: First, I wrote methods to purchase and place tacks on the map. Then, I worked on making the balloons pop when they are in contact with the tack. Once I completed that, I made sure that the tacks lost lives as they popped balloons and disappeared once they lost all their lives. I also wrote the basic outlines of BlackBalloons(when popped, they generate 5 RegularBalloons) and IronBalloons(can only be exploded). Lastly, I completed the list of basic information on the side.

5/28/2019
- Vivien: I fixed how livesLeft was change. Because I didn't remove a balloon from the list of balloons in the game when it reached the finish line, the balloon continued to move even though it was not displayed. This cause livesLeft to become a negative number. Afterwards, I wrote the bomb class. Then, I added to mouseClicked() to include when a bomb is purchased and placed. I am working on getting bombs to explode the balloons surrounding it.  
- Stefan: I worked on the catapult and bullet class. I tried to get the catapult to shoot a bullet but it doesn't seem to visually move outside the image of just the catapult. I merged to master and rearranged the text and tool generater to have both the bomb and catapult in the store section. The map, upon merging, for some reason is moved up and to the right screwing with the visualization of the tiles but not their paths apparently. I will try to fix this later in school.

5/29/19
- Stefan: I fixed the shift in the infoset function. Now the correct tool gets selected when pressed on its corresponding image. I also fixed the bug where if the tool would only be instantiate in areas that weren't part of the map. I added the changeisC() and isCatapult to tools. I deleted the imageMode(Center) from the display for catapult and bullet to prevent the rest of the map getting shifted as well.

5/30/2019
- Vivien: First, I changed BlackBalloon to BrownBalloon. I added to BrownBalloon's popping so that the number of balloons left in a round changes as well. Then, I added waves. For each wave, different percentages of each balloon can be generated. Lastly, I added 2 different messages for when the player loses and when the player completes the game (20 waves).  

6/2/2019
- Vivien: I changed popping so that only RegularBalloons and BrownBalloons can be popped. I also changed how bombs are exploded. Instead of exploding the surrounding Balloons in the ArrayList, bombs now explode balloons based on distance. To make the game more interesting, I changed IronBalloons so that when they explode, they spawn a BrownBalloon. For BrownBalloons, I changed how they pop. When they pop, they spawn 5 RegularBalloons that are slightly apart so that they can be seen. Lastly, I created and implemented a new font for the side panel.  
- Stefan: I fixed the counter for the balloons and adjusted the infoset to have the balloons increase the amount of coins when they die and decrease the lives appropriately. There was a bug in the balloon array that caused the game to end prematurely that I fixed. With the new font, after a catapult is placed there is some kind of frame shift that muddles the counter for the amount of lives and coins. There is a bug where some balloons are not removed or killed correctly and the amount of lives for the player continually decreases around 9 waves in without any balloons reaching the end.

6/3/2019
- Stefan: I changed the catapult to shoot only forward and removed its rotation as it was causing more problems. I also fixed the bounds for the selection of a tool to make it easier. Previously, you had to hit the direct center of the image essentially to select the tool. I also added shot() to balloons which like, popping, checks if the balloon is currently being shot by any bullet on the screen.

6/4/2019
- Vivien: I tried to find why the information on the side panel was overlapping. ALthough I was not able to figure out why the problem was occuring, Stefan did. Then, I worked on adding to the side panel.  
