// I'm not a fan of my own monster sketch,
// so i took the "subject" part of my project 1
// and made it into a class
// if that's alright



Thing circa, ovus, rain, zebrus, cora, dobi;

void setup() {
  size(1280, 720);
}

void draw() {

  if (mousePressed == false) {
    background(0);
  }
  if (mousePressed == true) {
    background(255);
  }

  circa = new Thing(255, 0, 50);
  circa.strokeColor(#36FF6E);
  circa.subject(500, 200, 6, 6, 10, 10);

  ovus = new Thing(0, 0, 250);
  ovus.strokeColor(#A7FFE5);
  ovus.subject(0, 100, 8, 8, 2, 4);

  rain = new Thing(255, 255, 255);
  rain.strokeColor(#000000);
  rain.subject(0, 0, 40, 40, 11, 11);

  zebrus = new Thing(0, 0, 0);
  zebrus.strokeColor(#FFFFFF);
  zebrus.subject(0, 0, 10, 10, 2, 2);

  cora = new Thing(0, 255, 255);
  cora.strokeColor(#FFD21C);
  cora.subject(630, 200, 5, 5, 1, 1);

  dobi = new Thing(0, 255, 255);
  dobi.strokeColor(#FFFCF0);
  dobi.subject(500, 350, 5, 5, 4, 4);
}