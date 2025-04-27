class Planeta {
  float theta;      //ângulo de rotação
  float omega;      //velocidade angular 
  float dist;       //distância do sol
  float raio;   
  color cor;      
  
  
  
  
  
  
  Planeta(float omega, float dist, color cor) {
    this.theta = random(360); // começa em uma posição aleatória
    this.omega = omega;
    this.dist = dist;
    this.raio = random(15, 30);
    this.cor = cor;
  }
  
  
  
  
  
  
  
  
  
  
  void atualiza() {
    theta += omega;
    if (theta > 360) theta -= 360;
  }
  
  
  
  
  
  
  
  void desenha() {
    float xp = dist * cos(radians(theta)) + width/2;
    float yp = dist * sin(radians(theta)) + height/2;
    fill(cor);
    noStroke();
    circle(xp, yp, raio);
  }
}
