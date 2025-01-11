/*boolean isFade = false; //<>//
Boolean isCirculo = false;
PImage img; // declaramos la variable para imagen
PImage img2;

void setup() {
  size(980, 900);
  background (0, 50, 249);
  noCursor();
  img = loadImage("Barbados_beach.jpg");
  img2 = loadImage("mejores-bancos-de-imagenes-gratis.jpg");
}

void draw() {
  if (isFade) {
    fill (0,50,249,40);
    rect(0,0,width,height);
    //image(img, mouseX-40, mouseY-40, 80, 100);
  }

  if (mousePressed) {
    fill(0, 255, 0, 50);
  } else {
    fill(#A9DEF9);
  }
  // rect(mouseX, mouseY, 10, 80);
  image(img2, mouseX, mouseY, 10, 80);
  image(img, mouseX-40, mouseY-40, 80, 100);
  //  rect(mouseX-40, mouseY-40, 80, 100);
  fill(0, 0, 0, 50);

if (isCirculo) {
  ellipse(width/2, height/2, 400, 400);
  //drawCircle;
}

//void drawCircle() {
// ellipse(width/2, height/2, tamanio, tamanio);
//fill (255);
*/

boolean isFade = false;  // Control para el fade de la pantalla
boolean isCirculo = false;  // Control para dibujar el círculo
PImage img;  // Declaramos la primera imagen
PImage img2; // Declaramos la segunda imagen

void setup() {
  size(980, 900);
  noCursor();  // Desactiva el cursor del mouse
  background(0, 50, 249);  // Redibujamos el fondo
  // Asegúrate de que las imágenes estén en la carpeta 'data'
  img = loadImage("Barbados_beach.jpg");
  img2 = loadImage("mejores-bancos-de-imagenes-gratis.jpg");
}

void draw() {
  // Limpiar la pantalla y redibujar el fondo
 // background(0, 50, 249);  // Redibujamos el fondo

  // Si isFade es verdadero, mostramos un rectángulo transparente sobre toda la pantalla
  if (isFade) {
    fill(0, 50, 249, 40);  // Color con transparencia
    rect(0, 0, width, height);  // Rectángulo que cubre toda la pantalla
  }

  // Cambia el color de fondo dependiendo si el mouse está presionado
  if (mousePressed) {
    fill(0, 255, 0, 50);  // Verde con transparencia
  } else {
    fill(#A9DEF9);  // Color de fondo
  }

  // Dibuja la segunda imagen en la posición del mouse (con un tamaño de 10x80)
  image(img2, mouseX, mouseY, 10, 80);

  // Dibuja la primera imagen en la posición del mouse (con un tamaño de 80x100)
  image(img, mouseX - 40, mouseY - 40, 80, 100);

  // Si isCirculo es verdadero, dibujamos un círculo en el centro de la pantalla
  if (isCirculo) {
    fill(255, 0, 0, 100);  // Rojo semitransparente para el círculo
    ellipse(width / 2, height / 2, 400, 400);  // Dibuja el círculo
  }
}
