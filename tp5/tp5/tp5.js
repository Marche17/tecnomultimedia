//https://www.youtube.com/watch?v=r0aH3tXaM1Q

let ImagenAvion;
let ImagenCigarra;
let ImagenComida;
let Imagenanaste;
let fondoY = -1000;
let velocidadFondo = 1;
let alturaImagenFondo = 1400;
let tiempoDuracion = 10000;
let fondo
let playerWidth = 190;
let playerHeight = 190;
let avion;
let cigarras = [];
let balas = [];
let estadoJuego = "portada";

function setup() {
createCanvas(400, 400);
ImagenFondo = loadImage("img/Fondo.png");
ImagenAvion = loadImage("img/Avion.png");
ImagenCigarra = loadImage("img/Cigarra.png");
ImagenComida = loadImage("img/Comida.png");
ImagenPortada = loadImage("img/Portada.png");
ImagenGanaste = loadImage("img/Ganaste.png");
tiempoInicio = millis();
fondo = new Fondo(ImagenFondo, -1000, 1, 1400, 10000);
avion = new Avion(200, 270, playerWidth, playerHeight);

  for (let i = 0; i < 5; i++) {
    let x = random(0, width - 50); 
    let y = random(10, 250); 
    cigarras.push(new Cigarra(x, y, 1)); 
  }
}

function draw() {
  background(0);
  fondo.mostrar();
  avion.mostrar();

  if (keyIsDown(LEFT_ARROW)) {
    avion.moverIzquierda();
  } else if (keyIsDown(RIGHT_ARROW)) {
    avion.moverDerecha();
  }
  for (let bala of balas) {
    if (bala.disparada) {
      bala.mover();
      bala.mostrar();

      if (bala.y < 0) {
        balas.splice(balas.indexOf(bala), 1);
      }

      for (let cigarra of cigarras) {
        if (
          bala.x > cigarra.x &&
          bala.x < cigarra.x + 60 && 
          bala.y > cigarra.y &&
          bala.y < cigarra.y + 60 
        ) {        
          cigarras.splice(cigarras.indexOf(cigarra), 1);
          balas.splice(balas.indexOf(bala), 1);         
        }
      }
    }
  }
  
  for (let cigarra of cigarras) {
    cigarra.mover();
    cigarra.mostrar();
  }
}
function keyPressed() {
  if (keyCode === ENTER) {
    let nuevaBala = new Bala(avion.x + avion.width / 2, avion.y);
    nuevaBala.disparada = true;
    balas.push(nuevaBala);
  }
}
