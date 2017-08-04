#-------------------------------------------------
#
# Project created by QtCreator 2017-07-20T17:06:33
#
#-------------------------------------------------

QT       += core gui printsupport quickwidgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

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

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../build-cpd-Desktop_Qt_5_8_0_GCC_64bit-Debug/release/ -lcpd \
                                              -L$$$$PWD/../../PrintDialog_Backend/src/ -lcpd
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../build-cpd-Desktop_Qt_5_8_0_GCC_64bit-Debug/debug/ -lcpd \
                                                 -L$$$$PWD/../../PrintDialog_Backend/src/ -lcpd
else:unix: LIBS += -L$$PWD/../build-cpd-Desktop_Qt_5_8_0_GCC_64bit-Debug/ -lcpd \
                   -L$$$$PWD/../../PrintDialog_Backend/src/ -lcpd

INCLUDEPATH += $$PWD/../cpd $$PWD/../../PrintDialog_Backend/src
DEPENDPATH += $$PWD/../cpd $$PWD/../../PrintDialog_Backend/src
