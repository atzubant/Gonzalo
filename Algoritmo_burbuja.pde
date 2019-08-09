float box[] = new float [20];
int j;

void setup(){
  fullScreen(P3D);
   for (int i = 0; i<box.length; i++){
     box[i] = random(75);
   }
}

void draw(){
  
  if(mousePressed==true){
    for (int i = 0; i<box.length-1; i++){
    for (int j = 0; j<box.length-1; j++){
     if(box[j+1]<box[j]){
       float aux = box[j+1];
       box[j+1]=box[j];
       box[j]=aux;
       } 
    }
  }
  }
    mostrar();
}

void mostrar(){
    background(255);
      for(int i = 0; i<box.length; i++){
        pushMatrix();
          stroke(0);
          translate(map(i, 0, box.length, width/box.length, width), height/2);
         rotateX(2);
          noFill();
          box(box[i]);
   
        popMatrix();
  } 
}
