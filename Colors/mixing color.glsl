#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution; // 画布尺寸（宽，高）
uniform vec2 u_mouse;      // 鼠标位置（在屏幕上哪个像素）
uniform float u_time;     // 时间（加载后的秒数）

vec4 colorA=vec4(1.,1.,0.,1.);
vec4 colorB=vec4(0.,1.,1.,1.);

vec3 colorA = vec3(0.149,0.141,0.912);
vec3 colorB = vec3(1.000,0.833,0.224);

void main() {
	
    vec4 mixcolor=mix(colorA,colorB,abs(sin(u_time)));

	gl_FragColor=mixcolor;
}
