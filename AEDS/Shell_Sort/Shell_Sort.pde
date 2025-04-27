int n=20; //tamanho array
int[] array = new int[n];
int i= -1, j= -1, minIdx = -1;



void setup(){
  size(900, 700); //screen size
  
  //Vetor recebe valores aleatórios
  for (int k=0; k < array.length; k++) array[k] = (int) random(height);
  
  thread("ordenar");
  
}


void draw(){
  background(220);
  int l = width / n;
  
  for(int k =0; k< n; k++){
    int h = int(array[k]);
    //Se o elemento em análise for um daqueles que está sendo usado na ordenação, ele ficará verde, senão, pintar-se-á de azul
    if(k==i || k==j || k==minIdx) fill(100,250,100); 
    else fill(100,100,250);
    rect(k*l, height - h, l, h); //Lembrando que: rect(x,y, largura, altura);
    fill(0); 
    textAlign(CENTER);
    text(str(h), k * l + l/2, height - h - 5);
  }
  
  if(mousePressed){
     for (int k=0; k < array.length; k++) array[k] = (int) random(height);
  }
}

void ordenar(){
  while(true) Shell_Sort(array);
}




void Shell_Sort(int[] arr) {
  // Gera o maior gap inicial baseado na sequência de Knuth
  int m = 1;
  while (m < n / 3) {
    m = 3 * m + 1;
  }

  // Reduz o gap gradualmente
  while (m >= 1) {
    // Insertion Sort com passo m
    for (i = m; i < n; i++) {
      int temp = array[i];
      j = i;
      while (j >= m && array[j - m] > temp) {
        array[j] = array[j - m];
        j = j - m;

        // Visualização
        delay(150);
      }
      array[j] = temp;
    }

    // Reduz o intervalo
    m = m / 3;
  }
}
