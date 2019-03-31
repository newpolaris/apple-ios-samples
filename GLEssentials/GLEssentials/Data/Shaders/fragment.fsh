#version 120

varying vec4 DestinationColor;

varying vec2 TexCoordOut;
uniform sampler2D Texture;

varying float UseTextureOut;

void main(void) {
    if(UseTextureOut != 0.0)
        gl_FragColor = texture2D(Texture, TexCoordOut);
    else
        gl_FragColor = DestinationColor;
    
}
