#############################################################################
# Makefile for building: plugins
# Generated by qmake (3.0) (Qt 5.5.1)
# Project:  plugins.pro
# Template: subdirs
# Command: /usr/lib/x86_64-linux-gnu/qt5/bin/qmake -o Makefile plugins.pro
#############################################################################

MAKEFILE      = Makefile

first: make_first
QMAKE         = /usr/lib/x86_64-linux-gnu/qt5/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = cp -f -R
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = plugins1.0.0
DISTDIR = /home/marta/FIB/G/Viewer/plugins/.tmp/plugins1.0.0
SUBTARGETS    =  \
		sub-drawvbong \
		sub-navigate-default \
		sub-render-default \
		sub-shaderLoader \
		sub-pluginLoader \
		sub-effect-crt \
		sub-show-help \
		sub-alphablending


sub-drawvbong-qmake_all:  FORCE
	@test -d drawvbong/ || mkdir -p drawvbong/
	cd drawvbong/ && $(QMAKE) /home/marta/FIB/G/Viewer/plugins/drawvbong/drawvbong.pro -o Makefile
	cd drawvbong/ && $(MAKE) -f Makefile qmake_all
sub-drawvbong: FORCE
	@test -d drawvbong/ || mkdir -p drawvbong/
	cd drawvbong/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/drawvbong/drawvbong.pro -o Makefile ) && $(MAKE) -f Makefile
sub-drawvbong-make_first: FORCE
	@test -d drawvbong/ || mkdir -p drawvbong/
	cd drawvbong/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/drawvbong/drawvbong.pro -o Makefile ) && $(MAKE) -f Makefile 
sub-drawvbong-all: FORCE
	@test -d drawvbong/ || mkdir -p drawvbong/
	cd drawvbong/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/drawvbong/drawvbong.pro -o Makefile ) && $(MAKE) -f Makefile all
sub-drawvbong-clean: FORCE
	@test -d drawvbong/ || mkdir -p drawvbong/
	cd drawvbong/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/drawvbong/drawvbong.pro -o Makefile ) && $(MAKE) -f Makefile clean
sub-drawvbong-distclean: FORCE
	@test -d drawvbong/ || mkdir -p drawvbong/
	cd drawvbong/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/drawvbong/drawvbong.pro -o Makefile ) && $(MAKE) -f Makefile distclean
sub-drawvbong-install_subtargets: FORCE
	@test -d drawvbong/ || mkdir -p drawvbong/
	cd drawvbong/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/drawvbong/drawvbong.pro -o Makefile ) && $(MAKE) -f Makefile install
sub-drawvbong-uninstall_subtargets: FORCE
	@test -d drawvbong/ || mkdir -p drawvbong/
	cd drawvbong/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/drawvbong/drawvbong.pro -o Makefile ) && $(MAKE) -f Makefile uninstall
sub-navigate-default-qmake_all:  FORCE
	@test -d navigate-default/ || mkdir -p navigate-default/
	cd navigate-default/ && $(QMAKE) /home/marta/FIB/G/Viewer/plugins/navigate-default/navigate-default.pro -o Makefile
	cd navigate-default/ && $(MAKE) -f Makefile qmake_all
sub-navigate-default: FORCE
	@test -d navigate-default/ || mkdir -p navigate-default/
	cd navigate-default/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/navigate-default/navigate-default.pro -o Makefile ) && $(MAKE) -f Makefile
sub-navigate-default-make_first: FORCE
	@test -d navigate-default/ || mkdir -p navigate-default/
	cd navigate-default/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/navigate-default/navigate-default.pro -o Makefile ) && $(MAKE) -f Makefile 
sub-navigate-default-all: FORCE
	@test -d navigate-default/ || mkdir -p navigate-default/
	cd navigate-default/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/navigate-default/navigate-default.pro -o Makefile ) && $(MAKE) -f Makefile all
sub-navigate-default-clean: FORCE
	@test -d navigate-default/ || mkdir -p navigate-default/
	cd navigate-default/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/navigate-default/navigate-default.pro -o Makefile ) && $(MAKE) -f Makefile clean
sub-navigate-default-distclean: FORCE
	@test -d navigate-default/ || mkdir -p navigate-default/
	cd navigate-default/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/navigate-default/navigate-default.pro -o Makefile ) && $(MAKE) -f Makefile distclean
sub-navigate-default-install_subtargets: FORCE
	@test -d navigate-default/ || mkdir -p navigate-default/
	cd navigate-default/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/navigate-default/navigate-default.pro -o Makefile ) && $(MAKE) -f Makefile install
sub-navigate-default-uninstall_subtargets: FORCE
	@test -d navigate-default/ || mkdir -p navigate-default/
	cd navigate-default/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/navigate-default/navigate-default.pro -o Makefile ) && $(MAKE) -f Makefile uninstall
sub-render-default-qmake_all:  FORCE
	@test -d render-default/ || mkdir -p render-default/
	cd render-default/ && $(QMAKE) /home/marta/FIB/G/Viewer/plugins/render-default/render-default.pro -o Makefile
	cd render-default/ && $(MAKE) -f Makefile qmake_all
sub-render-default: FORCE
	@test -d render-default/ || mkdir -p render-default/
	cd render-default/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/render-default/render-default.pro -o Makefile ) && $(MAKE) -f Makefile
sub-render-default-make_first: FORCE
	@test -d render-default/ || mkdir -p render-default/
	cd render-default/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/render-default/render-default.pro -o Makefile ) && $(MAKE) -f Makefile 
sub-render-default-all: FORCE
	@test -d render-default/ || mkdir -p render-default/
	cd render-default/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/render-default/render-default.pro -o Makefile ) && $(MAKE) -f Makefile all
sub-render-default-clean: FORCE
	@test -d render-default/ || mkdir -p render-default/
	cd render-default/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/render-default/render-default.pro -o Makefile ) && $(MAKE) -f Makefile clean
sub-render-default-distclean: FORCE
	@test -d render-default/ || mkdir -p render-default/
	cd render-default/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/render-default/render-default.pro -o Makefile ) && $(MAKE) -f Makefile distclean
sub-render-default-install_subtargets: FORCE
	@test -d render-default/ || mkdir -p render-default/
	cd render-default/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/render-default/render-default.pro -o Makefile ) && $(MAKE) -f Makefile install
sub-render-default-uninstall_subtargets: FORCE
	@test -d render-default/ || mkdir -p render-default/
	cd render-default/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/render-default/render-default.pro -o Makefile ) && $(MAKE) -f Makefile uninstall
sub-shaderLoader-qmake_all:  FORCE
	@test -d shaderLoader/ || mkdir -p shaderLoader/
	cd shaderLoader/ && $(QMAKE) /home/marta/FIB/G/Viewer/plugins/shaderLoader/shaderLoader.pro -o Makefile
	cd shaderLoader/ && $(MAKE) -f Makefile qmake_all
sub-shaderLoader: FORCE
	@test -d shaderLoader/ || mkdir -p shaderLoader/
	cd shaderLoader/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/shaderLoader/shaderLoader.pro -o Makefile ) && $(MAKE) -f Makefile
sub-shaderLoader-make_first: FORCE
	@test -d shaderLoader/ || mkdir -p shaderLoader/
	cd shaderLoader/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/shaderLoader/shaderLoader.pro -o Makefile ) && $(MAKE) -f Makefile 
sub-shaderLoader-all: FORCE
	@test -d shaderLoader/ || mkdir -p shaderLoader/
	cd shaderLoader/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/shaderLoader/shaderLoader.pro -o Makefile ) && $(MAKE) -f Makefile all
sub-shaderLoader-clean: FORCE
	@test -d shaderLoader/ || mkdir -p shaderLoader/
	cd shaderLoader/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/shaderLoader/shaderLoader.pro -o Makefile ) && $(MAKE) -f Makefile clean
sub-shaderLoader-distclean: FORCE
	@test -d shaderLoader/ || mkdir -p shaderLoader/
	cd shaderLoader/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/shaderLoader/shaderLoader.pro -o Makefile ) && $(MAKE) -f Makefile distclean
sub-shaderLoader-install_subtargets: FORCE
	@test -d shaderLoader/ || mkdir -p shaderLoader/
	cd shaderLoader/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/shaderLoader/shaderLoader.pro -o Makefile ) && $(MAKE) -f Makefile install
sub-shaderLoader-uninstall_subtargets: FORCE
	@test -d shaderLoader/ || mkdir -p shaderLoader/
	cd shaderLoader/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/shaderLoader/shaderLoader.pro -o Makefile ) && $(MAKE) -f Makefile uninstall
sub-pluginLoader-qmake_all:  FORCE
	@test -d pluginLoader/ || mkdir -p pluginLoader/
	cd pluginLoader/ && $(QMAKE) /home/marta/FIB/G/Viewer/plugins/pluginLoader/pluginLoader.pro -o Makefile
	cd pluginLoader/ && $(MAKE) -f Makefile qmake_all
sub-pluginLoader: FORCE
	@test -d pluginLoader/ || mkdir -p pluginLoader/
	cd pluginLoader/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/pluginLoader/pluginLoader.pro -o Makefile ) && $(MAKE) -f Makefile
sub-pluginLoader-make_first: FORCE
	@test -d pluginLoader/ || mkdir -p pluginLoader/
	cd pluginLoader/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/pluginLoader/pluginLoader.pro -o Makefile ) && $(MAKE) -f Makefile 
sub-pluginLoader-all: FORCE
	@test -d pluginLoader/ || mkdir -p pluginLoader/
	cd pluginLoader/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/pluginLoader/pluginLoader.pro -o Makefile ) && $(MAKE) -f Makefile all
sub-pluginLoader-clean: FORCE
	@test -d pluginLoader/ || mkdir -p pluginLoader/
	cd pluginLoader/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/pluginLoader/pluginLoader.pro -o Makefile ) && $(MAKE) -f Makefile clean
sub-pluginLoader-distclean: FORCE
	@test -d pluginLoader/ || mkdir -p pluginLoader/
	cd pluginLoader/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/pluginLoader/pluginLoader.pro -o Makefile ) && $(MAKE) -f Makefile distclean
sub-pluginLoader-install_subtargets: FORCE
	@test -d pluginLoader/ || mkdir -p pluginLoader/
	cd pluginLoader/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/pluginLoader/pluginLoader.pro -o Makefile ) && $(MAKE) -f Makefile install
sub-pluginLoader-uninstall_subtargets: FORCE
	@test -d pluginLoader/ || mkdir -p pluginLoader/
	cd pluginLoader/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/pluginLoader/pluginLoader.pro -o Makefile ) && $(MAKE) -f Makefile uninstall
sub-effect-crt-qmake_all:  FORCE
	@test -d effect-crt/ || mkdir -p effect-crt/
	cd effect-crt/ && $(QMAKE) /home/marta/FIB/G/Viewer/plugins/effect-crt/effect-crt.pro -o Makefile
	cd effect-crt/ && $(MAKE) -f Makefile qmake_all
sub-effect-crt: FORCE
	@test -d effect-crt/ || mkdir -p effect-crt/
	cd effect-crt/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/effect-crt/effect-crt.pro -o Makefile ) && $(MAKE) -f Makefile
sub-effect-crt-make_first: FORCE
	@test -d effect-crt/ || mkdir -p effect-crt/
	cd effect-crt/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/effect-crt/effect-crt.pro -o Makefile ) && $(MAKE) -f Makefile 
sub-effect-crt-all: FORCE
	@test -d effect-crt/ || mkdir -p effect-crt/
	cd effect-crt/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/effect-crt/effect-crt.pro -o Makefile ) && $(MAKE) -f Makefile all
sub-effect-crt-clean: FORCE
	@test -d effect-crt/ || mkdir -p effect-crt/
	cd effect-crt/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/effect-crt/effect-crt.pro -o Makefile ) && $(MAKE) -f Makefile clean
sub-effect-crt-distclean: FORCE
	@test -d effect-crt/ || mkdir -p effect-crt/
	cd effect-crt/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/effect-crt/effect-crt.pro -o Makefile ) && $(MAKE) -f Makefile distclean
sub-effect-crt-install_subtargets: FORCE
	@test -d effect-crt/ || mkdir -p effect-crt/
	cd effect-crt/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/effect-crt/effect-crt.pro -o Makefile ) && $(MAKE) -f Makefile install
sub-effect-crt-uninstall_subtargets: FORCE
	@test -d effect-crt/ || mkdir -p effect-crt/
	cd effect-crt/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/effect-crt/effect-crt.pro -o Makefile ) && $(MAKE) -f Makefile uninstall
sub-show-help-qmake_all:  FORCE
	@test -d show-help/ || mkdir -p show-help/
	cd show-help/ && $(QMAKE) /home/marta/FIB/G/Viewer/plugins/show-help/show-help.pro -o Makefile
	cd show-help/ && $(MAKE) -f Makefile qmake_all
sub-show-help: FORCE
	@test -d show-help/ || mkdir -p show-help/
	cd show-help/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/show-help/show-help.pro -o Makefile ) && $(MAKE) -f Makefile
sub-show-help-make_first: FORCE
	@test -d show-help/ || mkdir -p show-help/
	cd show-help/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/show-help/show-help.pro -o Makefile ) && $(MAKE) -f Makefile 
sub-show-help-all: FORCE
	@test -d show-help/ || mkdir -p show-help/
	cd show-help/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/show-help/show-help.pro -o Makefile ) && $(MAKE) -f Makefile all
sub-show-help-clean: FORCE
	@test -d show-help/ || mkdir -p show-help/
	cd show-help/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/show-help/show-help.pro -o Makefile ) && $(MAKE) -f Makefile clean
sub-show-help-distclean: FORCE
	@test -d show-help/ || mkdir -p show-help/
	cd show-help/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/show-help/show-help.pro -o Makefile ) && $(MAKE) -f Makefile distclean
sub-show-help-install_subtargets: FORCE
	@test -d show-help/ || mkdir -p show-help/
	cd show-help/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/show-help/show-help.pro -o Makefile ) && $(MAKE) -f Makefile install
sub-show-help-uninstall_subtargets: FORCE
	@test -d show-help/ || mkdir -p show-help/
	cd show-help/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/show-help/show-help.pro -o Makefile ) && $(MAKE) -f Makefile uninstall
sub-alphablending-qmake_all:  FORCE
	@test -d alphablending/ || mkdir -p alphablending/
	cd alphablending/ && $(QMAKE) /home/marta/FIB/G/Viewer/plugins/alphablending/alphablending.pro -o Makefile
	cd alphablending/ && $(MAKE) -f Makefile qmake_all
sub-alphablending: FORCE
	@test -d alphablending/ || mkdir -p alphablending/
	cd alphablending/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/alphablending/alphablending.pro -o Makefile ) && $(MAKE) -f Makefile
sub-alphablending-make_first: FORCE
	@test -d alphablending/ || mkdir -p alphablending/
	cd alphablending/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/alphablending/alphablending.pro -o Makefile ) && $(MAKE) -f Makefile 
sub-alphablending-all: FORCE
	@test -d alphablending/ || mkdir -p alphablending/
	cd alphablending/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/alphablending/alphablending.pro -o Makefile ) && $(MAKE) -f Makefile all
sub-alphablending-clean: FORCE
	@test -d alphablending/ || mkdir -p alphablending/
	cd alphablending/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/alphablending/alphablending.pro -o Makefile ) && $(MAKE) -f Makefile clean
sub-alphablending-distclean: FORCE
	@test -d alphablending/ || mkdir -p alphablending/
	cd alphablending/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/alphablending/alphablending.pro -o Makefile ) && $(MAKE) -f Makefile distclean
sub-alphablending-install_subtargets: FORCE
	@test -d alphablending/ || mkdir -p alphablending/
	cd alphablending/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/alphablending/alphablending.pro -o Makefile ) && $(MAKE) -f Makefile install
sub-alphablending-uninstall_subtargets: FORCE
	@test -d alphablending/ || mkdir -p alphablending/
	cd alphablending/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/alphablending/alphablending.pro -o Makefile ) && $(MAKE) -f Makefile uninstall

Makefile: plugins.pro /usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf \
		plugins.pro
	$(QMAKE) -o Makefile plugins.pro
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf:
plugins.pro:
qmake: FORCE
	@$(QMAKE) -o Makefile plugins.pro

qmake_all: sub-drawvbong-qmake_all sub-navigate-default-qmake_all sub-render-default-qmake_all sub-shaderLoader-qmake_all sub-pluginLoader-qmake_all sub-effect-crt-qmake_all sub-show-help-qmake_all sub-alphablending-qmake_all FORCE

make_first: sub-drawvbong-make_first sub-navigate-default-make_first sub-render-default-make_first sub-shaderLoader-make_first sub-pluginLoader-make_first sub-effect-crt-make_first sub-show-help-make_first sub-alphablending-make_first  FORCE
all: sub-drawvbong-all sub-navigate-default-all sub-render-default-all sub-shaderLoader-all sub-pluginLoader-all sub-effect-crt-all sub-show-help-all sub-alphablending-all  FORCE
clean: sub-drawvbong-clean sub-navigate-default-clean sub-render-default-clean sub-shaderLoader-clean sub-pluginLoader-clean sub-effect-crt-clean sub-show-help-clean sub-alphablending-clean  FORCE
distclean: sub-drawvbong-distclean sub-navigate-default-distclean sub-render-default-distclean sub-shaderLoader-distclean sub-pluginLoader-distclean sub-effect-crt-distclean sub-show-help-distclean sub-alphablending-distclean  FORCE
	-$(DEL_FILE) Makefile
install_subtargets: sub-drawvbong-install_subtargets sub-navigate-default-install_subtargets sub-render-default-install_subtargets sub-shaderLoader-install_subtargets sub-pluginLoader-install_subtargets sub-effect-crt-install_subtargets sub-show-help-install_subtargets sub-alphablending-install_subtargets FORCE
uninstall_subtargets: sub-drawvbong-uninstall_subtargets sub-navigate-default-uninstall_subtargets sub-render-default-uninstall_subtargets sub-shaderLoader-uninstall_subtargets sub-pluginLoader-uninstall_subtargets sub-effect-crt-uninstall_subtargets sub-show-help-uninstall_subtargets sub-alphablending-uninstall_subtargets FORCE

sub-drawvbong-check:
	@test -d drawvbong/ || mkdir -p drawvbong/
	cd drawvbong/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/drawvbong/drawvbong.pro -o Makefile ) && $(MAKE) -f Makefile check
sub-navigate-default-check:
	@test -d navigate-default/ || mkdir -p navigate-default/
	cd navigate-default/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/navigate-default/navigate-default.pro -o Makefile ) && $(MAKE) -f Makefile check
sub-render-default-check:
	@test -d render-default/ || mkdir -p render-default/
	cd render-default/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/render-default/render-default.pro -o Makefile ) && $(MAKE) -f Makefile check
sub-shaderLoader-check:
	@test -d shaderLoader/ || mkdir -p shaderLoader/
	cd shaderLoader/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/shaderLoader/shaderLoader.pro -o Makefile ) && $(MAKE) -f Makefile check
sub-pluginLoader-check:
	@test -d pluginLoader/ || mkdir -p pluginLoader/
	cd pluginLoader/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/pluginLoader/pluginLoader.pro -o Makefile ) && $(MAKE) -f Makefile check
sub-effect-crt-check:
	@test -d effect-crt/ || mkdir -p effect-crt/
	cd effect-crt/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/effect-crt/effect-crt.pro -o Makefile ) && $(MAKE) -f Makefile check
sub-show-help-check:
	@test -d show-help/ || mkdir -p show-help/
	cd show-help/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/show-help/show-help.pro -o Makefile ) && $(MAKE) -f Makefile check
sub-alphablending-check:
	@test -d alphablending/ || mkdir -p alphablending/
	cd alphablending/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/alphablending/alphablending.pro -o Makefile ) && $(MAKE) -f Makefile check
check: sub-drawvbong-check sub-navigate-default-check sub-render-default-check sub-shaderLoader-check sub-pluginLoader-check sub-effect-crt-check sub-show-help-check sub-alphablending-check
install:install_subtargets  FORCE

uninstall: uninstall_subtargets FORCE

FORCE:

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: sub-drawvbong-distdir sub-navigate-default-distdir sub-render-default-distdir sub-shaderLoader-distdir sub-pluginLoader-distdir sub-effect-crt-distdir sub-show-help-distdir sub-alphablending-distdir FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf plugins.pro $(DISTDIR)/

sub-drawvbong-distdir: FORCE
	@test -d drawvbong/ || mkdir -p drawvbong/
	cd drawvbong/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/drawvbong/drawvbong.pro -o Makefile ) && $(MAKE) -e -f Makefile distdir DISTDIR=$(DISTDIR)/drawvbong

sub-navigate-default-distdir: FORCE
	@test -d navigate-default/ || mkdir -p navigate-default/
	cd navigate-default/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/navigate-default/navigate-default.pro -o Makefile ) && $(MAKE) -e -f Makefile distdir DISTDIR=$(DISTDIR)/navigate-default

sub-render-default-distdir: FORCE
	@test -d render-default/ || mkdir -p render-default/
	cd render-default/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/render-default/render-default.pro -o Makefile ) && $(MAKE) -e -f Makefile distdir DISTDIR=$(DISTDIR)/render-default

sub-shaderLoader-distdir: FORCE
	@test -d shaderLoader/ || mkdir -p shaderLoader/
	cd shaderLoader/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/shaderLoader/shaderLoader.pro -o Makefile ) && $(MAKE) -e -f Makefile distdir DISTDIR=$(DISTDIR)/shaderLoader

sub-pluginLoader-distdir: FORCE
	@test -d pluginLoader/ || mkdir -p pluginLoader/
	cd pluginLoader/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/pluginLoader/pluginLoader.pro -o Makefile ) && $(MAKE) -e -f Makefile distdir DISTDIR=$(DISTDIR)/pluginLoader

sub-effect-crt-distdir: FORCE
	@test -d effect-crt/ || mkdir -p effect-crt/
	cd effect-crt/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/effect-crt/effect-crt.pro -o Makefile ) && $(MAKE) -e -f Makefile distdir DISTDIR=$(DISTDIR)/effect-crt

sub-show-help-distdir: FORCE
	@test -d show-help/ || mkdir -p show-help/
	cd show-help/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/show-help/show-help.pro -o Makefile ) && $(MAKE) -e -f Makefile distdir DISTDIR=$(DISTDIR)/show-help

sub-alphablending-distdir: FORCE
	@test -d alphablending/ || mkdir -p alphablending/
	cd alphablending/ && ( test -e Makefile || $(QMAKE) /home/marta/FIB/G/Viewer/plugins/alphablending/alphablending.pro -o Makefile ) && $(MAKE) -e -f Makefile distdir DISTDIR=$(DISTDIR)/alphablending

