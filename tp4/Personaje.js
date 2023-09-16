function moverPersonaje() {
  if (teclaPresionadaActiva) {
    if (keyCode == RIGHT_ARROW) {
      posX += 5;
    } else if (keyCode == LEFT_ARROW) {
      posX -= 5;
    }
  }
}
function dibujarPersonaje() {
  fill(0);
  image(ImagenFondo,0,fondoY,400,1400);
  let anchoBarraActual = map(tiempoTranscurrido, 0, duracionBarra, anchoBarraInicial, 0);
  fondoY += velocidadFondo;
  fill(160, 147, 147); 
  rect(150, 370, 110, 15);
  fill(232, 232, 0);
  rect(posXBarra, posYBarra, anchoBarraActual, 15);
  image(ImagenAvion, posX, posY, playerWidth, playerHeight);
  fill(232,232,0);
  textSize(14);
  text(+ puntos, 195, 365);
    
  
 
}
