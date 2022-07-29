#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

float rectangle(float width,float high,vec2 location){
    float value_w=(1.0-width)*0.5;
    float value_h=(1.0-high)*0.5;
    vec2 smooth_w=smoothstep(value_w,value_w,location);
    vec2 smooth_h=smoothstep(value_h,value_h,1.0-location);
    
    return smooth_w.x*smooth_w.y*smooth_h.x*smooth_h.y;
}

void main(){
    vec2 st = gl_FragCoord.xy/u_resolution.xy;
    vec3 color = vec3(0.5608, 0.2039, 0.2039);



	float pct=rectangle(0.2,0.2,st);

    color = vec3(pct);
    
    gl_FragColor = vec4(color,1.0);
    
	 // vec2 uv=gl_FragCoord.xy/u_resolution.xy;
	 // // float wai_high=0.1;
	 // float wai_high=abs(sin(u_time*0.2));
	 // //float pad=0.1;
	 // float pad=abs(sin(u_time*0.8));
	 // //float wai_width=0.1;
	 // float wai_width=0.2*abs(sin(u_time));
	 // vec3 color = vec3(1.0);
	 // if(uv.x<wai_high+pad&&uv.x>wai_high&&uv.y<(1.0-wai_width)&&uv.y>wai_width
	 // ||uv.x<(1.0-wai_high)&&uv.x>(1.0-wai_high-pad)&&uv.y<(1.0-wai_width)&&uv.y>wai_width
	 // ||uv.x<(1.0-wai_width)&&uv.x>wai_width&&uv.y>wai_high&&uv.y<(wai_high+pad)
	 // ||uv.x<(1.0-wai_width)&&uv.x>wai_width&&uv.y<(1.0-wai_high)&&uv.y>(1.0-wai_high-pad)
	 // ){
	 // color=vec3(0.0);
	 // }
    //gl_FragColor = vec4(color,1.0);
}
