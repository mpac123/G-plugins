// GLarena, a plugin based platform to teach OpenGL programming
// © Copyright 2012-2018, ViRVIG Research Group, UPC, https://www.virvig.eu
// 
// This file is part of GLarena
//
// GLarena is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

#include "drawSmooth.h"
#include "glwidget.h"
#include <cassert>
#include <cmath>

DrawSmooth::~DrawSmooth() {
  cleanUp();
}

void DrawSmooth::onSceneClear()
{
    cleanUp();
}

void DrawSmooth::cleanUp()
{
  GLWidget &g = *glwidget();
  g.glDeleteBuffers(coordBuffers.size(),  &coordBuffers[0]);
  g.glDeleteBuffers(normalBuffers.size(), &normalBuffers[0]);
  g.glDeleteBuffers(indexBuffers.size(), &indexBuffers[0]);
  g.glDeleteBuffers(stBuffers.size(),  &stBuffers[0]);
  g.glDeleteBuffers(colorBuffers.size(),  &colorBuffers[0]);
  g.glDeleteVertexArrays(VAOs.size(), &VAOs[0]);
  coordBuffers.clear();
  normalBuffers.clear();
  indexBuffers.clear();
  stBuffers.clear();
  colorBuffers.clear();
  VAOs.clear();
  numIndices.clear();
}

bool DrawSmooth::drawScene()
{
  GLWidget &g = *glwidget();
  g.makeCurrent();
  for(unsigned int i=0; i<VAOs.size(); i++) // for each buffer (that is, for each object)
    {
      cout << "  Object " << i << " with " << numIndices[i] << " indices " << endl;
      g.glBindVertexArray(VAOs[i]);
      g.glDrawArrays(GL_TRIANGLES, 0, numIndices[i]);
      cout << "  End " << endl;
    }	
  g.glBindVertexArray(0);
  return true;
}

void DrawSmooth::onPluginLoad()
{
  for(unsigned int i=0; i<scene()->objects().size(); i++)
    addVBO(i);
}

void DrawSmooth::onObjectAdd()
{
  addVBO( scene()->objects().size() - 1 );
}

void DrawSmooth::addVBO(unsigned int currentObject)
{
  //
  // For simplicity, we construct VBOs with replicated vertices (a copy
  // for each triangle to which they belong:
  //
  const Object& obj = scene()->objects()[currentObject];
  unsigned int numvertices = obj.faces().size()*3;  // it's all triangles...
  vector<float> vertices; // (x,y,z)    Final size: 9*number of triangles
  vector<float> normals;  // (nx,ny,nz) Final size: 9*number of triangles
  vector<float> colors;   // (r, g, b)  Final size: 9*number of triangles
  vector<float> st;// (s, t)     Final size: 6*number of triangles
  vector<int> indices;
  auto verts = obj.vertices();
  auto Ns = obj.vertNormals();
  auto texcords = obj.vertTexCoords();

  vector<Vector> VN(obj.vertices().size(), Vector(0,0,0));
  vector<int> VC(obj.vertices().size(), 0);
  for (auto&& f: obj.faces()) {
    const Vector &N = f.normal().normalized();
    for (int j=0; j<(int)f.numVertices(); ++j) {
      VN[f.vertexIndex(j)]+=N; 
      ++VC[f.vertexIndex(j)];
    }
  }
  for (int i=0; i<(int)verts.size(); ++i) {
    Vector N=VN[i]/VC[i];
    const Point &P=verts[i].coord();
    vertices.push_back(P.x()); vertices.push_back(P.y()); vertices.push_back(P.z());
    normals.push_back(N.x()); normals.push_back(N.y()); normals.push_back(N.z());
    float r=obj.boundingBox().radius();
    float s=Vector::dotProduct((1.0/r)*Vector(1,0,1), P);
    float t=Vector::dotProduct((1.0/r)*Vector(0,1,0), P);
    if ((int)verts.size()==81) {    // plane: special case for /assig models
      s=0.5f*(P.x()+1.0);
      t=0.5f*(P.y()+1.0);
    }
    if ((int)verts.size()==386) {   // cube: special case for /assig models
      s=Vector::dotProduct((1.0/2.0)*Vector(1,0,1), P);
      t=Vector::dotProduct((1.0/2.0)*Vector(0,1,0), P);
    }
    st.push_back(s);
    st.push_back(t);
    colors.push_back(abs(N.x()));
    colors.push_back(abs(N.y()));
    colors.push_back(abs(N.z()));
  }

  // Step 2: Create VAO and empty buffers (coords, normals, ...)
  GLWidget& g = *glwidget();
  GLuint VAO;
  g.glGenVertexArrays(1, &VAO);
  VAOs.push_back(VAO);
  g.glBindVertexArray(VAO);
  
  GLuint coordBufferID;
  g.glGenBuffers(1, &coordBufferID);
  coordBuffers.push_back(coordBufferID);
  
  GLuint normalBufferID;
  g.glGenBuffers(1, &normalBufferID);
  normalBuffers.push_back(normalBufferID);
  
  GLuint stBufferID;
  g.glGenBuffers(1, &stBufferID);
  stBuffers.push_back(stBufferID);
  
  GLuint colorBufferID;
  g.glGenBuffers(1, &colorBufferID);
  colorBuffers.push_back(colorBufferID);

  GLuint indexBufferID;
  g.glGenBuffers(1, &indexBufferID);
  indexBuffers.push_back(indexBufferID);
  
  numIndices.push_back(numvertices);
  // Step 3: Define VBO data (coords, normals, ...)
  g.glBindBuffer(GL_ARRAY_BUFFER, coordBufferID);
  g.glBufferData(GL_ARRAY_BUFFER, sizeof(float)*vertices.size(), &vertices[0], GL_STATIC_DRAW);
  g.glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, 0); 
  g.glEnableVertexAttribArray(0);

  g.glBindBuffer(GL_ARRAY_BUFFER, normalBufferID);
  g.glBufferData(GL_ARRAY_BUFFER, sizeof(float)*normals.size(), &normals[0], GL_STATIC_DRAW);
  g.glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 0, 0);
  g.glEnableVertexAttribArray(1);

  g.glBindBuffer(GL_ARRAY_BUFFER, colorBufferID);
  g.glBufferData(GL_ARRAY_BUFFER, sizeof(float)*colors.size(), &colors[0], GL_STATIC_DRAW);
  g.glVertexAttribPointer(2, 3, GL_FLOAT, GL_FALSE, 0, 0);
  g.glEnableVertexAttribArray(2);

  g.glBindBuffer(GL_ARRAY_BUFFER, stBufferID);
  g.glBufferData(GL_ARRAY_BUFFER, sizeof(float)*st.size(), &st[0], GL_STATIC_DRAW);
  g.glVertexAttribPointer(3, 2, GL_FLOAT, GL_FALSE, 0, 0);
  g.glEnableVertexAttribArray(3);
  
  g.glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, indexBuffers[currentObject]);
  g.glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(int)*indices.size(), &indices[0], GL_STATIC_DRAW);
  g.glBindBuffer(GL_ARRAY_BUFFER,0);
  g.glBindVertexArray(0);
}
