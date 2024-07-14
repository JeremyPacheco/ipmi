// https://youtu.be/-1lOIhNAE90
// Jeremy Alejandro Pacheco Tenorio  !p 850943580
//flotar
float are;
//variable
int je;
//imagen
PImage img;
// Color global para las bolitas
color bolitasColor;

//ventana
void setup() {
  size(800, 400);
  noStroke();
  img = loadImage("espiral.jpg");
  img.resize(400, 400);
  textSize(32);  // Configura el tamaño del texto para el mensaje
  textAlign(CENTER, CENTER);  // Alineación del texto
}

void draw() {
  if (je == 1) {
    // elemento en el espacio
    float mx = map(mouseX, 0, width, 0, 255);
    float my = map(mouseY, 0, height, 0, 255);
    background(mx, 0, my);

    // valores de v cantidad
    // tamaño
    float f = 10;

    // cantidad
    int v = 115;

    // dibujar en la mitad izquierda de la ventana
    image(img, 400, 0);
    translate(width / 4, height / 2);  // ajustar el punto de referencia

    // Generar un nuevo color para las bolitas
    Bolitasdecolores();  // Llamada a la función void

    // para que
    for (float a = 0; a < 360; a += 22.5) {
      rotate(radians(a));
      pushMatrix();

      // por si
      for (int i = 0; i < v; i++) {
        scale(0.95);
        rotate(radians(are));
        fill(bolitasColor);
        ellipse(mouseX / 2, mouseY, f, f);  // ajustar coordenadas
      }
      popMatrix();
    }
    are += 0.03;
  } else if (je == 2) {
    background(0);
    fill(255);
    text("Gracias por su atención", width / 2, height / 2);
  } else {
    // fondo
    background(255);
  }
}

void mousePressed() {
  je = je + 1;

  // pantalla regresa al inicio
  if (je > 2) {
    je = 0;  
  }
}

//actualiza el color de las bolitas tipo fiesta
void Bolitasdecolores() {
  bolitasColor = color(random(255), random(255), random(255));
}
