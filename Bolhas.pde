class Bolhas {
  float x, y;       
  float brilho;       
  float variacao;    
  float tamanho;
  float velocidade;
  
  Bolhas() {
    x = random(width);
    y = random(height);
    brilho = random(400, 555); 
    tamanho = random(1, 8);
    velocidade = random(0.01, 0.2);
  }
  

  
  void subir() {
    y -= velocidade;
    if (y < 0) {
      y = height;
      x = random(width); // Sorteia nova posição X ao resetar
    }
  }
  
  void desenha() {
    noFill(); // sem preenchimento
    stroke(245, 245, 245, brilho); // cor do contorno com brilho
    strokeWeight(2); 
    ellipse(x, y, tamanho, tamanho);
  }

}
