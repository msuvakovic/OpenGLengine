#version 330 core
out vec4 FragColor;

in vec4 position;

uniform vec4 ourColor2;
void main()
{
     FragColor = vec4(position);
}