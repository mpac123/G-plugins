#ifndef _MODELINFO_H
#define _MODELINFO_H

#include "plugin.h" 

class ModelInfo2: public QObject, public Plugin
{
	Q_OBJECT
	Q_PLUGIN_METADATA(IID "Plugin") 
	Q_INTERFACES(Plugin)

  public:
	 void postFrame();
    void onPluginLoad() Q_DECL_OVERRIDE;

  private:
	QString printModelInfo();
	// add private methods and attributes here
    GLuint textureID;
    QOpenGLShaderProgram* program;
    QOpenGLShader* vs;
    QOpenGLShader* fs;
};

#endif
