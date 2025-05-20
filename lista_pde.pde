import java.util.LinkedList;

LinkedList<Bola> bolas;
PImage img;
PImage fundo;

void setup() {
  size(600, 400);
  bolas = new LinkedList<Bola>();
  img = loadImage("bolaa.png");  
    fundo = loadImage("fundo_basquete.jpg");
  imageMode(CENTER);
  

}

void draw() {
  imageMode(CORNER); 
  image(fundo, 0, 0, width, height);
  imageMode(CENTER);
  for (Bola b : bolas) {
    b.update();
    b.show();
  }
}

void mousePressed() {
  bolas.add(new Bola(mouseX, mouseY));
}
