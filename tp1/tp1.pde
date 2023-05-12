PImage submarino, submarino2, submarino3,Boton5;
PFont fuenteNueva ;
int pantalla= 0;
int segunda;
int contador= 0;
float X;
float Y;
float X2;
float Y2;
int BotonX= 480;
int BotonY= 380;
int BotonXtamaño=140;
int BotonYtamaño=80;
color ColorBoton;
color ColorBoton2;
color ColorBotonTexto;
color ColorBotonTexto2;
Boolean Botonn=false; 


void setup (){
  size (640,480);
  textSize(40);
  pantalla = 0;
  fuenteNueva = loadFont("Gabriola.vlw");
  Y = -50;
  X = -200;
  Y2 = 0;
  X2 = 0;
  ColorBoton=255;
  ColorBoton2=0;
  ColorBotonTexto=0;
  ColorBotonTexto2=0;
}
  
void draw() {

  //PRIMERA//
  switch (pantalla) {
  case 0:
  submarino = loadImage("submarino.jpg");
  image(submarino,0,0,640,480);
  Y += 5;
  if (Y > 202)
  Y = 202;
  fill(255,0,0);
  textFont(fuenteNueva);
  textSize(40);
  text("Los submarino de la clase s-80 plus \n son submarinos construidos por la \n empresa española Navantia en Cartegena",50,Y);
  contador++;
  println("Pantalla1", contador);
  if (contador >= 250) {
  contador = 0;
  pantalla = 1;
  }
  
  //SEGUNDA//
  break;
  case 1:
  submarino2 = loadImage("submarino2.jpg");
  image(submarino2,0,0,640,480);
  X += 5;
  if (X > 202)
  X = 202;
  fill(255,0,0,contador);
  textFont(fuenteNueva);
  textSize(40);
  text("La primera unidad, el Isaac Peral (S-80) \n está previsto que entre en servicio \n                         en 2023",50,220);
  contador++;
  println("Pantalla2", contador);
  if (contador >= 250) {
  contador = 0;
  pantalla = 2;
   }
   
   
   //TERCERA//
   break;
   case 2:
   submarino3 = loadImage("submarino3.jpg");
   image(submarino3,0,0,640,480);
   X2 += 2;
   Y2 += 2;
   fill(255,0,0);
   textFont(fuenteNueva);
   textSize(40);
   text ("El coste de fabricacion de este modelo \n esta previsto en unos 3.635-3.935 \n millones de Euros",Y2,X2);
   stroke(ColorBoton2);
   Boton5 = loadImage("Boton5.png");
   image(Boton5,BotonX,BotonY,BotonXtamaño,BotonYtamaño);
   fill(ColorBotonTexto);
   println("Pantalla3",contador);
   
   }}
   
   void mouseMoved(){
   if (mouseX > BotonX && mouseX < BotonX + BotonXtamaño
   && mouseY > BotonY && mouseY < BotonY + BotonYtamaño) {
   ColorBoton2 = color(3,3,3);
   ColorBoton = color(255,0,0);
   ColorBotonTexto = color(3,3,3);
   Botonn = true;
   }
   else {
   ColorBoton2  = 255;
   ColorBoton = 255;
   ColorBotonTexto = 200;
   Botonn = false;
   }
   }

   void mouseClicked() {
   if (Botonn == true) {
   pantalla = 0;
   Y=0;
   X=0;
   Y2=0;
   X2=0;
   }
   }
 
