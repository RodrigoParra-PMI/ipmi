//Rodrigo Parra
//legajo;122830/0
PImage imagen1, imagen2, imagen3, imagen4, imagen5;
PFont fuente;
int pantalla = 1, tiempo;
float transparencia = 0, textoIzquierda, escalaTexto = 0.2, textoAbajo, textoDerecha;
void setup() {
  size(640, 480);
  imagen1 = loadImage("pantalla1.jpg");
  imagen2 = loadImage("pantalla2.jpg");
  imagen3 = loadImage("pantalla3.jpg");
  imagen4 = loadImage("pantalla4.jpg");
  imagen5 = loadImage("pantalla5.jpg");
  fuente = loadFont("fuente.vlw");
  textFont(fuente);
  textAlign(CENTER, CENTER);
  tiempo = millis();
  reiniciarAnimaciones();
}
void draw() {
  cambiarPantalla();
  if (pantalla == 1) {
    pantalla1();
  } else if (pantalla == 2) {
    pantalla2();
  } else if (pantalla == 3) {
    pantalla3();
  } else if (pantalla == 4) {
    pantalla4();
  } else if (pantalla == 5) {
    pantalla5();
  }
}
void cambiarPantalla() {
  if (pantalla < 5 && millis() - tiempo >= 5000) {
    pantalla++;
    tiempo = millis();
    reiniciarAnimaciones();
  }
}
void reiniciarAnimaciones() {
  transparencia = 0;
  textoIzquierda = -650;
  escalaTexto = 0.2;
  textoAbajo = 550;
  textoDerecha = 700;
}
void pantalla1() {
  image(imagen1, 0, 0, width, height);
  if (transparencia < 255) {
    transparencia += 3;
  }
  fill(255, transparencia);
  textSize(34);
  text("Presentación de AJR", width/2, 430);
}
void pantalla2() {
  image(imagen2, 0, 0, width, height);
  if (textoIzquierda < width/2) {
    textoIzquierda += 6;
  }
  fill(0);
  textSize(22);
  text("AJR es una banda compuesta por tres\nhermanos que experimentan con la música.", textoIzquierda, 420);
}
void pantalla3() {
  image(imagen3, 0, 0, width, height);
  if (escalaTexto < 1) {
    escalaTexto += 0.01;
  }
  pushMatrix();
  translate(width/2, 420);
  scale(escalaTexto);
  fill(255);
  textSize(22);
  text("Su estilo de música es el pop,\npero mezclándolo con elementos\nremixeados de la electrónica.", 0, 0);
  popMatrix();
}
void pantalla4() {
  image(imagen4, 0, 0, width, height);
  if (textoAbajo > 410) {
    textoAbajo -= 3;
  }
  fill(0);
  textSize(20);
  text("Por lo general, suelen tener una canción\npor álbum donde mezclan las melodías\ndel resto de canciones del álbum.", width/2, textoAbajo);
}
void pantalla5() {
  image(imagen5, 0, 0, width, height);
  if (textoDerecha > width/2) {
    textoDerecha -= 5;
  }
  fill(150);
  textSize(20);
  text("Sus letras por lo general hablan sobre\nlas dificultades al crecer y enfrentarse\na la vida adulta.", textoDerecha, 360);
  botonReiniciar();
}
void botonReiniciar() {
  fill(230);
  rect(245, 420, 150, 40);
  fill(0);
  textSize(18);
  text("Reiniciar", 320, 440);
}
void mousePressed() {
  if (pantalla == 5 && mouseX >= 245 && mouseX <= 395 && mouseY >= 420 && mouseY <= 460) {
    pantalla = 1;
    tiempo = millis();
    reiniciarAnimaciones();
  }
}
