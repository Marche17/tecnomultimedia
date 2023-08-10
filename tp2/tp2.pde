//Video 
// https://youtu.be/PB7aKMn75fk
PImage EfectoVisual;
boolean descativarEfecto = true;

void setup () {
size(800,400);


}
void draw () {
EfectoVisual = loadImage("EfectoVisual.png");
image (EfectoVisual,0,0,400,400);

noStroke();
rectMode(CORNER);
fill(191,54,72);
rect(700,0,100,100);
rect(400,300,100,100);
fill(190,220,115);
rect(400,0,100,300);
rect(500,0,200,100);
fill(112,202,200);
rect(500,100,100,200);
rect(700,100,100,200);
rect(500,300,800,100);


stroke(255, 0, 0); 

for (int tamaño = 299; tamaño > 0; tamaño -= 10) {
fill(0, 0, 0, 0); 
rectMode(CENTER);
rect(650, 250, tamaño, tamaño);
}

noStroke();
rectMode(CORNER);
fill(190,220,115);
rect(600,100,100,200);

stroke(255, 0, 0); 

modulo();

noStroke();
fill(112,202,200);
rect(550,200,100,200);

stroke(255,0,0);
for (int x = 505; x <= 595; x += 5) {
    for (int y = 100; y <= 310; y += 10) {
      line(x, y, x, y + 10);
    }
  }

noStroke();
fill(112,202,200);
triangle(500,100,600,100,600,200);

stroke(255,0,0);
line(505,105,598,105);
line(510,110,598,110);
line(515,115,598,115);
line(520,120,598,120);
line(525,125,598,125);
line(530,130,598,130);
line(535,135,598,135);
line(540,140,598,140);
line(545,145,598,145);
line(550,150,598,150);
line(555,155,598,155);
line(560,160,598,160);
line(565,165,598,165);
line(570,170,598,170);
line(575,175,598,175);
line(580,180,598,180);
line(585,185,598,185);
line(590,190,598,190);
line(595,195,598,195);


if (descativarEfecto && movimientomouse(650, 250, 300, 300)) {
    for (int tamaño = 299; tamaño > 0; tamaño -= 15) {
      fill(0, 0, random(255));
      rect(650, 250, tamaño, tamaño);
    }
  }
  
  if (descativarEfecto && movimientomouse(550, 150, 300, 400)) {
    for (int tamaño = 299; tamaño > 0; tamaño -= 15) {
      fill(0, random(255), 0);
      rect(550, 150, tamaño, tamaño);
    }
  }
}

void modulo(){  for (int tamaño = 299; tamaño > 0; tamaño -= 10) {
fill(0, 0, 0, 0); 
rectMode(CENTER);
fill(190,220,115);
rect(550,150,tamaño,tamaño);
}}

void mouseClicked() {
  descativarEfecto = !descativarEfecto;
}

boolean movimientomouse(int x, int y, int x2, int y2) {
  return mouseX >= x - x2 / 2 && mouseX <= x + x2 / 2 && mouseY >= y - y2 / 2 && mouseY <= y + y2 / 2;
}
