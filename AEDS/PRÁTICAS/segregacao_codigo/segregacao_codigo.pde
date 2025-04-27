int[][] grid;
int n = 50;
int screen_size = 50;

void setup() {
  size(1000, 1000);
  grid = criarGrid();
}
  
int[][] criarGrid() {
  int[][] tempGrid = new int[n][n];
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      tempGrid[i][j] = int(random(0, 3));
    }
  }
  return tempGrid;
}

void atualizargrid() {
  int[][] novoGrid = new int[n][n];

  // Copiar o grid atual
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      novoGrid[i][j] = grid[i][j];
    }
  }

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (grid[i][j] != 0) { // Ignorar espaços vazios
        int tipoIndividuo = grid[i][j];
        int vizinhosSimilares = 0;
        int totalVizinhos = 0;

        // Verificar os 8 vizinhos
        for (int k = max(0, i - 1); k <= min(n - 1, i + 1); k++) {
          for (int z = max(0, j - 1); z <= min(n - 1, j + 1); z++) {
            if (k != i || z != j) {
              totalVizinhos++;
              if (grid[k][z] == tipoIndividuo) {
                vizinhosSimilares++;
              }
            }
          }
        }

        // Se menos de 50% dos vizinhos são do mesmo tipo, o indivíduo se move
        if (totalVizinhos > 0 && vizinhosSimilares < totalVizinhos / 2) {
          moverIndividuo(i, j);
        }
      }
    }
  }
}

void mostraGrid() {
  float l = width / (float) screen_size;
  float h = height / (float) screen_size;

  for (int i = 0; i < screen_size; i++) {
    for (int j = 0; j < screen_size; j++) {
      if (grid[i][j] == 0) {
        fill(255); // Branco
      } else if (grid[i][j] == 1) {
        fill(0, 255, 0); // Verde
      } else if (grid[i][j] == 2) {
        fill(0, 0, 255); // Azul
      }
      stroke(200);
      rect(j * l, i * h, l, h);
    }
  }
}

void moverIndividuo(int i, int j) {
  ArrayList<int[]> espacosVazios = new ArrayList<>();

  for (int x = 0; x < n; x++) {
    for (int y = 0; y < n; y++) {
      if (grid[x][y] == 0) {
        espacosVazios.add(new int[]{x, y});
      }
    }
  }

  if (!espacosVazios.isEmpty()) {
    int[] novoEspaco = espacosVazios.get(int(random(espacosVazios.size())));
    grid[novoEspaco[0]][novoEspaco[1]] = grid[i][j]; // Mover o indivíduo
    grid[i][j] = 0; // Deixar o espaço original vazio
  }
}

void draw() {
  background(255);
  frameRate(120);
  mostraGrid();
  atualizargrid();
  if (mousePressed) grid = criarGrid();
}
