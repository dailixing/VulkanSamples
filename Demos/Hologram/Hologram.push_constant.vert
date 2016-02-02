#version 310 es

layout(location = 0) in vec3 in_pos;
layout(location = 1) in vec3 in_normal;

layout(push_constant) uniform transformation {
	mat4 mvp;
} matrices;

out vec3 color;

void main()
{
	vec4 pos = matrices.mvp * vec4(in_pos, 1.0);

	gl_Position = pos;
	color = in_normal;
}