PImage auto;


void setup(){
  size(800,400);
  background(400);
  

  
  background(80,170,15);
  triangle(560,100,560,170,500,170);
  triangle(630,100,690,170,630,170);
  
  
  rect(475,170,250,80);
  rect(560,100,70,70);
  
  fill(193,200,193);
  rect(400,280,800,120);
  
 fill(200,184,184);
 rect(400,70,400,20);
 
 fill(0,400);
 rect(400,40,400,3);
 rect(450,40,3,30);
 rect(500,40,3,30);
 rect(550,40,3,30);
 rect(600,40,3,30);
 rect(650,40,3,30);
 rect(700,40,3,30);
 rect(750,40,3,30);
 

  
  fill(0,400);
  ellipse(520,255,50,50);
  ellipse(675,255,50,50);
  
  fill(215,200,200);
  ellipse(520,255,30,30);
  ellipse(675,255,30,30);
  
  
  
  auto = loadImage("Auto.jpg");
 
  
}
  


void draw(){
  image( auto,0,0,400,400); 
 
  }


  
