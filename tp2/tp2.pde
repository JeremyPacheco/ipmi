PImage img1, img2, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12, img13;
float x;
float y = 150.0;
int pantalla;
boolean dibujar;

void setup(){
  size(640, 480);
  pantalla = 1;
  x = 0;


   //Fondo//
  img1 = loadImage("01.jpg");
  img1.resize(640, 480);
  img2 = loadImage("05.jpg");
  img2.resize(400, 350);
  img3 = loadImage("02.jpg");
  img3.resize(640,480);
  
  img10 = loadImage("03.jpeg");
  img10.resize(640,480);
  
  img11 = loadImage("07.jpg");
  img11.resize(640,480);
  
  img12 = loadImage("06.jpg");
  img12.resize(640,480);
  
  
  // martillo//
  img4 = loadImage("04.jpg");
  img4.resize(250, 250);

    
   dibujar = true;
}


void draw(){  //Pantalla 1//
  if(pantalla == 1){ 
  background(0);
  image(img3, 0, 0);
  image(img4, 50,120);
  fill(255);
  textSize(40);
  text("Historia del Martillo", 200, 100);
  textSize(30);
  fill(0);
  
  fill(255);
    rect(250, height/2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("continuar",260,420);
}
// Pantalla 2 //
  if(pantalla == 2){
  
    image(img10, 0, 0);
    
  
  fill(0);
  textSize(30);
  text("Origen del Martillo", 20, y-70);
  text("Los primeros martillos datan de la Edad de Piedra",5, y-130);
  text("alrededor del año 8000 a. C.",5, y-160);
  text("Estos martillos constaban de una piedra atada a",5, y-190);
  text("un mango con tiras de cuero",5, y-220);
  text("Algunos milenios más tarde, hacia el 4.000 a.C",5, y-250);
  text("y gracias al descubrimiento del cobre, los romanos",5, y-280);
  text("empezaron a fabricar las cabezas con este material.",5, y-310);
  y++;
  
  fill(255);
    rect(250, height/2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("continuar",260,420);
  }
  
  // Pantalla 3 //
  if(pantalla == 3){
    image(img11, 0, 0);

  fill(0);
  textSize(30);
  text("El Martillo y sus variantes", 20, 80);
  
  text("Martillo de carpintero tradicional. Compuesto por un lado por una amplia cabeza de golpeo con forma cuadrada y por otro, una cuña destinada para trabajos más delicados. ",x+648, 130);
  text("Martillo de uña. Este tipo de martillo es muy usado por carpinteros y encofradores en el sector de la construcción.",x+3000, 160);
  text("Martillo o maza de nylon. Es una herramienta imprescindible cuando se realizan trabajos que precisan no dejar marca de golpeo en el material.",x+5000, 190);
  text("uMartillo de bola. Tiene un extremo plano para un golpeo seguro y firme y en el otro extremo tiene una semiesfera. Se utiliza mucho en el sector del metal",x+7000, 220);
  text("Martillo de chapista. En los dos extremos posee las caras de golpeo planas y muy amplias con el fin de dar mejor forma a la chapa al trabajarla.",x+9000, 250);
  
  x--;
  
  fill(255);
    rect(250, height/2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("continuar",260,420);
  }
  
  // Pantalla 4 creditos//
  if(pantalla == 4){
    image(img12, 0, 0);
    
    textSize(30);
    
    text("THANKS FOR WHATCHING", 120, y-150);
    text("DIRECCION:", 200, y-400);
    text("Jeremmy Alejandro Pacheco Tenorio", 120, y-350);
    text("CREDITOS", 210, y-200);
    fill(0);
    y++;
    
    fill(255);
    rect(250, height/2 + 150, 100, 50);
    fill(0);
    textSize(20);
    text("Reiniciar",260,420);
  }
}

void mouseClicked() {
if (pantalla == 1 && mouseX >= 250 && mouseX <= 350 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
    pantalla = 2;
}
else if (pantalla == 2 && mouseX >= 250 && mouseX <= 350 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
    pantalla = 3;
}
else if (pantalla == 3 && mouseX >= 250 && mouseX <= 350 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
    pantalla = 4;
}
else if (pantalla == 4 && mouseX >= 250 && mouseX <= 350 && mouseY >= height/2 + 150 && mouseY <= height/2 + 200) {
    pantalla = 1;
}
}
