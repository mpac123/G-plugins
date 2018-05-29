#include "frameRate.h"
#include "glwidget.h"
#include <iostream>

void FrameRate::updateFPS() {
  fps=fcnt;                 // establecer FPS
	std::cout << fps << std::endl;
  fcnt=0;                   // reset contador
  updateGL();   // refrescar pantalla
}

void FrameRate::onPluginLoad()
{
	// update frame count every second
  fps=fcnt=0;
  QTimer *frameTimer=new QTimer(this);
  connect(frameTimer, SIGNAL(timeout()), this, SLOT(updateFPS()));
  frameTimer->start(1000);


}

void FrameRate::preFrame()
{
	//std::cout << fps << std::endl;	
	++fcnt;
}
