import processing.pdf.*; 

PFont fuente;
String miTexto = "TONTO EL QUE LO LEA "; 

float separacion = 45; 
float pasoAngular = 0.18; 

void setup() {
  // CORRECCIÓN: Para PDF se usa solo el modo PDF o nada.
  size(800, 800, PDF, "mi_patron_pro.pdf"); 
  background(255);
  
  fuente = createFont("MeieScript-Regular.ttf", 24);
  textFont(fuente);
  textAlign(CENTER, CENTER);
  fill(0);
  noLoop(); 
}

void draw() {
  background(255);
  translate(width/2, height/2); 
  
  float angulo = 0;
  float radio = 0;
  int i = 0;
  
  // El bucle dibuja TODO primero
  while (radio < width * 0.8) { 
    float x = radio * cos(angulo);
    float y = radio * sin(angulo);
    
    char letraActual = miTexto.charAt(i % miTexto.length());
    
    pushMatrix();
    translate(x, y);
    rotate(angulo + HALF_PI); 
    textSize(12 + (radio * 0.12)); 
    text(letraActual, 0, 0);
    popMatrix();
    
    angulo += pasoAngular;
    radio += separacion * (pasoAngular / TWO_PI); 
    i++;
  }

  // AL FINAL (Fuera del while) guardamos y cerramos
  println("¡Hecho! PDF generado.");
  exit(); 
}
