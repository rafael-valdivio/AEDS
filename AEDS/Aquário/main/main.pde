Bolhas[] bolhas = new Bolhas[200];
Peixe[] nemo = new Peixe[1];

void setup(){
  size(750,750);
  for (int i = 0; i < bolhas.length; i++){
    bolhas[i] = new Bolhas(); 
  }
}

void draw(){
  background(#69DAE8);
  
  
  for (int i = 0; i < bolhas.length; i++){
    bolhas[i].Desenha();
  }
  
  for (int i=0; i < nemo.length; i++){
     nemo[i].Desenha(); 
    
  }
}
