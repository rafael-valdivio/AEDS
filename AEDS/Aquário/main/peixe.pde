class Peixe{
 float x_peixe, y_peixe;
 float velocidade_peixe;
 
  Peixe(){
     this.x_peixe = random (width);
     this.y_peixe = random (height);
     
    
    
    
  }
  
  void Desenha(){
    int largura_ellipse = 15;
    int altura_ellipse = 20;
    
    fill(#FF7003);
    ellipse (x_peixe, y_peixe, largura_ellipse, altura_ellipse);
    
  }
  
  
  
  
}
  
  
  
  
  
  
 
