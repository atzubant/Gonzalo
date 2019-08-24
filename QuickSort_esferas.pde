float a[] = new float[10];

void setup() {
  fullScreen(P3D);
  for (int i = 0; i < a.length; i++) {
    a[i] = random(75);
  }
}

void draw() {
  mostrar();
  if (mousePressed == true) {
    quickSort(a, 0, a.length-1);
  }
}
void quickSort(float arr[], int begin, int end) {
  if (begin < end) {
    int partitionIndex = partition(arr, begin, end);

    quickSort(arr, begin, partitionIndex-1);
    quickSort(arr, partitionIndex+1, end);
  }
}
int partition(float arr[], int begin, int end) {
  float pivot = arr[end];
  int i = (begin-1);

  for (int j = begin; j < end; j++) {
    if (arr[j] <= pivot) {
      i++;

      float swapTemp = arr[i];
      arr[i] = arr[j];
      arr[j] = swapTemp;
    }
  }

  float swapTemp = arr[i+1];
  arr[i+1] = arr[end];
  arr[end] = swapTemp;

  return i+1;
}

void mostrar() {
  background(255);
  for (int i = 0; i < a.length; i++) {
    pushMatrix();
    stroke(random(255), random(255), random(255));
    translate(map(i, 0, a.length, width/a.length, width), height/2);
    rotateX(0.5);
    fill(255);
    sphere(a[i]);
    popMatrix();
  }
}
