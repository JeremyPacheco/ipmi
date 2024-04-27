// Imagen referencia:
PImage img;
//ventana
void setup() {
  size(800, 400); //tamaño
  img = loadImage("porygon.png.png"); //Imagen
  img.resize(400,400); //Imagen ajuste de tamaño (sobresalia algunos bordes)
}
//dibujo
void draw() {
  background(255);
  
  //Dibujo Izquierda
  //Pizq
  fill(0,255,255);
  beginShape();
  vertex(99,229);
  vertex(92,289);
  vertex(137,310);
  vertex(148,293);
  vertex(113,271);
  vertex(133,215);
  endShape(CLOSE);
  line(127,305,130,280);
  //cabeza
  fill(255,0,127);
  beginShape();
  vertex(95,79);
  vertex(144,46);
  vertex(192,55);
  vertex(232,100);
  vertex(221,148);
  vertex(169,202);
  vertex(68,243);
  vertex(29,228);
  vertex(44,165);
  endShape(CLOSE);
  
  //detalles
  line(171,96,115,82);
  line(191,55,182,75);
  line(176,84,170,93);
  line(193,115,231,101);
  line(130,146,101,181);
  line(143,158,117,190);
  
  //pico 
  fill(0,255,255);
  beginShape();
  vertex(45,164);
  vertex(103,180);
  vertex(117,188);
  vertex(126,219);
  vertex(68,243);
  vertex(29,228);
  endShape(CLOSE);
  //detalles
  line(101,179,80,217);
  line(71,229,63,242);
  line(117,188,67,243);
  //Ojo
  fill(255);
  beginShape();
  vertex(171,96);
  vertex(192,116);
  vertex(182,153);
  vertex(143,159);
  vertex(130,143);
  vertex(137,103);
  endShape(CLOSE);
  
  //C.antena
  fill(0,255,255);
  beginShape();
  vertex(268,159);
  vertex(309,21);
  vertex(320,21);
  vertex(328,41);
  vertex(316,193);
  vertex(309,199);
  endShape(CLOSE);
  //detalles
  line(320,21,313,56);
  line(307,85,291,168);  
  
  //cuerpo
    //rosa
  fill(255,0,127);
  beginShape();
  vertex(234,225);
  vertex(191,175);
  vertex(277,162);
  vertex(307,183);
  vertex(308,227);
  vertex(240,330);
  vertex(219,288);
  endShape(CLOSE);
  //azul
  fill(0,255,255);
  beginShape();
  vertex(133,215);
  vertex(113,271);
  vertex(187,316);
  vertex(240,331);
  vertex(219,289);
  vertex(234,225);
  vertex(191,176);
  vertex(169,202);
  endShape(CLOSE);
  //detalles
  line(197,183,268,168);
  line(197,183,215,281);
  line(219,288,153,280);
  line(113,271,132,275);
  line(219,289,307,182);
  
   
  //Pder
  fill(0,255,255);
  beginShape();
  vertex(308,211);
  vertex(369,233);
  vertex(367,264);
  vertex(314,380);
  vertex(258,359);
  vertex(250,345);
  vertex(272,224);
  endShape(CLOSE);
  //Detalles
  fill(0);
  line(250,345,280,357);
  line(293,362,305,366);
  line(305,366,311,373);
  line(305,366,334,256);
  line(334,256,317,247);
  line(309,244,272,225);
  line(334,256,350,245);
  line(367,233,359,238);
 
  //Pupila
  fill(0);
  beginShape();
  circle(158,129,13);
  endShape(CLOSE);
  //Imagen derecha Referencia
  image(img, 400, 0);
  
  // Mostrar las coordenadas del mouse (para guiarme al dibujar)
  //fill(0);
  //text("Coordenada X: " + mouseX, 20, 20);
  //text("Coordenada Y: " + mouseY, 20, 40);
  
  
}
