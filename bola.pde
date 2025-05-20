class Bola {
  float x, y;
  float vy;
  float ay;
  float raio;
  
  Bola(float x, float y) {
    this.x = x;
    this.y = y;
    this.vy = 0;
    this.ay = 0.1;
    this.raio = 20;
  }
  
  void update() {
    vy += ay;
    y += vy;
    
    if (y >= height - raio) {
      y = height - raio;
      vy *= -0.9;
    }
  }
  
  void show() {
    image(img, x, y, raio * 2, raio * 2); 
  }
}
