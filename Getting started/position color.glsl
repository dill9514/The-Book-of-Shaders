#ifdef GL_ES
precision mediump float;
#endif

uniform float u_time12;

void main() {
	float u_time=0.1;
	gl_FragColor = vec4(abs(sin(u_time/8.)),abs(sin(u_time/4.)),abs(sin(u_time/2.)),1.0);
}
