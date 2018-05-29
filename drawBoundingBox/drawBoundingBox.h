#ifndef _DRAWBOUNDINGBOX_H
#define _DRAWBOUNDINGBOX_H

#include "plugin.h" 
#include <QGLShader>
#include <QGLShaderProgram>

class DrawBoundingBox: public QObject, public Plugin
{
	Q_OBJECT
	Q_PLUGIN_METADATA(IID "Plugin") 
	Q_INTERFACES(Plugin)

	  void createBuffers();
	  void generate_vbo(GLuint &vbo_id, GLsizeiptr size, const GLfloat *data, GLuint attribute_id, GLint attribute_size);
	  void drawBoxes();

	  GLuint textureID;
	  QGLShaderProgram* program;
	  QGLShader* vs;
	  QGLShader* fs;

	  bool created;
	  GLuint cubeVAO;
	  GLuint verticesVBO;
	  GLuint colorVBO;

  public:
	 void onPluginLoad();
	 void postFrame();

};

#endif
