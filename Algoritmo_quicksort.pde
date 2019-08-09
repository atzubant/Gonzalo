Carro[] carros= new Carro[10];
void setup() {
  background(255);
  fullScreen();
  inicializar();
}
void draw()
{
  background(255);
  for (int i = 0; i<carros.length; i++) {
    carros[i].mostrar();
    carros[i].avanzar();
  }
  if (mousePressed) {
    quickSort(carros, 0, carros.length-1);
  }
}
void inicializar()
{
  for ( int i = 0; i <carros.length; i++) {
    carros[i]=new Carro(0, height/carros.length*i+30, 100, 30);
  }
}


void quickSort(Carro arr[], int begin, int end) {
  if (begin < end) {
    int partitionIndex = partition(arr, begin, end);

    quickSort(arr, begin, partitionIndex-1);
    quickSort(arr, partitionIndex+1, end);
  }
}
int partition(Carro arr[], int begin, int end) {
  float pivot = arr[end].vel;
  int i = (begin-1);

  for (int j = begin; j < end; j++) {
    if (arr[j].vel <= pivot) {
      i++;

      float swapTemp = arr[i].vel;
      arr[i].vel = arr[j].vel;
      arr[j].vel = swapTemp;
    }
  }

  float swapTemp = arr[i+1].vel;
  arr[i+1].vel = arr[end].vel;
  arr[end].vel = swapTemp;

  return i+1;
}

class Carro {

  float x, y,largo,ancho;
  float vel;

  Carro(float _x, float _y, float _largo, float _ancho)
  {
    x = _x;
  y = _y;
  largo = _largo;
  ancho = _ancho;
  vel = random(10);
  }
  void avanzar() {
  x+=vel;
  if(x>width) x=0;
  }
  void mostrar()
  {
    rectMode(CORNER);
    stroke(5);
    rect(x, y, largo,ancho);
  }
}
