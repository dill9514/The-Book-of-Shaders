float smoothstep1( float x )
{
  return x*x*x/(3.0*x*x-3.0*x+1.0);
}

float SinLine(vec2 uv) {    
        return smoothstep1(uv.x);
}

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord/iResolution.xy;

    float y = uv.x;

    vec3 color = vec3(1.);//background color

    // Plot a line

    //color = (1.0-SinLine(uv)-SinLine(vec2(uv.x,uv.y-0.3)))*color+SinLine(uv)*vec3(1.0,0.0,0.0);
    
    color = (1.0-SinLine(uv))*color+SinLine(uv)*vec3(1.0,0.0,0.0);//red
    color= (1.0-SinLine(vec2(uv.x,uv.y-0.3)))*color+SinLine(vec2(uv.x,uv.y-0.3))*vec3(1.0,0.6,0.0);
    

	fragColor = vec4(color,1.0);
}
