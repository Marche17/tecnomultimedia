//https://youtu.be/nZ67in9e1IQ


let posX = 155;
let posY = 280;
let playerWidth = 100;
let playerHeight = 100;
let teclaPresionadaActiva = false;
let bala = null;
let ImagenAvion;
let ImagenFondo;
let ImagenBarraNafta;
let ImagenBarco;
let ImagenCreditos;
let ImagenPortada;
let ImagenHelicoptero;
let ImagenNafta;
let fondoY = -1000;
let velocidadFondo = 1;
let alturaImagenFondo = 1400;
let estadoJuego = "portada";
let botonJugarX = 50;
let botonJugarY = 134;
let botonJugarAncho = 290;
let botonJugarAlto = 30;
let enemigos = [];
let puntos = 0;
let duracionBarra = 100;
let tiempoTranscurrido = 1;
let posXBarra = 150;
let posYBarra = 370;
let anchoBarraInicial = 110;

function setup() {
  createCanvas(400, 400);
  ImagenFondo = loadImage("img/FondoJuego.jpeg");
  ImagenAvion = loadImage("img/Avion.png");
  ImagenBarraNafta = loadImage("img/BarraNafta.png");
  ImagenBarco = loadImage("img/Barco.png");
  ImagenPortada = loadImage("img/Portada.png");
  ImagenCreditos = loadImage("img/Creditos.png");
  ImagenHelicoptero = loadImage("img/Helicoptero.png");
  ImagenNafta = loadImage("img/Nafta.png");
  

  for (let i = 0; i < 6; i++) {
    let enemigo = {
      x: random(0, 400),
      y: random(0, 250),
      velocidadX: random(1, 3),
      tipo: "helicoptero",
    };
    enemigos.push(enemigo);
  }

  for (let i = 0; i < 3; i++) {
    let barco = {
      x: random(100, 200),
      y: random(0, 250),
      tipo: "barco",
    };
    enemigos.push(barco);
fill(160, 147, 147); 
  rect(150, 370, 110, 15);  
}
}

function draw() {
  background(200);

  if (estadoJuego === "portada") {
    image(ImagenPortada, 0, 0, width, height);
    if (mouseIsPressed) {
      if (
        mouseX > botonJugarX &&
        mouseX < botonJugarX + botonJugarAncho &&
        mouseY > botonJugarY &&
        mouseY < botonJugarY + botonJugarAlto
      ) {
        estadoJuego = "juego";
      } else if (
        mouseX > 60 &&
        mouseX < 335 &&
        mouseY > 184 &&
        mouseY < 214
      ) {
        estadoJuego = "creditos";
      }
    }
  } else if (estadoJuego === "juego") {
    moverPersonaje();
    actualizarBala();
    dibujarPersonaje();
    dibujarBala();
    presionarTecla();

    fondoY += velocidadFondo;

    if (fondoY > 0) {
      fondoY = 0;
    } else if (fondoY < height - alturaImagenFondo) {
      fondoY = height - alturaImagenFondo;
    }

    for (let i = enemigos.length - 1; i >= 0; i--) {
      if (
        bala !== null &&
        bala.disparada &&
        bala.x > enemigos[i].x &&
        bala.x < enemigos[i].x + 70 &&
        bala.y > enemigos[i].y &&
        bala.y < enemigos[i].y + 70
      ) {
        enemigos.splice(i, 1);
        bala = null;
        puntos += 100;
      }
    }

    for (let i = 0; i < enemigos.length; i++) {
      if (enemigos[i].tipo === "helicoptero") {
        enemigos[i].x += enemigos[i].velocidadX;
        if (enemigos[i].x < 0 || enemigos[i].x > 400) {
          enemigos[i].velocidadX *= -1;
          enemigos[i].y += 8;
        }
       image(ImagenHelicoptero, enemigos[i].x, enemigos[i].y, 70, 70);
      } else if (enemigos[i].tipo === "barco") {        
        let velocidadBarco = velocidadFondo;
        enemigos[i].y += velocidadBarco;     
        image(ImagenBarco, enemigos[i].x, enemigos[i].y, 90, 90);
    image(ImagenBarraNafta,0,355,400,45); 
    }
    }
  } else if (estadoJuego === "creditos") {
    image(ImagenCreditos, 0, 0, width, height);
    if (mouseIsPressed) {
      estadoJuego = "portada";
    }
  }
  if (posX >= 200 && posX <= 300) {
    tiempoTranscurrido += 0.3;
  }
  if (fondoY > height) {
    fondoY = 0;
  }
}
