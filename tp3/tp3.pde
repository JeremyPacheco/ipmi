//https://youtu.be/-1lOIhNAE90
//flotar
float are;

//variable
int je;

//imagen
PImage img;

//ventana
void setup() {
  size(800, 400);
  noStroke();
  img = loadImage("espiral.jpg");
  img.resize(400, 400);
}

void draw() {
  // elemento en el espacio
  float mx = map(mouseX, 0, width, 0, 255);
  float my = map(mouseY, 0, height, 0, 255);
  background(mx, 0, my);

  // mostrar imagen 
  if (je != 2 && je != 3) {
    image(img, 400, 0);  // mostrar imagen en la mitad derecha
  }

  // valores de v cantidad
  // tamaño
  float f = 10;

  // cantidad
  int v = 115;

  // dibujar en la mitad izquierda de la ventana
  if (je == 1) {
    translate(width / 4, height / 2);  // ajustar el punto de referencia

    // para que
    for (float a = 0; a < 360; a += 22.5) {
      rotate(radians(a));
      pushMatrix();

      // por si
      for (int i = 0; i < v; i++) {
        scale(0.95);
        rotate(radians(are));
        ellipse(mouseX / 2, mouseY, f, f);  // ajustar coordenadas
        fill(0, 75, 205);
      }

      popMatrix();
    }
  }

  // C rotacion
  if (je == 2) {
    translate(width / 4, height / 2);  // ajustar el punto de referencia

    // si C rotacion es
    for (float a = 0; a < 360; a += 22.5) {
      rotate(radians(a));
      pushMatrix();

      // terminar c rotacion
      for (int i = 0; i < v; i++) {
        scale(0.95);
        rotate(radians(are));
        rect(mouseX / 2, mouseY, f, f);  // ajustar coordenadas
        fill(0, 0, 255);
      }
      popMatrix();

      // a su vez C rotacion
      pushMatrix();
      for (int i = 0; i < v; i++) {
        scale(0.95);
        rotate(-radians(are));
        rect(mouseX / 2, mouseY, f, f);  // ajustar coordenadas
        fill(125, 127, 255);
      }
      popMatrix();
    }
  }
  are += 0.03;
}

// tamaño / distancia por la interaccion M
void mousePressed() {
  je = je + 1;

  // pantalla regresa al inc
  if (je > 3) {
    je = 1;
  }
}
