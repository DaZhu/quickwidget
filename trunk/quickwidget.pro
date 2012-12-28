TEMPLATE = app

MOC_DIR = .moc
OBJECTS_DIR = .obj
UI_DIR = .ui

CONFIG += debug exceptions rtti stl thread
WARNINGS += -Wall

CONFIG += qt
QT += gui quick widgets

HEADERS = $$files(*.hpp)
SOURCES = $$files(*.cpp)
