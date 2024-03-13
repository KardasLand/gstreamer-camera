QT += quick

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp \
        videoitem.cpp

RESOURCES += qml.qrc

CONFIG += link_pkgconfig
CONFIG += opencv4
PKGCONFIG += opencv4
PKGCONFIG += glib-2.0
PKGCONFIG += gstreamer-1.0
PKGCONFIG += gstreamer-app-1.0
PKGCONFIG += gobject-2.0
PKGCONFIG += gstreamer-pbutils-1.0
INCLUDEPATH += /usr/include/gstreamer-1.0
INCLUDEPATH += pkg-config --cflags glib-2.0
# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    videoitem.h
