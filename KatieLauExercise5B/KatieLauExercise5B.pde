color grey = color(175);
color berry = color(178, 33, 84);
color green = color(147, 255, 156);
color white = color(255, 255, 255);

color[] colors = {grey, berry, green, white}; //array of colors for mousePressed 
Monster[] monsters = new Monster[4]; //creates array of Monster objects


void setup() {
  frameRate(10); //lessened frameRate
  size(800, 800);
  monsters[0] = new Monster(10, 300, .5); //creates each Monster object -> calls constructor in Monster class
  monsters[1] = new Monster(300, 450, .8);
  monsters[2] = new Monster(350, 40, 1.2);
  monsters[3] = new Monster(100, 30, .5);
}


void draw() {
  background(0);
  monsters[0].monstDraw(grey, berry, green, false, true); //draws the monster, provides color parameters and 
  //also gives boolean paremeters to determine if mouth opens or eyes widen 
  monsters[1].monstDraw(berry, green, white, true, false);
  monsters[2].monstDraw(white, green, berry, false, true);
  monsters[3].monstDraw(green, white, grey, true, false);
  if (mousePressed) {
    monsters[0].monstDraw(colors[int(random(0, 4))], colors[int(random(0, 4))], colors[int(random(0, 4))], false, true);
    monsters[1].monstDraw(colors[int(random(0, 4))], colors[int(random(0, 4))], colors[int(random(0, 4))], true, false);
    monsters[2].monstDraw(white, green, berry, true, true);
    monsters[3].monstDraw(colors[int(random(0, 4))], colors[int(random(0, 4))], colors[int(random(0, 4))], true, false);
  }
}