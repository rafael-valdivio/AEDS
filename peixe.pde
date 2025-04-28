class Peixe{
 float x_peixe, y_peixe;
 float velocidade_peixe;
 int contador_frames;
 int largura_ellipse, altura_ellipse;
 float comprimento_rabinho, altura_rabinho;
 color cor_corpo, cor_rabinho;
 
  Peixe(){
     x_peixe = random (width);
     y_peixe = random (height);
     velocidade_peixe = random(1,4);
     largura_ellipse = int(random(60,120));
     altura_ellipse = int(random(60,100));
     comprimento_rabinho = random(15,30);
     altura_rabinho = random(15,30);
     cor_corpo = color(random(100,255), random(100,255), random(100,255));
     cor_rabinho = color(random(50,200), random(50,200), random(50,200));

     //esquema com 50% de chance de ir para a esquerda
     if (random(1) < 0.5) {
       velocidade_peixe *= -1;
      }
      
  }
  
  void Desenha(){

    
    
    pushMatrix(); //salvando o sistema de coordenadas atual
    translate(x_peixe, y_peixe); //move o desenho para a posição do peixe
    
    if (velocidade_peixe < 0){
       scale(-1,1); 
    }
    
    //corpo 
    fill(cor_corpo);
    ellipse (0, 0 , largura_ellipse, altura_ellipse);
    
    //cauda
    fill(cor_rabinho);
    triangle(-largura_ellipse/2, 0,
              -largura_ellipse/2 - comprimento_rabinho, -altura_rabinho,  
              -largura_ellipse/2 - comprimento_rabinho, altura_rabinho);
    
    popMatrix();
  }
  
void Move() {
  x_peixe += velocidade_peixe;
  
  // Bater na parede → inverter
  if (x_peixe > width || x_peixe < 0) {
    velocidade_peixe *= -1;
  }
  
  // Incrementa o contador
  contador_frames++;
  
  // A cada 600 frames, sorteia nova velocidade
  if (contador_frames >= 600) {
    velocidade_peixe = random(1, 3);
    if (random(1) < 0.5) {
      velocidade_peixe *= -1;
    }
    
    contador_frames = 0; // Zera o contador
  }
}

  
  
}
  
  
  
  
  
  
 
