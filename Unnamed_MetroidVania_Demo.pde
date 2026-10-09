import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;

int AppWidth;
int AppHeight;

float PHP;
float PMP;
int CPX;
int CPY;
int CPW;
int CPH;
int NPX;
int NPY;
int NPW;
int NPH;
int PH;
int PW;

int EHP;
int EMP;
int CEX;
int CEY;
int CEW;
int CEH;
int NEX;
int NEY;
int NEW;
int NEH;
int EH;
int EW;

float RX;
float RY;

float Ground = 620;

int step;

PImage ImageRI;
PImage ImageRII;
PImage ImageRIII;
PImage ImageRIV;
PImage ImageRV;
PImage ImageRVI;
PImage ImageRVII;
PImage ImageLI;
PImage ImageLII;
PImage ImageLIII;
PImage ImageLIV;
PImage ImageLV;
PImage ImageLVI;
PImage ImageLVII;
PImage BgroundI;
PImage BackgroundII;

boolean left;
boolean right;

boolean Pause;

boolean Grav;
boolean TouchGround;

boolean Crouch;

void setup() {
  fullScreen();
  println(NPX, NPY);
  println(displayWidth, displayHeight);
  AppWidth=displayWidth;
  AppHeight=displayHeight;

  Pause = false;

  PHP = 10;
  PMP = 5;
  step = 150;
  NPX=5;
  NPY=620;
  right = true;
  left = false;
  Grav = false;
  TouchGround = true;

  String AssetFolder = "Dependancies";
  String ImagesFolder = "Visual";
  String BackgroundFolder = "Back Ground";
  String ImageNameRI = "Protagonist 1 R";
  String ImageNameRII = "Protagonist 2 R";
  String ImageNameRIII = "Protagonist 3 R";
  String ImageNameRIV = "Protagonist 4 R";
  String ImageNameRV = "Protagonist 5 R";
  String ImageNameRVI = "Protagonist 6 R";
  String ImageNameRVII = "Protagonist 7 R";
  String ImageNameLI = "Protagonist 1 L";
  String ImageNameLII = "Protagonist 2 L";
  String ImageNameLIII = "Protagonist 3 L";
  String ImageNameLIV = "Protagonist 4 L";
  String ImageNameLV = "Protagonist 5 L";
  String ImageNameLVI = "Protagonist 6 L";
  String ImageNameLVII = "Protagonist 7 L";

  String BackgroundI = "Entrance 2";
  String BackgroundII = "Entrance 1";
  String fileExtentionImage = ".png";
  String open = "/";
  //
  String ImageDirectory = AssetFolder + open + ImagesFolder + open;
  String BackgroundDirectory = ImageDirectory + BackgroundFolder + open;
  String IpathwayRI = ImageDirectory + ImageNameRI + fileExtentionImage;
  String IpathwayRII = ImageDirectory + ImageNameRII + fileExtentionImage;
  String IpathwayRIII = ImageDirectory + ImageNameRIII + fileExtentionImage;
  String IpathwayRIV = ImageDirectory + ImageNameRIV + fileExtentionImage;
  String IpathwayRV = ImageDirectory + ImageNameRV + fileExtentionImage;
  String IpathwayRVI = ImageDirectory + ImageNameRVI + fileExtentionImage;
  String IpathwayRVII = ImageDirectory + ImageNameRVII + fileExtentionImage;
  String IpathwayLI = ImageDirectory + ImageNameLI + fileExtentionImage;
  String IpathwayLII = ImageDirectory + ImageNameLII + fileExtentionImage;
  String IpathwayLIII = ImageDirectory + ImageNameLIII + fileExtentionImage;
  String IpathwayLIV = ImageDirectory + ImageNameLIV + fileExtentionImage;
  String IpathwayLV = ImageDirectory + ImageNameLV + fileExtentionImage;
  String IpathwayLVI = ImageDirectory + ImageNameLVI + fileExtentionImage;
  String IpathwayLVII = ImageDirectory + ImageNameLVII + fileExtentionImage;

  String BpathwayI = BackgroundDirectory + BackgroundI + fileExtentionImage;
  ImageRI = loadImage(IpathwayRI);
  ImageRII = loadImage(IpathwayRII);
  ImageRIII = loadImage(IpathwayRIII);
  ImageRIV = loadImage(IpathwayRIV);
  ImageRV = loadImage(IpathwayRV);
  ImageRVI = loadImage(IpathwayRVI);
  ImageRVII = loadImage(IpathwayRVII);
  ImageLI = loadImage(IpathwayLI);
  ImageLII = loadImage(IpathwayLII);
  ImageLIII = loadImage(IpathwayLIII);
  ImageLIV = loadImage(IpathwayLIV);
  ImageLV = loadImage(IpathwayLV);
  ImageLVI = loadImage(IpathwayLVI);
  ImageLVII = loadImage(IpathwayLVII);
  BgroundI = loadImage(BpathwayI);
}
void draw () {
  background(BgroundI);
  text("HP:" + str(PHP), 0, 0, step/2, step/2);
  text("MP:" + str(PMP), 0, 10, step/2, step/2);
  if (right==false&&left==true&&Crouch==false&&Grav==false) {
    image(ImageLI, NPX, NPY, step, step);
    right=false;
    left=true;
  }
  if (right==true&&left==false&&Crouch==false&&Grav==false) {
    image(ImageRI, NPX, NPY, step, step);
    left=false;
    right = true;
  }
  if (right==false&&left==true&&Crouch==true&&Grav==false) {
    image(ImageLIV, NPX, NPY, step, step);
    right=false;
    left=true;
  }
  if (right==true&&left==false&&Crouch==true&&Grav==false) {
    image(ImageRIV, NPX, NPY, step, step);
    left=false;
    right = true;
  }
  if (right==false&&left==true&&Crouch==false&&Grav==true) {
    image(ImageLIV, NPX, NPY, step, step);
    right=false;
    left=true;
  }
  if (right==true&&left==false&&Crouch==false&&Grav==true) {
    image(ImageRIV, NPX, NPY, step, step);
    right=true;
    left=false;
  }
  if (NPY<=Ground-3) {
    NPY+=6;
    if (NPY==Ground) {
      NPY=620;
    }
  }
  if (NPY==620) {
    Grav=false;
  }
}

void keyPressed() {

  if (key==CODED) {
    if (keyCode == RIGHT) {
      Crouch=false;
      NPX = CPX+10;
      image(ImageRI, NPX, NPY, step, step);
      CPX = NPX;
      right = true;
      left = false;
    }
  }
  if (key==CODED) {
    if (NPX<0-50) {
    } else {
      if (keyCode == LEFT) {
        Crouch=false;
        NPX = CPX-10;
        image(ImageLI, NPX, NPY, step, step);
        CPX = NPX;
        left = true;
        right = false;
      }
    }
  }
  if (key==CODED) {
    if (keyCode == DOWN&&left==true) {
      image(ImageLIV, NPX, NPY, step, step);
      Crouch=true;
      NPH = step/2;
    }
  }
  if (key==CODED) {
    if (keyCode == DOWN&&right==true) {
      image(ImageRIV, NPX, NPY, step, step);
      Crouch=true;
      NPH = step/2;
    }
  }
}
void keyReleased() {
  if (keyCode == DOWN) {
    image(ImageRI, NPX, NPY, step, step);
    NPH = step;
    Crouch=false;
  }
  if (key == 'x' || key == 'X'&&left==true) {
    NPY-=120;
    image(ImageLIV, NPX, NPY, step, step);
    Grav=true;
  }
  if (key == 'x' || key == 'X'&&right==true) {
    NPY-=120;
    image(ImageRIV, NPX, NPY, step, step);
    Grav=true;
  }
  if (key==CODED) {
    if (keyCode == RIGHT) {
      Crouch=false;
      right = true;
      left = false;
    }
  }
  if (key==CODED) {
    if (keyCode == LEFT&&left==true) {
      Crouch=false;
      left = true;
      right = false;
    }
  }
  if (key == 's' || key == 'S') {
    if (Pause = false) {
      Pause = true;
    } else if (Pause = true) {
      Pause = false;
      while (Pause==true) {
        divs();
        println("Test");
      }

      if (key == 's' || key == 'S' && Pause==true) {
        Pause=false;
      }
    }



    // Images based off of and inspired by Konami's Castlevania series
