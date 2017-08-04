QT += core gui printsupport quickwidgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11 no_keywords

unix {
    CONFIG += link_pkgconfig
    PKGCONFIG += gio-unix-2.0 glib-2.0 gobject-2.0 poppler-qt5
}

TARGET = printTest
TEMPLATE = app

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


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../build-cpd-Desktop_Qt_5_8_0_GCC_64bit-Debug/release/ -lcpd
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../build-cpd-Desktop_Qt_5_8_0_GCC_64bit-Debug/debug/ -lcpd
else:unix: LIBS += -L$$PWD/../build-cpd-Desktop_Qt_5_8_0_GCC_64bit-Debug/ -lcpd

INCLUDEPATH += $$PWD/../cpd
DEPENDPATH += $$PWD/../cpd

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../cpd/backends/cups/src/release/ -lCPDFrontend
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../cpd/backends/cups/src/debug/ -lCPDFrontend
else:unix: LIBS += -L$$PWD/../cpd/backends/cups/src/ -lCPDFrontend

INCLUDEPATH += $$PWD/../cpd/backends/cups/src
DEPENDPATH += $$PWD/../cpd/backends/cups/src
