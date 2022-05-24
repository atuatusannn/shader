uniform vec2 uFrequency;
uniform float uTime;
varying vec2 uUv;
varying float vElevation;

void main(){
    vec4 modelPosition = modelMatrix * vec4(position,1.0);
    // modelPosition.y *= 0.5;

    float elevatiion = sin(modelPosition.x * uFrequency.x+uTime) *0.1;
    elevatiion += sin(modelPosition.x * uFrequency.y+uTime) *0.1;
    modelPosition.z  += elevatiion;

    vec4 viewPosition =viewMatrix * modelPosition;
    vec4 projectionPosition = projectionMatrix * viewPosition;
    gl_Position = projectionPosition;

    uUv = uv;
    vElevation = elevatiion;
}
