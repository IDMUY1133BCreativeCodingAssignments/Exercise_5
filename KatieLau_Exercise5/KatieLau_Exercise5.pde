/*

Finish transitioning the previous script where we created different functions,
to methods for the class. Then, by passing different parameters to the class constuctor
and the methods, make each object/instance of the object, be unique from the others.
Make at least 5 different monsters.
Take it further: use an array to store them, get some of them to move on input, etc.

THEN:
Take one of your former sketches (Exercise 1 is a good one) and translate it into classes.
Make multiple and different monsters. Add functionality to them (and your code!)

*/

color grey = color(175);
color berry = color(178, 33, 84);
color green = color(147, 255, 156);
color white = color(255, 255, 255);

int dance;
int dance2;
int move;

Monster[] monsters = new Monster[5]; //declares Monster object array
void setup(){
  background(247, 204, 242);
  size(800, 800);
  monsters[0] = new Monster(50, 50, berry, green, grey); //creates new objects and populates the array with those objects
  monsters[1] = new Monster(100, 100, green, berry, grey);
  monsters[2] = new Monster(20, 200, white, green, berry);
  monsters[3] = new Monster(30, 600, white, grey, berry);
  monsters[4] = new Monster(700, 350, grey, berry, white);
  
  dance = int(random(0, 5)); //determines which monster(s) move or dance during runtime
  dance2 = int(random(0, 5)); 
  while(dance2 == dance){
    dance2 = int(random(0,5)); //makes sure 2 separate monsters dance
  }
  move = int(random(0, 5));
  while(move == dance || move == dance2){
      move = int(random(0, 5)); //ensures that monster controlled by keyboard aren't the dancing monsters
  }
}


void draw(){
   background(247, 204, 242);
  monsters[0].monsterBody(100, 200, 500); //calls methods for each monster 
  //would've used a for loop but there are different set parameters for monsterBody and the head 
  monsters[0].update();
  monsters[0].head(100, 80, 500);
  
  monsters[1].monsterBody(200, 300, 800);
  monsters[1].update();
  monsters[1].head(200, 160, 800);
  
 monsters[2].monsterBody(100, 80, 300);
  monsters[2].update();
  monsters[2].head(50, 200, 300);
  
  monsters[3].monsterBody(100, 100, 100);
  monsters[3].update();
  monsters[3].head(80, 200, 100);
  
  monsters[4].monsterBody(80, 200, 20);
  monsters[4].update();
  monsters[4].head(30, 100, 20);
    
  monsters[dance].dance(int(random(0, 5))); //selects the monsters to dance and move
  monsters[dance2].dance(int(random(0, 15)));
  monsters[move].move();
  }