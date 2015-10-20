Monster al, bob, cedric, dan, ed;

void setup(){
  size(800,800);
  background(255);
  al = new Monster(400, 200);
  bob = new Monster(100, 200);
  cedric = new Monster(300, 600);
  dan = new Monster(600, 100);
  ed = new Monster(600, 500);
}

void draw(){
  background(255);
  al.display();
  bob.display();
  cedric.display();
  dan.display();
  ed.display();
}