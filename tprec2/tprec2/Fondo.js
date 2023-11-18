
class Fondo {
  constructor(imagen, posY, velocidadFondo, alturaImagenFondo, tiempoDuracion) {
    this.imagen = imagen;
    this.posY = posY;
    this.velocidadFondo = velocidadFondo;
    this.alturaImagenFondo = alturaImagenFondo;
    this.tiempoDuracion = tiempoDuracion;
    this.tiempoInicio = millis();
  }

  mostrar() {
    image(this.imagen, 0, this.posY, 400, this.alturaImagenFondo);

    if (millis() - this.tiempoInicio <= this.tiempoDuracion) {
      this.posY += this.velocidadFondo;
      if (this.posY > height) {
        this.posY = -this.alturaImagenFondo;
      }
    }
  }
}
