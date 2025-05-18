PImage titulo, img1, img2, img3, img4, img5, img6, img7, fin;
int tiempo, limite, slide, alpha, px, py, state, acc;
float size;
void setup() {
  size(640, 480);
  slide=0;
  alpha=0;
  py=-20;
  tiempo=0;
  limite=0;
  px=0;
  state=0;
  acc=2;
  size=0;
  titulo = loadImage("logo.png");
  img1 = loadImage("img1.png");
  img2 = loadImage("img2.png");
  img3 = loadImage("img3.png");
  img4 = loadImage("img4.png");
  img5 = loadImage("img5.png");
  img6 = loadImage("img6.png");
  img7 = loadImage("img7.png");
  fin = loadImage("final.png");
}
void draw() {
  println(frameCount);
  //pantalla de inicio
  if (slide == 0) {
    image(img1, 0, 0, width, height);
    fill(0, 75, 255);
    rect(220, 380, 200, 80);
    fill(255, 0, 0);
    stroke(255);
    triangle(300, 380, 300, 460, 360, 420);
    tint(255, alpha);
    image(titulo, 0, 200, 320, 120);
    if (alpha < 255) {
      alpha= alpha+17;
    }
    if ((mouseX > 220)&&(mouseX < 420)&&(mouseY < 460)&&(mouseY > 380)&&(mousePressed == true)) {
      frameCount = 0;
      slide=1;
    }
  }
  tint(255, 255);
  //pantalla n°2
  if (slide == 1) {
    if (px < 320) {
      px= px+10;
    }
    if ((px >= 320)&&(frameCount > 240)) {
      px= px+10;
    }
    image(img2, 0, 0, width, height);
    text("Ichigo Kurosaki es un adolescente que puede ver fantasmas. Conoce a Rukia, una shinigami que lucha contra espíritus malignos llamados Hollows.", px, 40, 300, 480);
    if (frameCount==300) {
      px=0;
      slide=slide+1;
      alpha=0;
    }
  }
  //pantalla n°3
  if (slide == 2) {
    image(img3, 0, 0, width, height);
    fill(0, 75, 255);
    rect(0, 0, 285, 64);
    fill(255);
    text("Cuando Rukia queda herida, le pasa sus poderes a Ichigo, que se convierte en un shinigami sustituto para proteger a su familia.", px, py, 300, 480);
    if (state==0) {
      py=py+acc;
      if (py==8) {
        acc=acc-1;
        state=1;
      }
    }
    if (state==1) {
      py=py+acc;
      if (py==14) {
        acc=acc-2;
        state=2;
      }
    }
    if (state==2) {
      if (frameCount>300) {
        acc--;
        state++;
      }
    }
    if (state==3) {
      py=py+acc;
      if (py==8) {
        state++;
      }
    }
    if (frameCount==600) {
      slide=slide+1;
      state=0;
      px=0;
      py=-20;
    }
  }
  //pantalla n°4
  if (slide == 3) {
    image(img4, 0, 0, width, height);
    fill(255, alpha);
    if ((alpha < 255)&&(frameCount < 820)) {
      alpha=alpha+5;
    }
    if ((alpha > 0)&&(frameCount > 820)) {
      alpha=alpha-5;
    }
    text("Ichigo aprende a usar sus habilidades y pelea contra varios Hollows, con ayuda de sus amigos Orihime, Chad y Uryu.", 420, 40, 180, 480);
    if (frameCount==900) {
      slide=slide+1;
      alpha=0;
      size=765;
    }
  }
  //pantalla n°5
  if (slide == 4) {
    image(img5, 0, 0, width, height);
    fill(255, alpha);
    textSize(size);
    text("Viaja a la Sociedad de Almas para rescatar a Rukia, quien fue arrestada por darle sus poderes a un humano.", 80, 120, 180, 480);
    if ((size >15)&&(state<1)) {
      size=size-15;
      alpha=alpha+5;
    }
    if (frameCount> 1140) {
      state++;
      size=size+15;
      alpha=alpha-5;
      fill(255);
    }
    if (frameCount==1200) {
      slide=slide+1;
      state=0;
      py=-20;
    }
  }
  //pantalla n°6
  if (slide == 5) {
    image(img6, 0, 0, width, height);
    fill(0, 75, 255);
    rect(410, 380, 200, 80);
    fill(255);
    text("Descubre secretos sobre su propio poder y conflictos en la Sociedad de Almas.", 420, py, 180, 480);
    if (state==0) {
      py=py+24;
      if (py>=400) {
        state++;
        py=py-12;
      }
    }
    if (state==1) {
      py=py-12;
      if (py<=354) {
        state++;
      }
    }
    if (state==2) {
      py=py+8;
      if (py>=400) {
        state++;
      }
    }
    if (state==3) {
      py=py-8;
      if (py<=376) {
        state++;
      }
    }
    if (state==4) {
      py=py+6;
      if (py>=400) {
        state++;
      }
    }
    if (frameCount==1500) {
      slide=slide+1;
      state=0;
      size=0;
      py=300;
      px=80;
    }
  }
  //pantalla n°7
  if (slide == 6) {
    image(img7, 0, 0, width, height);
    fill(0, 75, 255);
    rect(px-5, py-5, 200, 80);
    fill(255);
    if (size < 15) {
      size=size+0.5;
    }
    textSize(size);
    text("Finalmente, Ichigo y sus\namigos enfrentan enemigos\npoderosos y protegen tanto\na humanos como a espíritus.", px, py, 180, 480);
    if (state==0) {
      py=py-20;
      if (py == 200) {
        state++;
      }
    }
    if (state==1) {
      py=py-20;
      px=px+20;
      if (py == 100) {
        state++;
      }
    }
    if (state==2) {
      px=px+20;
      if (px == 300) {
        state++;
      }
    }
    if (state==3) {
      py=py+20;
      px=px+20;
      if (py == 120) {
        state++;
      }
    }
    if (state==4) {
      py=py+20;
      if (py == 200) {
        state++;
      }
    }
    if (state==5) {
      py=py+20;
      px=px-20;
      if (px == 300) {
        state++;
      }
    }
    if (state==6) {
      px=px-20;
      if (px == 200) {
        state++;
      }
    }
    if (state==7) {
      py=py-20;
      px=px-20;
      if (px == 100) {
        state++;
      }
    }
    if (state==8) {
      py=py-20;
      if (py == 80) {
        state++;
      }
    }
    if (state==9) {
      py=py-20;
      px=px+20;
      if (py == 20) {
        state++;
      }
    }
    if (state==10) {
      px=px+20;
      if (px == 400) {
        state++;
      }
    }
    if (frameCount==1800) {
      slide=slide+1;
    }
  }
  //pantalla final
  if (slide == 7) {
    image(fin, 0, 0, width, height);
    fill(255);
    textSize(68);
    text ("¿Ver de nuevo?", 100, 68);
    fill(0, 75, 255);
    rect(220, 380, 200, 80);
    fill(255, 0, 0);
    triangle(300, 380, 300, 460, 360, 420);
    if ((mouseX > 220)&&(mouseX < 420)&&(mouseY < 460)&&(mouseY > 380)&&(mousePressed == true)) {
      frameCount = 0;
      slide = 1;
      px=0;
      py=-20;
      state=0;
      acc=2;
    }
  }
  textSize(15);
}
