function actualizarBala() {
  if (bala !== null && bala.disparada) {
    bala.y -= 2;
    if (bala.y < 0) {
     
      bala = null; 
    }
  }
}

function dibujarBala() {
  if (bala !== null && bala.disparada) {
    fill(200, 137, 0);
    rect(bala.x, bala.y, 6, 22);
  }
}

function keyPressed() {
  teclaPresionadaActiva = true;
}

function keyReleased() {
  teclaPresionadaActiva = false;
}

function presionarTecla() {
  if (teclaPresionadaActiva && keyCode == ENTER && bala === null) {
    bala = {
    x: posX + playerWidth / 2, 
    y: posY, 
  disparada: true,
};
}
}
