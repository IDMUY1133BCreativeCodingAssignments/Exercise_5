Monster[] monsters;
void setup() {
  background(255);
  size(800, 800);
  monsters = new Monster[5];
  
  monsters[0] = new Monster(-200,-110, color(255,0,0), color (100,0,0), color (0,0,0));
  monsters[1] = new Monster(100,300, color(10, 30, 135), color(100, 255, 255), color(0, 0, 180));
  monsters[2] = new Monster(-10, -100, color(100, 30, 100), color(100, 25, 255), color(0, 110, 180));
  monsters[3] = new Monster(200,-180, color(70, 30, 195), color(20, 255, 25), color(0, 200, 180));
  monsters[4] = new Monster(-100,200, color(10, 30, 235), color(100, 155, 255), color(40, 40, 180));
}

void draw(){
    background(255);
    for(int i = 0; i < monsters.length; i++){
        monsters[i].update();
    }
    monsters[4].colorreddit();
    monsters[3].recolor();
    monsters[2].colordude();
    monsters[1].colorinstuff();
    monsters[0].colormeimpressed();
}