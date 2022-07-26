#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution; // 画布尺寸（宽，高）
uniform vec2 u_mouse;      // 鼠标位置（在屏幕上哪个像素）
uniform float u_time;     // 时间（加载后的秒数）

vec4 red(){
	return vec4(1.0,.0,.0,1.0);
}


void main() {
	//gl_FragColor = vec4(1.000,0.615,0.794,1.00);
	gl_FragColor=red();
}
