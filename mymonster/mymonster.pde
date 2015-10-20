Monster[] monsters=new Monster[5];
float xpos=0;

void setup() {
  size(1500, 600); //Canvas size
  background(247, 234, 210);//background color-- bg(R,G,B)
  smooth(4);
  strokeWeight(2);

  for (int i=0; i<monsters.length; i++) {
    monsters[i]=new Monster(xpos, color(random(255), random(255), random(255)), color(random(255), random(255), random(255)), color(random(255), random(255), random(255)), color(random(255), random(255), random(255)), random(150, 250), random(50, 125));
    xpos=xpos+250;
  }
}

void draw() {
  for (int i=0; i<monsters.length; i++) {
    monsters[i].body();
    monsters[i].face();
  }
}