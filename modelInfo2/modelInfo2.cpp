#include "modelInfo2.h"
#include "glwidget.h"
#include <iostream>
#include <QPainter>


QString ModelInfo2::printModelInfo()
{
	int nrObjects = scene()->objects().size();
	int nrPolygons = 0;
	int nrVertices = 0;
	int nrTriangles = 0;
	
	for (int i=0; i<nrObjects; i++) {
		int nrFaces=scene()->objects()[i].faces().size();
		nrPolygons+=nrFaces;
		for (int j=0; j<nrFaces; j++) {
			int nrVerts = scene()->objects()[i].faces()[j].numVertices();
			if (nrVerts==3) nrTriangles++;
			nrVertices+=nrVerts;
		}
	}
	return QString("Objects: %1, Vertices: %2, Polygons: %3, % triagnles: %4%\n").arg(nrObjects).arg(nrVertices).arg(nrPolygons).arg((nrTriangles/nrPolygons)*100);
}

void ModelInfo2::onPluginLoad()
{
  glwidget()->makeCurrent();
    // Carregar shader, compile & link 
    
	//QString vs_src = "#version 330 core in vec3 vertex; void main(){gl_Position    = vec4(vertex,1.0);}";
	vs = new QOpenGLShader(QOpenGLShader::Vertex, this);
    vs->compileSourceFile("/home/marta/FIB/G/Viewer/plugins/show-help/show.vert");
	//vs->compileSourceFile(vs_src);

    
	//QString fs_src = "#version 330 core out vec4 fragColor; uniform sampler2D colorMap; uniform float WIDTH; uniform float HEIGHT; void main(){ vec2 st = (gl_FragCoord.xy - vec2(0.5)) / vec2(WIDTH, HEIGHT); fragColor = texture(colorMap, st); if (all(equal(fragColor.rgb,vec3(1.0)))) discard;   }";
	fs = new QOpenGLShader(QOpenGLShader::Fragment, this);
    fs->compileSourceFile("/home/marta/FIB/G/Viewer/plugins/show-help/show.frag");
	//fs->compileSourceFile(fs_src);
    program = new QOpenGLShaderProgram(this);
    program->addShader(vs);
    program->addShader(fs);
    program->link();
}

void drawRect(GLWidget &g)
{
    static bool created = false;
    static GLuint VAO_rect;

    // 1. Create VBO Buffers
    if (!created)
    {
        created = true;
        
        // Create & bind empty VAO
        g.glGenVertexArrays(1, &VAO_rect);
        g.glBindVertexArray(VAO_rect);

        float z = -0.99999;
        // Create VBO with (x,y,z) coordinates
        float coords[] = { -1, -1, z, 
                            1, -1, z, 
                           -1,  1, z, 
                            1,  1, z};

        GLuint VBO_coords;
        g.glGenBuffers(1, &VBO_coords);
        g.glBindBuffer(GL_ARRAY_BUFFER, VBO_coords);
        g.glBufferData(GL_ARRAY_BUFFER, sizeof(coords), coords, GL_STATIC_DRAW);
        g.glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, 0);
        g.glEnableVertexAttribArray(0);
        g.glBindVertexArray(0);
    }

    // 2. Draw
    g.glBindVertexArray (VAO_rect);
    g.glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
    g.glBindVertexArray(0);
}

void ModelInfo2::postFrame() 
{
  GLWidget &g=*glwidget();
  g.makeCurrent();
    const int SIZE = 1024;
    // 1. Create image with text
    QImage image(SIZE,SIZE,QImage::Format_RGB32);
    image.fill(Qt::white);    
    QPainter painter;
    painter.begin(&image);
    QFont font;
    font.setPixelSize(32);
    painter.setFont(font);
    painter.setPen(QColor(50,50,50));
    int x = 15;
    int y = 50;
    painter.drawText(x, y, printModelInfo());    
    painter.end();

    // 2. Create texture
    const int textureUnit = 5;
    g.glActiveTexture(GL_TEXTURE0+textureUnit);
    QImage im0 = image.mirrored(false, true).convertToFormat(QImage::Format_RGBA8888, Qt::ColorOnly);
	g.glGenTextures( 1, &textureID);
	g.glBindTexture(GL_TEXTURE_2D, textureID);
	g.glTexImage2D( GL_TEXTURE_2D, 0, GL_RGBA, im0.width(), im0.height(), 0, GL_RGBA, GL_UNSIGNED_BYTE, im0.bits());
	g.glGenerateMipmap(GL_TEXTURE_2D);
	glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR );
	g.glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
	g.glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT );
	g.glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT );
	
    // Pass 2. Draw quad using texture
    program->bind();
    program->setUniformValue("colorMap", textureUnit);
    program->setUniformValue("WIDTH", float(glwidget()->width()));
    program->setUniformValue("HEIGHT", float(glwidget()->height()));    
 
    // quad covering viewport 
    drawRect(g);
    program->release();
    g.glBindTexture(GL_TEXTURE_2D, 0);

    
    g.glDeleteTextures(1, &textureID);


}


