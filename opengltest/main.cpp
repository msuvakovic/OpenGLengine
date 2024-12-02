



#include <fstream>
#include <iostream>
#include <string>
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <sstream>
#include <vector>
#include <cmath>
#include <Shader.h>
#include <stb_image.h>


using namespace std;


float vertices[] = {
    0.5f,0.5f,0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f,
    0.5f, -0.5f,0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f,
    -0.5f,-0.5f,0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f,
    -0.5f, 0.5, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f

};


unsigned int indices[] = {
    0,1,2
    
};

float texCoords[] = {
    0.0f, 0.0f,
    1.0f, 0.0f,
    0.5f, 1.0f

};


void framebuffer_size_callback(GLFWwindow* window, int width, int height){
    glViewport(0,0,width,height);

}

void compileshaderfromfile(unsigned int shader,string& filename){
    ifstream file(filename);
    if(!file.is_open()){
        cerr << "Failed to open file" << filename << endl;
        return;
    }
    std::stringstream streamed;
    streamed << file.rdbuf();
    file.close();
    std::string str = streamed.str();
    const char* chr = str.c_str();
    glShaderSource(shader, 1, &chr, NULL);
    glCompileShader(shader);
    GLint iscompiled = 0;
    glGetShaderiv(shader, GL_COMPILE_STATUS, &iscompiled);
    if(iscompiled == GL_FALSE){
        GLint maxLength = 0;
        glGetShaderiv(shader, GL_INFO_LOG_LENGTH, &maxLength);

        std::vector<GLchar> error(maxLength);
        glGetShaderInfoLog(shader,maxLength, &maxLength, &error[0]);
        glDeleteShader(shader);
        return;
    }
    return;

}

void processInput(GLFWwindow *window){
    if(glfwGetKey(window,GLFW_KEY_ESCAPE) == GLFW_PRESS){
        glfwSetWindowShouldClose(window, true);
    }

}

int main(){
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR,3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR,3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    GLFWwindow* window = glfwCreateWindow(800, 600, "LearnOpenGL", NULL, NULL);
    if (window == NULL){
        cout << "failed to create GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);
    if(!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)){
        cout << "Failed to initalize GLAD" << endl;
        return -1;
    }
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

    //vao, vbo and ebo 
    unsigned int VAO;
    glGenVertexArrays(1,&VAO);
    glBindVertexArray(VAO);
    
    unsigned int VBO;
    glGenBuffers(1,&VBO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    unsigned int EBO;
    glGenBuffers(1, &EBO);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);


    glVertexAttribPointer(0,3,GL_FLOAT,GL_FALSE, 8*sizeof(float),(void*)0);
    glEnableVertexAttribArray(0);

]   
    glVertexAttribPointer(1,3,GL_FLOAT,GL_FALSE, 3*sizeof(float),(void*)());
    glEnableVertexAttribArray(1);



    glBindVertexArray(0);

    // unsigned int vertexShader;
    // vertexShader = glCreateShader(GL_VERTEX_SHADER);
    // string filename = "vertexshader.vert";
    // compileshaderfromfile(vertexShader,filename);

    // unsigned int fragmentShader;
    // fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
    // filename = "fragshader.frag";
    // compileshaderfromfile(fragmentShader,filename);

    // unsigned int shaderProgram;
    // shaderProgram = glCreateProgram();
    // glAttachShader(shaderProgram, vertexShader);
    // glAttachShader(shaderProgram, fragmentShader);
    // glLinkProgram(shaderProgram);
    // glDeleteShader(vertexShader);
    // glDeleteShader(fragmentShader);

    Shader myshader = Shader("vertexshader.vert","fragshader.frag");
    unsigned int texture;
    glGenTextures(1, &texture);

    glBindTexture(GL_TEXTURE_2D, texture);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    
    int width, height, nrChannels;
    unsigned char *data = stbi_load("container.jpg", &width, &height, &nrChannels, 0);

    if (data)
    {
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE,data);
        glGenerateMipmap(GL_TEXTURE_2D);
    }
    else
    {
        cout << "Failed to load texture" << endl;
    }
    stbi_image_free(data);



    
    //renderloop
    while(!glfwWindowShouldClose(window))
    {
        //input
        processInput(window);

        glClearColor(0.2f,0.3f,0.3f,1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        myshader.use();
        myshader.setFloat("offset",0.0f);
        // float timeValue = glfwGetTime();
        // float greenValue = (sin(timeValue)/ 2.0f) +0.5f;
        // float othervalue = (sin(timeValue+((2.0f*3.14f)/ 3.0f))) +0.5f;
        // float somevalue = sin(timeValue+((4.0f*3.14f)/ 3.0f)) +0.5f;
        // int vertexColorLocation = glGetUniformLocation(shaderProgram, "ourColor");
        // glUniform4f(vertexColorLocation, othervalue, greenValue, somevalue, 1.0f );

        glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
        glBindVertexArray(VAO);
        glDrawElements(GL_TRIANGLES, 3, GL_UNSIGNED_INT, 0);
        glBindVertexArray(0);
        //check and call events and swap bufvfers
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
    glDeleteVertexArrays(1,&VAO);
    glDeleteVertexArrays(1,&VBO);
    glDeleteVertexArrays(1,&EBO);
    glfwTerminate();
    return 0;

}