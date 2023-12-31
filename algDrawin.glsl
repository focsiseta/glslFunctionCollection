float rect(vec2 coords,vec2 position,vec2 size){
    coords = position + coords;
    vec2 ret = step(size,coords*(1. - coords));
    return ret.x * ret.y;
}

float plot(vec2 coords,float value){
//if coords.y > value - .1 and coords.y < value + .1
  return step(value - .1,coords.y) * step(coords.y,value + .1);

}

vec2 tilling(vec2 coords,vec2 scale){
    coords *= scale;
	return fract(coords);
    
}

#define PI 3.14159265358979323846
//one second is 180 degrees which translates to an alternating number between in 1 and -1 in 2 seconds
float alt = sin(iTime * PI);
