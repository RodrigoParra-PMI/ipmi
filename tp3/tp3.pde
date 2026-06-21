//Rodrigo Parra
//legajo:122830/0
//https://youtu.be/c7Djb2kGaMU?si=fVUG1x6tRXBKNpa_
PImage obra;
float escala = 1, escalaOriginal = 1;
void setup() {
  size(800, 400);

  obra = loadImage("ilusion.jpg");
}

void draw() {
  background(255);
  image(obra, 0, 0, 400, 400);
  float d = dist(mouseX, mouseY, 600, 200);
  escala = cambiarescala(d);
  circulosPatron(450, 50);
  circulosPatron(400, 0);
}
void circulosPatron(int inicioX, int inicioY) {
  for (int y = inicioY; y <= height; y += 100) {
    for (int x = inicioX; x <= width; x += 100) {
      pushMatrix();
      strokeWeight(3);
      translate(x, y);
      if (mousePressed) {
        for (int l = 5; l > 0; l--) {
          ellipse(0, 0, l * 20 * escala, l * 20 * escala);
        }
      } else {
        for (int l = 5; l > 0; l--) {
          ellipse(0, 0, l * 20, l * 20);
        }
      }
      popMatrix();
    }
  }
}
float cambiarescala(float dist) {
  return map(dist, 0, 500, 2, 1);
}
