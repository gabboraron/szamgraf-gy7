class ParamSphere extends ParamSurface {
  
  float r = 2;
  
  PVector GetPos(float u, float v) {
    float alpha = u * 2 * PI;
    float beta = v * PI;
    
    PVector p = new PVector(
      r * sin(beta)*cos(alpha),
      r * cos(beta),
      r * sin(beta)*sin(alpha));
    
    return p;
   }  
}
