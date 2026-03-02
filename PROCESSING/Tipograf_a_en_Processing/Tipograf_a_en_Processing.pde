import processing.pdf.*;

//TIPOGRAFÍA Ctl + t ordenar
//para poner cosas de fuera se pone P + lo q sea, es una variable
PFont mifuente;
boolean Record;
boolean check;
float g;
int inc;

void setup() {
  size(800, 500 );
  //copiar tipografía en la carpeta con este archivo
  mifuente=createFont("Quicksand-Regular.otf", 25);
  //
  frameRate(2);
  
}

void draw () {
  if (Record) {
    beginRecord(PDF, "LetraA-####.pdf");
  }
  background(90);
  for (float posx=10; posx<width-10; posx=posx+30) {
    for (float posy=40; posy<height-30; posy=posy+30) {
      pushMatrix();
      translate(posx, posy);
      if (g>=360){
      check=false;
      }
      if (g<=0){
      }
      if (check==false){
        inc=-1;
      }
      if (check==true){
        inc=1;
      }
      g=g+sin(frameCount)+1.4*inc;
      
      rotate(radians(g));
     // rotate(radians(mousex));
     //para hacer erctas las a's
      text("a", -7, 7);
      popMatrix();
    }
  }

  textSize(20);
  textFont(mifuente);
  //
  if (Record) {
    endRecord();
    Record=false;
  }
  println(Record);
}
void mousePressed() {
  Record=true;
}
///////////////////
