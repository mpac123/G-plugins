#include "modelinfo.h"
#include "glwidget.h"
#include <iostream>


void Modelinfo::printModelInfo()
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
	std::cout << "Objects: " << nrObjects << std::endl
		<< "Vertices: " << nrVertices << std::endl
		<< "Polygons: " << nrPolygons << std::endl
		<< "% triagnles: " << (nrTriangles/nrPolygons)*100 << "%\n";
	
}
void Modelinfo::postFrame()
{
	printModelInfo();
}


