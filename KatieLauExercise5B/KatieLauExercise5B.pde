Monster tim; //declares 4 Monster objects  
Monster tom;
Monster tam;
Monster tem; 

color grey = color(175);
color berry = color(178, 33, 84);
color green = color(147, 255, 156);
color white = color(255, 255, 255);

void setup(){
  size(800, 800);
  tim = new Monster(10, 300, .5); //Calls the constructor in Monster class
  tom = new Monster(300, 450, .8);
  tam = new Monster(350, 40, 1.2);
  tem = new Monster(100, 30, .5);
}


void draw(){
  tim.monstDraw(grey, berry, green); 
  tom.monstDraw(berry, green, white);
  tam.monstDraw(white, green, berry);
  tem.monstDraw(green, white, grey);
}