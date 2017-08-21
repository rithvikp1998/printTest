QT += core gui printsupport quickwidgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11 no_keywords

unix {
    CONFIG += link_pkgconfig
    PKGCONFIG += gio-unix-2.0 glib-2.0 gobject-2.0 poppler-qt5
}

TARGET = printTest
TEMPLATE = app
DESTDIR = $$PWD/build

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui

BACKENDS_DIR = $$PWD/../cpd/backends
LIBCPD_DIR = $$PWD/../cpd/build

win32:CONFIG(release, debug|release): LIBS += -L$$LIBCPD_DIR/release/ -lcpd
else:win32:CONFIG(debug, debug|release): LIBS += -L$$LIBCPD_DIR/debug/ -lcpd
else:unix: LIBS += -L$$LIBCPD_DIR/ -lcpd

INCLUDEPATH += $$LIBCPD_DIR/../
DEPENDPATH += $$LIBCPD_DIR/../

win32:CONFIG(release, debug|release): LIBS += -L$$BACKENDS_DIR/cups/src/release/ -lCPDFrontend
else:win32:CONFIG(debug, debug|release): LIBS += -L$$BACKENDS_DIR/cups/src/debug/ -lCPDFrontend
else:unix: LIBS += -L$$BACKENDS_DIR/cups/src/ -lCPDFrontend

INCLUDEPATH += $$BACKENDS_DIR/cups/src
DEPENDPATH += $$BACKENDS_DIR/cups/src
