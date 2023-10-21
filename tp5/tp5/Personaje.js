class Avion {
  constructor(x, y, width, height) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  }

  mostrar() {
    image(ImagenAvion, this.x, this.y, this.width, this.height);
  }

  moverIzquierda() {
    this.x = max(this.x - 10, 0);
  }

  moverDerecha() {
    this.x = min(this.x + 10, width - this.width);
  }
}

function keyPressed() {
  if (keyCode === LEFT_ARROW) {
    avion.moverIzquierda();
  } else if (keyCode === RIGHT_ARROW) {
    avion.moverDerecha();
  }
}
