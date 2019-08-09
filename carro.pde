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
