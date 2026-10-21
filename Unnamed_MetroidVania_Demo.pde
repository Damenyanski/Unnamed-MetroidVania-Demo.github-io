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
int OriginPX;
int OriginPY;
int OriginPW;
int OriginPH;
int CrouchPY;
int CrouchPW;
int CrouchPH;
int PX;
int PY;
int PW;
int PH;
int MAXPX;
int MAXPY;

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

int Ground = 620;

int StartFrame;
int EndFrame;

int SizeReference;

PImage ImageRI;
PImage ImageRII;
PImage ImageRIII;
PImage ImageRIV;
PImage ImageRV;
PImage ImageRVI;
PImage ImageRVII;
PImage ImageRAI;
PImage ImageLI;
PImage ImageLII;
PImage ImageLIII;
PImage ImageLIV;
PImage ImageLV;
PImage ImageLVI;
PImage ImageLVII;
PImage ImageLAI;
PImage BgroundI;
PImage BackgroundII;

boolean left;
boolean right;

boolean Pause;

boolean Grav;
boolean TouchGround;

boolean Crouch;

boolean Menu = false;

void setup() {
  fullScreen();
  println(PX, PY);
  println(displayWidth, displayHeight);
  AppWidth=displayWidth;
  AppHeight=displayHeight;

  Pause = false;

  PHP = 10;
  PMP = 5;
  SizeReference = 150;
  PX=5;
  PY=620;
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
  String ImageNameRAI = "RapierR";
  String ImageNameLI = "Protagonist 1 L";
  String ImageNameLII = "Protagonist 2 L";
  String ImageNameLIII = "Protagonist 3 L";
  String ImageNameLIV = "Protagonist 4 L";
  String ImageNameLV = "Protagonist 5 L";
  String ImageNameLVI = "Protagonist 6 L";
  String ImageNameLVII = "Protagonist 7 L";
  String ImageNameLAI = "RapierL";

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
  String IpathwayRAI = ImageDirectory + ImageNameRAI + fileExtentionImage;
  String IpathwayLI = ImageDirectory + ImageNameLI + fileExtentionImage;
  String IpathwayLII = ImageDirectory + ImageNameLII + fileExtentionImage;
  String IpathwayLIII = ImageDirectory + ImageNameLIII + fileExtentionImage;
  String IpathwayLIV = ImageDirectory + ImageNameLIV + fileExtentionImage;
  String IpathwayLV = ImageDirectory + ImageNameLV + fileExtentionImage;
  String IpathwayLVI = ImageDirectory + ImageNameLVI + fileExtentionImage;
  String IpathwayLVII = ImageDirectory + ImageNameLVII + fileExtentionImage;
  String IpathwayLAI = ImageDirectory + ImageNameLAI + fileExtentionImage;

  String BpathwayI = BackgroundDirectory + BackgroundI + fileExtentionImage;
  ImageRI = loadImage(IpathwayRI);
  ImageRII = loadImage(IpathwayRII);
  ImageRIII = loadImage(IpathwayRIII);
  ImageRIV = loadImage(IpathwayRIV);
  ImageRV = loadImage(IpathwayRV);
  ImageRVI = loadImage(IpathwayRVI);
  ImageRVII = loadImage(IpathwayRVII);
  ImageRAI = loadImage(IpathwayRAI);
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
  text("HP:" + str(PHP), 0, 0, SizeReference/2, SizeReference/2);
  text("MP:" + str(PMP), 0, 10, SizeReference/2, SizeReference/2);
  MAXPY = OriginPY-30;
  if (right==true&&left==false&&Grav==true) {
    image(ImageRIV, PX, PY, SizeReference, SizeReference);
  }
  if (left==true&&right==false&&Grav==true) {
    image(ImageLIV, PX, PY, SizeReference, SizeReference);
  }
  if (right==false&&left==true&&Crouch==false&&Grav==false) {
    image(ImageLI, PX, PY, SizeReference, SizeReference);
    right=false;
    left=true;
  }
  if (right==true&&left==false&&Crouch==false&&Grav==false) {
    image(ImageRI, PX, PY, SizeReference, SizeReference);
    left=false;
    right = true;
  }
  if (right==false&&left==true&&Crouch==true&&Grav==false) {
    image(ImageLIV, PX, PY, SizeReference, SizeReference);
    right=false;
    left=true;
  }
  if (right==true&&left==false&&Crouch==true&&Grav==false) {
    image(ImageRIV, PX, PY, SizeReference, SizeReference);
    left=false;
    right = true;
  }
  if (right==false&&left==true&&Crouch==false&&Grav==true) {
    image(ImageLIV, PX, PY, SizeReference, SizeReference);
    right=false;
    left=true;
  }
  if (right==true&&left==false&&Crouch==false&&Grav==true) {
    image(ImageRIV, PX, PY, SizeReference, SizeReference);
    right=true;
    left=false;
  }
  if (PY<=Ground-3) {
    PY+=6;
  }
  if (PY<=620) {
    Grav=false;
  }

  while (Menu == true) {
    divs();
  }
}
void keyPressed() {

  if (key==CODED) {
    if (keyCode == RIGHT) {
      Crouch=false;
      PX = OriginPX+10;
      image(ImageRI, PX, PY, SizeReference, SizeReference);
      OriginPX = PX;
      right = true;
      left = false;
    }
  }
  if (key==CODED) {
    if (PX<0-50) {
    } else {
      if (keyCode == LEFT) {
        Crouch=false;
        PX = OriginPX-10;
        image(ImageLI, PX, PY, SizeReference, SizeReference);
        OriginPX = PX;
        left = true;
        right = false;
      }
    }
  }
  if (key==CODED) {
    if (keyCode == DOWN&&left==true) {
      image(ImageLIV, PX, PY, SizeReference, SizeReference);
      Crouch=true;
      PY=633;
      PH = SizeReference/2;
    }
  }
  if (key==CODED) {
    if (keyCode == DOWN&&right==true) {
      image(ImageRIV, PX, PY, SizeReference, SizeReference);
      Crouch=true;
      PY=633;
      PH = SizeReference/2;
    }
  }
}
void keyReleased() {

  if (key == 'z' || key == 'Z'&&left==true&&right==false) {
    image(ImageLVII, PX, PY, SizeReference, SizeReference);
  }
  if (key == 'z' || key == 'Z'&&right==true&&left==false) {
    image(ImageRVII, PX, PY, SizeReference, SizeReference);
  }

  if (keyCode == DOWN) {
    image(ImageRI, PX, PY, SizeReference, SizeReference);
    PH = SizeReference;
    Crouch=false;
  }

  if (key == 'x' || key == 'X'&&left==true&&TouchGround==true) {

    OriginPY=PY;
    if ( PY==MAXPY) {
      PY+=80;
      image(ImageLIV, PX, PY, SizeReference, SizeReference);
    } else {
      PY-=80;
    }
  }
  if (key == 'x' || key == 'X'&&right==true&&TouchGround==true) {

    OriginPY=PY;
    if ( PY==MAXPY) {
      PY+=80;
      image(ImageRIV, PX, PY, SizeReference, SizeReference);
    } else {
      PY-=80;
    }
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
  if (key == 's' || key == 'S' && Menu==false) {
    Menu = true;
  } else {
    Menu=false;
  }
  if (key==CODED) {
    if (keyCode == DOWN&&left==true) {
      image(ImageLIV, PX, PY, SizeReference, SizeReference);
      Crouch=false;
      PY=620;
      PH = SizeReference;
    }
  }
  if (key==CODED) {
    if (keyCode == DOWN&&right==true) {
      image(ImageRIV, PX, PY, SizeReference, SizeReference);
      Crouch=false;
      PY=620;
      PH = SizeReference;
    }
  }
}
// Images based off of and inspired by Konami's Castlevania series
