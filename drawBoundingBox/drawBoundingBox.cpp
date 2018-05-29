#include "drawBoundingBox.h"
#include "glwidget.h"

void DrawBoundingBox::onPluginLoad() {
  // Carregar shader, compile & link 
  vs=new QGLShader(QGLShader::Vertex, this);
  vs->compileSourceFile("/home/marta/FIB/G/Viewer/plugins/drawBoundingBox/drawBoundingBox.vert");
  fs=new QGLShader(QGLShader::Fragment, this);
  fs->compileSourceFile("/home/marta/FIB/G/Viewer/plugins/drawBoundingBox/drawBoundingBox.frag");
  program=new QGLShaderProgram(this);
  program->addShader(vs);
  program->addShader(fs);
  program->link();
  created=false;
}

// rellena un vbo con los datos proporcionados:
// vbo_id = identificador del vbo
// size = número de elementos del array de datos
// data = array de datos
// attribute_id = identificador del atributo correspondiente del shader
// attribute_size = número de elementos que componen el atributo (ie. 3 para vértices)
// Se asume que los datos del array serán de tipo float
void DrawBoundingBox::generate_vbo(GLuint &vbo_id, GLsizeiptr size, const GLfloat *data, GLuint attribute_id, GLint attribute_size) {
GLWidget& g = *glwidget();
  g.glGenBuffers(1, &vbo_id);
  g.glBindBuffer(GL_ARRAY_BUFFER, vbo_id);
  g.glBufferData(GL_ARRAY_BUFFER, sizeof(GLfloat)*size, data, GL_STATIC_DRAW);
  g.glVertexAttribPointer(attribute_id, attribute_size, GL_FLOAT, GL_FALSE, 0, 0);
  g.glEnableVertexAttribArray(attribute_id);
}

void DrawBoundingBox::createBuffers() {
  // dades
  GLfloat cube_vertices[]={
    1, 1, 1,
    0, 1, 1,
    1, 0, 1,
    0, 0, 1,
    1, 0, 0,
    0, 0, 0,
    1, 1, 0,
    0, 1, 0,
    1, 1, 1,
    0, 1, 1,
    0, 1, 1,
    0, 1, 0,
    0, 0, 1,
    0, 0, 0,
    1, 0, 1,
    1, 0, 0,
    1, 1, 1,
    1, 1, 0
  };
  GLfloat cube_colors[]={
    1, 0, 0,
    1, 0, 0,
    1, 0, 0,
    1, 0, 0,
    1, 0, 0,
    1, 0, 0,
    1, 0, 0,
    1, 0, 0,
    1, 0, 0,
    1, 0, 0,
    1, 0, 0,
    1, 0, 0,
    1, 0, 0,
    1, 0, 0,
    1, 0, 0,
    1, 0, 0,
    1, 0, 0,
    1, 0, 0
  };
  // VAO Capsa
	GLWidget& g = *glwidget();
  g.glGenVertexArrays(1, &cubeVAO);
  g.glBindVertexArray(cubeVAO);
  // VBOs Capsa
  generate_vbo(verticesVBO, 18*3, &cube_vertices[0], 0, 3);
  generate_vbo(colorVBO, 18*3, &cube_colors[0], 2, 3);
}

void DrawBoundingBox::drawBoxes() {
	GLWidget& g = *glwidget();
  // crear buffers
  if (!created) {
    created=true;
    createBuffers();
  }
  
  // establir modelViewProjection
  QMatrix4x4 MVP=camera()->projectionMatrix()*camera()->viewMatrix();
  program->setUniformValue("modelViewProjectionMatrix", MVP);
  
  Scene* scn=scene();
  const vector<Object> &obj=scn->objects();
  for (int i=0; i<(int)obj.size(); ++i) {
    // pintar la capsa contenidora de tots els objectes de l'escena
    program->setUniformValue("boundingBoxMin",obj[i].boundingBox().min());
    program->setUniformValue("boundingBoxMax",obj[i].boundingBox().max());
    g.glBindVertexArray(cubeVAO);
    g.glDrawArrays(GL_TRIANGLE_STRIP, 0, 18);
    g.glBindVertexArray(0);
  }

}

void DrawBoundingBox::postFrame() { 
  program->bind();
  GLint polygonMode;                              // en que polygon mode estamos? (GL_LINE, GL_FILL, GL_POINTS)
GLWidget& g = *glwidget();
  g.glGetIntegerv(GL_POLYGON_MODE, &polygonMode);
  g.glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);      // pinta el wireframe
  drawBoxes();                                    // de las cajas contenedoras de todos los objetos de la escena
  g.glPolygonMode(GL_FRONT_AND_BACK, polygonMode);  // reestablecer el poygon mode anterior
  program->release();
}

