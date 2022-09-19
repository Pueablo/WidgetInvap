QT += qml quick webengine

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp \
        translator.cpp

RESOURCES += qml.qrc \
    imagenes.qrc

#lupdate_only{
#SOURCES+=main.qml
#SOURCES+= *.qml
#}

TRANSLATIONS += \
    Ejemplo_INVAP_es_MX.ts\
    ingles.ts

CONFIG += lrelease
CONFIG += embed_translations
#QT_DEBUG_PLUGINS=1
# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    ingles.qm

HEADERS += \
    translator.h
