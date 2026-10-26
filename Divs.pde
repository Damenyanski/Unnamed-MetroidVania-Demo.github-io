int NumDiv = 10;
int NumPar = 4;
float divs[] = new float[NumDiv*NumPar];
int Ref = 20;
void divs() {

  divs[0] = Ref*3;
  divs[1] = Ref*3;
  divs[2] = Ref*17;
  divs[3] = Ref*18;

  float referentX = divs[2]/17;
  float referentY=divs[3]/18;
  float column1 = divs[0]+referentX;
  float column2 = column1 + referentX*7;
  /*
float column3 = column2 + referentX *;
   float column4;
   float column5;
   */

  float row1 = divs[2]+referentY;
  float row2 = row1+referentY*2;
  float row3=row2+referentY*2;
  float row4=row3+referentY*2;
  float row5=row4+referentY*2;
  float row6=row5+referentY*1;
  float row7=row6+referentY*1;
  float row8=row7+referentY*2;

  for (int i=4; i<divs.length; i++) {

    if (i%4 == 0 && int(i/4)==1) {
      divs[i] = row1;
    }

    if (i%4 == 1 && int(i/4) == 1) {
      divs[i] = column1;
    }

    if (i%4 == 2 && int(i/4) == 1) {
      divs[i] = 5*Ref;
    }
    if (i%4 == 3 && int(i/4) == 1) {
      divs[i] = 6*Ref;

      //
    } else if (i%4 == 0 && int(i/4) == 1) {
      divs[i] = 4*Ref;
    } else if (i%4 == 1 && int(i/4) == 1) {
      divs[i] = 8*Ref;
    } else if (i%4 == 2 && int(i/4) == 1) {
      divs[i] = 5*Ref;
    } else if (i%4 == 3 && int(i/4) == 1) {
      divs[i] = 1*Ref;

      //
    } else if (i%4 == 0 && int(i/4) == 1) {
      divs[i] = 4*Ref;
    } else if (i%4 == 1 && int(i/4) == 1) {
      divs[i] = 9*Ref;
    } else if (i%4 == 2 && int(i/4) == 1) {
      divs[i] = 5*Ref;
    } else if (i%4 == 3 && int(i/4) == 1) {
      divs[i] = 1*Ref;

      //
    } else if (i%4 == 0 && int(i/4) == 1) {
      divs[i] = 4*Ref;
    } else if (i%4 == 1 && int(i/4) == 1) {
      divs[i] = 10*Ref;
    } else if (i%4 == 2 && int(i/4) == 1) {
      divs[i] = 5*Ref;
    } else if (i%4 == 3 && int(i/4) == 1) {
      divs[i] = 1*Ref;

      //
    } else if (i%4 == 0 && int(i/4) == 1) {
      divs[i] = 11*Ref;
    } else if (i%4 == 1 && int(i/4) == 1) {
      divs[i] = 5*Ref;
    } else if (i%4 == 2 && int(i/4) == 1) {
      divs[i] = 1*Ref;
    } else if (i%4 == 3 && int(i/4) == 1) {
      divs[i] = 6*Ref;
    }
    //
    else if (i%4 == 0 && int(i/4) == 1) {
      divs[i] = 11*Ref;
    } else if (i%4 == 1 && int(i/4) == 1) {
      divs[i] = 7*Ref;
    } else if (i%4 == 2 && int(i/4) == 1) {
      divs[i] = 1*Ref;
    } else if (i%4 == 3 && int(i/4) == 1) {
      divs[i] = 6*Ref;

      //
    } else if (i%4 == 0 && int(i/4) == 1) {
      divs[i] = 11*Ref;
    } else if (i%4 == 1 && int(i/4) == 1) {
      divs[i] = 9*Ref;
    } else if (i%4 == 2 && int(i/4) == 1) {
      divs[i] = 1*Ref;
    } else if (i%4 == 3 && int(i/4) == 1) {
      divs[i] = 6*Ref;

      //
    } else if (i%4 == 0 && int(i/4) == 1) {
      divs[i] = 11*Ref;
    } else if (i%4 == 1 && int(i/4) == 1) {
      divs[i] = 11*Ref;
    } else if (i%4 == 2 && int(i/4) == 1) {
      divs[i] = 1*Ref;
    } else if (i%4 == 3 && int(i/4) == 1) {
      divs[i] = 6*Ref;

      //
    } else if (i%4 == 0 && int(i/4) == 1) {
      divs[i] = 11*Ref;
    } else if (i%4 == 1 && int(i/4) == 1) {
      divs[i] = 13*Ref;
    } else if (i%4 == 2 && int(i/4) == 1) {
      divs[i] = 1*Ref;
    } else if (i%4 == 3 && int(i/4) == 1) {
      divs[i] = 6*Ref;
    }
  }
  for ( int j=0; j<divs.length; j+=4 ) {
    rectDIV(divs[j], divs[j+1], divs[j+2], divs[j+3]);
  }
}

void rectDIV(float X, float Y, float W, float H) {
  rect(X, Y, W, H);
}
