# version 330 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aCol;
out vec3 chCol;

uniform mat4 uProjection;
uniform mat4 uView;
uniform mat4 uModel;
uniform vec3 offset;

void main() {
	chCol = aCol;
	gl_Position = uProjection * uView * uModel * vec4(aPos + offset, 1.0f);
}