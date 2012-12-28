MOC_DIR = .moc
OBJECTS_DIR = .obj
UI_DIR = .ui

CONFIG += debug exceptions rtti stl thread
WARNINGS += -Wall

*-g++* {
  QMAKE_CXXFLAGS += -std=gnu++0x
}

*clang* {
  QMAKE_CXXFLAGS += -std=gnu++11
}

TEMPLATE = app

CONFIG += qt
QT += gui quick widgets

HEADERS = $$files(*.hpp)
SOURCES = $$files(*.cpp)
