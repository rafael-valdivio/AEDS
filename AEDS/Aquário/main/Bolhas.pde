class Bolhas {
  float x_bolhas, y_bolhas;
  float tamanho;
  float velocidade;

  Bolhas() {
    this.x_bolhas = random(width);
    this.y_bolhas = random(height);
    this.tamanho = random(5, 8);
  }


  void Desenha() {
    fill(#E0FCFF, 150);
    stroke(#759498);
    circle(x_bolhas, y_bolhas, tamanho);
  }
}
