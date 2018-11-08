Camera camera;

ParamSphere sphere = new ParamSphere();
ParamCylinder cylinder = new ParamCylinder();

void setup() {
  size(800, 600, P3D);
  
  camera = new Camera();
}

void update() {
 camera.update(); 
}

void keyReleased() {
   if (key == 'w') {
    camera.MoveForwad(false); 
   } else if (key == 's') {
    camera.MoveBackward(false); 
   } else if (key == 'd') {
    camera.MoveRight(false); 
   } else if (key == 'a') {
    camera.MoveLeft(false); 
   }
}


void keyPressed() {
 if (key == 'w') {
  camera.MoveForwad(true); 
 } else if(key == 's') {
   camera.MoveBackward(true);
 } else if (key == 'd') {
  camera.MoveRight(true); 
 } else if (key == 'a') {
  camera.MoveLeft(true); 
 }
  
}

void draw() {
  update();
  background(127);
  
  pushMatrix();
    rotateZ(millis()/1000.0);
    translate(0, 0, -1);
    pyramid();
    rotateY(PI);
    pyramid();
  popMatrix();
  
  pushMatrix();
    rotateZ(millis()/1000.0);
    translate(0, 0, 1);
    pyramid();
    rotateY(PI);
    pyramid();
  popMatrix();
  
  
  pushMatrix();
    rotateZ(-millis()/400.0);
    scale(1, 0.4, 0.4);
    translate(1,0,0);
    rotateY(PI/2);
    pyramid();
    rotateY(PI);
    pyramid();
  popMatrix();
  
  
  pushMatrix();
    translate(5, 0, 0);
    sphere.Draw();
  popMatrix();
  
  
  pushMatrix();
    translate(-5, 0, 0);
    cylinder.Draw();
  popMatrix();
}

void drawPyramids() {
  
}
void pyramid() {
 beginShape(TRIANGLES); 
 vertex(-1, -1, 0);
 vertex(1, -1, 0);
 vertex(-1, 1, 0);
 
 vertex(1, -1, 0);
 vertex(1, 1, 0);
 vertex(-1, 1, 0);
 
 vertex(-1, -1, 0);
 vertex( 1, -1, 0);
 vertex(0, 0, 1);
 
 vertex(1, -1, 0);
 vertex( 1, 1, 0);
 vertex(0, 0, 1);
 
 vertex(1, 1, 0);
 vertex( -1, 1, 0);
 vertex(0, 0, 1);
 
 vertex(-1, 1, 0);
 vertex( -1, -1, 0);
 vertex(0, 0, 1);
 endShape();
}
