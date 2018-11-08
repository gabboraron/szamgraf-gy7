Camera camera;

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
   }
    
 if(key =='s'){
   camera.MoveBackward(false);
 }
 
 if(key == 'a'){
   camera.MoveLeft(false);
 }

 if(key == 'd'){
   camera.MoveRight(false);
 }
  
}

void keyPressed() {
 if (key == 'w'){
  camera.MoveForwad(true); 
 }
 
 if(key =='s'){
   camera.MoveBackward(true);
 }
 
 if(key == 'a'){
   camera.MoveLeft(true);
 }

 if(key == 'd'){
   camera.MoveRight(true);
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
