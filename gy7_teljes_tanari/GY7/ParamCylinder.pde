class ParamCylinder extends ParamSurface {
  
  float r = 2;
  float h = 3;
  
  PVector GetPos(float u, float v) {
   float alpha = u * 2 * PI;
   
   return new PVector(r * cos(alpha), 
   v * h, 
   r * sin(alpha));
    
  }
  
}
