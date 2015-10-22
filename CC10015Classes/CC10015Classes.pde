//Monster fred, ryan, lindsey, hayley, lilith;
Monster[] characters = new Monster [5];
//assigning the parts of the array 
/* I tried to assign each 'character' with a name, thinking that it was the right thing to do,
 but I realized that these names only exist because I called them in the parts of the draw function
 we were supposed to replace.
 characters[0] = fred;
 characters[1] = ryan;
 characters[2] = lindsey;
 characters[3] = hayley;
 characters[4] = lilith;
 */

/* make a class called Monster
 a "class" is a datatype that has data and functionality
 think of a class as a "blueprint" for objects"
 !your classes should begin with a capital letter! */

float wanderX;
float wanderY;

void setup() {
  background(200, 200, 255);
  size(800, 800);
  characters[0] = new Monster(100, 200, color(10, 100, 10), color(220, 180, 200), color(100, 200, 100));
  characters[1] = new Monster(-269, 170, color(69, 42, 200), color(42, 100, 69), color(13, 3, 7));
  characters[2] = new Monster(0, -100, color(100, 200, 200), color(255, 127, 0), color(255, 255, 69));
  characters[3] = new Monster(-200, 300, color(255, 0, 0), color(0, 255, 0), color(0, 0, 255));
  characters[4] = new Monster(350, 350, color(127, 0, 255), color(127), color(225, 255, 0));
  
  for (int i = 0; i < characters.length; i++) {
    characters[i].monsterBody(int(random(50, 300)), int(random(50, 300))); 
    //i'm trying to pass two random parameters both between 50~300
    characters[i].head(int(random(50, 200)), int(random(50, 200)));
    //characters[i].eyes(wanderX, wanderY);
  }
  
}

void draw() {
  wanderX = map(mouseX, 0, width, /*states the values that mouseX can be*/ -5, 5 /*remaps the mouseX between 0-width to -5 & 5*/); 
  wanderY = map(mouseY, 0, height, -5, 5);
  
  //isolated the eyes from setup to draw to track the mouse position
  for (int i = 0; i < characters.length; i++){
    characters[i].eyes(wanderX, wanderY);
  }
}