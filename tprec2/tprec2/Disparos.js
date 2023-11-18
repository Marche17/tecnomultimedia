class Bala {
  constructor(x, y) {
    this.x = x;
    this.y = y;
    this.velocidad = 2;
    this.disparada = false;
  }
  
  mostrar() {

    image(ImagenComida, this.x-70, this.y, 150, 150);

  }

  mover() {
    this.y -= this.velocidad;
  }
}
