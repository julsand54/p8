//TIPOGRAFÍA Ctl + t ordenar
//para poner cosas de fuera se pone P + lo q sea, es una variable 
PFont mi fuente;
void setup (){
  size (800, 500);
  mi fuente=createFont("Quicksand-Regular.otf",20);
}

void draw (){
  background(90);
  text("hola", width/2, height/2);
  textSize(49);
  textFont(mi fuente);
}
  
