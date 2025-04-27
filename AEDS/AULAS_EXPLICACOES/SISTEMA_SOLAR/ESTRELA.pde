class Estrela {
  float x, y;       
  float brilho;       
  float variacao;    

  Estrela() {
    x = random(width);
    y = random(height);
    brilho = random(100, 255);
    variacao = random(0.5, 2);
  }
  
  void piscar() {
    brilho += random(-variacao, variacao);
    brilho = constrain(brilho, 100, 255);
  }
  
  void desenha() {
    fill(brilho);
    noStroke();
    ellipse(x, y, random(1, 3), random(1, 3));
  }
}
