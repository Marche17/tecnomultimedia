//https://youtu.be/gKF2CBcVUcM
int pantalla = 0;
boolean on;
PImage imagenes[];
String texto[];
String textosPantallaUno[];
void setup() {
  size(600, 600);
  rectMode(CENTER);

  imagenes = new PImage[15];

  for (int i = 0; i <15; i++) {
    imagenes[i] = loadImage(i+".jpg");
    imagenes[i].resize(width, height);
  }

  texto = loadStrings("texto.txt");

  textSize(28);
}
void draw() {

  Pantallas();
}
void Pantallas() {

  image(imagenes[pantalla], 0, 0);
  text(texto[pantalla], 50, 50);

  if (pantalla == 0) {
    fill(255, 0, 0);
    dibujarBoton("cuadrado", 300, 550, 60, 1, "A");
  } else if (pantalla == 1) {
    dibujarBoton("cuadrado", 300, 550, 60, 2, "A");
  } else if (pantalla == 2) {
    dibujarBoton("cuadrado", 300, 550, 60, 3, "A");
  } else if (pantalla == 3) {
    fill(255, 0, 0);
    dibujarBoton("cuadrado", 200, 550, 60, 4, "A");
    fill(0, 255, 0);
    dibujarBoton("cuadrado", 400, 550, 60, 11, "B");
    fill(255, 0, 0);
  } else if (pantalla == 4) {
    fill(255, 0, 0);
    dibujarBoton("cuadrado", 200, 550, 60, 5, "A");
    fill(0, 255, 0);
    dibujarBoton("cuadrado", 400, 550, 60, 9, "C");
    fill(255, 0, 0);
  } else if (pantalla == 5) {
    fill(255, 0, 0);
    dibujarBoton("cuadrado", 300, 550, 60, 6, "A");
  } else if (pantalla == 6) {
    fill(255, 0, 0);

    dibujarBoton("cuadrado", 300, 550, 60, 7, "A");
  } else if (pantalla == 7) {
    fill(255, 0, 0);
    dibujarBoton("cuadrado", 300, 550, 60, 8, "A");
  } else if (pantalla == 8) {
    fill(255, 0, 0);
    dibujarBoton("circulo", 300, 550, 60, 14, "F");
  } else if (pantalla == 9) {
    fill(255, 0, 0);
    dibujarBoton("cuadrado", 300, 550, 60, 10, "C");
  } else if (pantalla == 10) {
    fill(255, 0, 0);
    dibujarBoton("circulo", 300, 550, 60, 14, "F");
  } else if (pantalla == 11) {
    fill(255, 0, 0);
    dibujarBoton("cuadrado", 300, 550, 60, 12, "B");
  } else if (pantalla == 12) {
    fill(255, 0, 0);
    dibujarBoton("cuadrado", 300, 550, 60, 13, "B");
  } else if (pantalla == 13) {
    fill(255, 0, 0);
    dibujarBoton("circulo", 300, 550, 60, 14, "F");
  } else if (pantalla == 14) {
    fill(255, 0, 0);
    dibujarBoton("cuadrado", 300, 550, 60, 1, "A");
    fill(255, 0, 0);
    for (int j = 0; j < texto.length; j++) {
      texto[j] = texto[j].replaceAll("\\\\n", "\n");
    }
  }
}
void mouseMoved() {
  on = true;
}
