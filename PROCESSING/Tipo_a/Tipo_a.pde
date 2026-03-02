void setup () {
  //el color del fondo (azul)
  background(0, 0, 225);
  //el tamaño del fondo
  size (400, 500);
  //el frame rate de la animación
  //frameRate (2);
}
void draw () {
  //etiquetas generales para posicion X e Y
  //float posx= random (width);
  //float posy= random (height);
  //para ver los numeros en la consola
  //println(posx,posy);
  //posicion (x, y, w, h)
  //rect(posx,posy,100,50);
  //quitar borde
  noStroke();
  //si el mouse está en x(izquierda) el fill es verde, sino es rojo
  /*if (mouseX < width/2){
   //relleno//
   fill (0,random(230,255),0);
   }
   else{
   fill (random(230,255),0,0);
   }*/
   float g=0;
  //posx comienza en 35, al ser posx es menor a 400 menos 35, posx se sumará 35 hasta 400
  for (float posx=35; posx<width-35; posx=posx+35) {
    for (float posy= 35; posy<height-35; posy=posy+35) {
      if ( g<360) {
        //rect(posx,0,50,50);
        textSize(40);
       //dentro de LA push nena tiene q ir en orden Translate,rotate y text
          pushMatrix();
       //"palabra",posx,posy
          translate(posx, posy);
          g=g+1.5;
          rotate(radians(g));
       //la posición de A está cambiada para que la rotación sea central, el punto rotativo estaba en otra parte
          text("a", -17, 8);
          popMatrix();
      } else {
        g=0;
      }
    }
  }
}
