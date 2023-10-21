class Cigarra {
  constructor(x, y, velocidadX) {
    this.x = x;
    this.y = y;
    this.velocidadX = velocidadX;
  }

  mostrar() {
    image(ImagenCigarra, this.x, this.y, 150, 100);
  }

  mover() {
    this.x += this.velocidadX;

    if (this.x < 0 || this.x > width - 50) {
      this.velocidadX *= -1;
    }
  }
}
