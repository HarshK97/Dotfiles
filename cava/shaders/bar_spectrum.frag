#version 120

uniform float time;
uniform float bars;
uniform vec2 resolution;
uniform sampler2D tex;

void main() {
    vec2 uv = gl_FragCoord.xy / resolution;
    vec4 color = texture2D(tex, uv);
    
    float intensity = color.r;

    // Gradient colors based on intensity
    vec3 gradient1 = vec3(0.55, 0.93, 0.99); // #8BE9FD
    vec3 gradient2 = vec3(0.60, 0.93, 1.00); // #9AEDFE
    vec3 gradient3 = vec3(0.79, 0.66, 0.98); // #CAA9FA
    vec3 gradient4 = vec3(0.74, 0.57, 0.98); // #BD93F9
    vec3 gradient5 = vec3(1.00, 0.57, 0.82); // #FF92D0
    vec3 gradient6 = vec3(1.00, 0.47, 0.78); // #FF79C6
    vec3 gradient7 = vec3(1.00, 0.43, 0.40); // #FF6E67
    vec3 gradient8 = vec3(1.00, 0.33, 0.33); // #FF5555

    if (intensity < 0.125) {
        gl_FragColor = vec4(gradient1, 1.0);
    } else if (intensity < 0.25) {
        gl_FragColor = vec4(gradient2, 1.0);
    } else if (intensity < 0.375) {
        gl_FragColor = vec4(gradient3, 1.0);
    } else if (intensity < 0.5) {
        gl_FragColor = vec4(gradient4, 1.0);
    } else if (intensity < 0.625) {
        gl_FragColor = vec4(gradient5, 1.0);
    } else if (intensity < 0.75) {
        gl_FragColor = vec4(gradient6, 1.0);
    } else if (intensity < 0.875) {
        gl_FragColor = vec4(gradient7, 1.0);
    } else {
        gl_FragColor = vec4(gradient8, 1.0);
    }
}

