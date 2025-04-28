Bolhas[] bolhas = new Bolhas[200];
Peixe[] nemos = new Peixe[10];

void setup(){
  size(750,750);
  
  //criando bolhas
  for (int i = 0; i < bolhas.length; i++){
    bolhas[i] = new Bolhas(); 
  }
  
  //criando peixes
  for(int i=0; i< nemos.length; i++){
    nemos[i] = new Peixe(); 
  }
  
}

void draw(){
  background(#1786FA);
  
  
  for (int i = 0; i < bolhas.length; i++) {
    bolhas[i].subir();
    bolhas[i].desenha();
  }
  
 
  for (int i = 0; i < nemos.length; i++){
    nemos[i].Desenha();
    nemos[i].Move();
    
  }

}
