void dibujarBoton(String forma, float x, float y, float tam, int siguiente, String textoAMostrar) {
  push();

  if (forma == "circulo") {
    circle(x, y, tam);
    text(textoAMostrar, x, y);
    if (mousePressed && on) {
      if (dist(mouseX, mouseY, x, y) < tam / 2) {
        pantalla = siguiente;
        on = false;
      }
    }
  } else if (forma == "cuadrado") {
    square(x, y, tam);
    text(textoAMostrar, x, y);
    if (mousePressed && on) {
      if (mouseX > x -tam/2
        && mouseX < x + tam/2
        && mouseY > y - tam/2
        && mouseY < y + tam/2) {
        pantalla = siguiente;
        on = false;
      }
    }
  }
  pop();
}
