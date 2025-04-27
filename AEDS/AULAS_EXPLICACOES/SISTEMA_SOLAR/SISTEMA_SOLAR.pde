ArrayList<Planeta> sistema = new ArrayList<Planeta>();
Estrela[] estrelas = new Estrela[150];





void setup() {
  size(750, 750);
  
  for (int i = 0; i < estrelas.length; i++) {
    estrelas[i] = new Estrela();
  }
  
  for (int i = 0; i < 5; i++) {
    adicionaPlaneta();
  }
}




void draw() {
  background(0);
  
  for (int i = 0; i < estrelas.length; i++) {
    estrelas[i].piscar();
    estrelas[i].desenha();
  }

  fill(#FFD700);
  noStroke();
  circle(width/2, height/2, 100);

  for (int i = 0; i < sistema.size(); i++) {
    sistema.get(i).atualiza();
    sistema.get(i).desenha();
  }
}




void mousePressed() {
  for (int i=0; i<50; i++)
      adicionaPlaneta();
}

void adicionaPlaneta() {
  float dist = random(80, 250);
  float omega = random(0.2, 1.0);
  color cor = color(random(255), random(255), random(255));
  sistema.add(new Planeta(omega, dist, cor));
}
