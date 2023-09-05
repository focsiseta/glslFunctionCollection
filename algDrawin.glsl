float rect(vec2 coords,vec2 position,vec2 size){
    coords = position - coords;
    vec2 ret = step(size,coords*(1. - coords));
    return ret.x * ret.y;
}

float plot(vec2 coords,float value){
//if coords.y > value - .1 and coords.y < value + .1
  return step(value - .1,coords.y) * step(coords.y,value + .1);

}
