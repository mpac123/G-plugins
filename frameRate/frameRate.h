#ifndef _FRAMERATE_H
#define _FRAMERATE_H

#include "plugin.h" 

class FrameRate: public QObject, public Plugin
{
	Q_OBJECT
	Q_PLUGIN_METADATA(IID "Plugin") 
	Q_INTERFACES(Plugin)

	int fcnt;
	int fps;

  public:
	 void onPluginLoad();
	 void preFrame();
  public slots:
	void updateFPS();
};

#endif
