uniform vec3 uColor;
uniform  sampler2D uTexture; 
varying float vElevation;

varying vec2 uUv;
void main(){
    vec4 textureColor = texture2D(uTexture,uUv);
    // gl_FragColor = vec4(uColor,1);
    textureColor.rgb*=vElevation * 3.0+0.8;
    gl_FragColor= textureColor;
}
