float vector[]= new float[10];
int menor, actual;
void setup() {
  fullScreen(P3D);
  inicializar();
  frameRate(5);
}
void draw() {
  menor=actual; 
  for (int i=actual; i<vector.length; i++)
  {
    if (vector[menor]<vector[i])
    {
      menor=i;
    }
  }
  //intercambio 
 
  float aux=vector[menor];
  vector[menor]=vector[actual];
  vector[actual]=aux;
  actual++;
  mostrar();
   if (actual==vector.length) noLoop();
}
void mostrar() {
  background(255);
      for(int i = 0; i<vector.length; i++){
        pushMatrix();
          stroke(0);
          translate(map(i, 0, vector.length, width/vector.length, width), height/2);
         rotateX(2);
          noFill();
          box(vector[i]);
   
        popMatrix();
  }
}
void inicializar() {
  actual=0;
  menor=0;
  for (int i=0; i<vector.length; i++) {
    vector[i]=random(50);
  }
}
void mousePressed(){
inicializar();
loop();

}
