void obra(float x, float y, float tam) {
  float posx=0;
  float posy=0;
  for (int i=0; i<7; i++) {
    if (i==1) {
      posx=100;
      posy=100;
    }
    if (i>=2) {
      posx=posx/2;
      posy=posy/2;
    }
    cuadrado(x+posx, y+posy, tam);
    tam=tam/2;
    x=x+posx;
    y=y+posy;
  }
}

void cuadrado(float x, float y, float tam) {
  float unit=tam;
  stroke(63, 136, 204);
  strokeWeight(1.5);
  for (int i=0; i<4; i++) {
    for (int n=0; n<4; n++) {
      if (dist((x+(tam*n))+tam/2, (y+(tam*i))+tam/2, mouseX, mouseY) > unit*3 ) {
        fill(159, 9, 9);
      } else {
        if (dist((x+(tam*n))+tam/2, (y+(tam*i))+tam/2, mouseX, mouseY) > unit*2 ) {
          fill(172, 15, 15);
        } else {
          if (dist((x+(tam*n))+tam/2, (y+(tam*i))+tam/2, mouseX, mouseY) > unit ) {
            fill(189, 20, 21);
          } else {
            fill(207, 31, 33);
          }
        }
      }
      rect(x+(tam*n), y+(tam*i), tam, tam);
      cruz(x+(tam*n), y+(tam*i), tam);
    }
  }
}

void cruz(float x, float y, float tam) {
  float xcenter=x+(tam/2);
  float ycenter=y+(tam/2);
  if (mousedentro(x, y, tam)==true) {
    xcenter=mouseX;
    ycenter=mouseY;
  }
  line(x, y, xcenter, ycenter);
  line(x+tam, y, xcenter, ycenter);
  line(x, y+tam, xcenter, ycenter);
  line(x+tam, y+tam, xcenter, ycenter);
}
boolean mousedentro(float x, float y, float tam) {
  if ((mouseX<x+tam)&&(mouseX>x)&&(mouseY<y+tam)&&(mouseY>y)) {
    return true;
  } else {
    return false;
  }
}
