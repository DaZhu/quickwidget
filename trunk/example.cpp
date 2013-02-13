#include <qapplication.h>

#include <QtQuick>

#include "quickwidget.hpp"

//////////////////////////////////////////////////////////////////////////////
int main(int argc, char* argv[])
{
  QApplication app(argc, argv);

  QQuickView* view(new QQuickView);

  view->setColor(Qt::transparent);

  view->setResizeMode(QQuickView::SizeViewToRootObject);

  view->setSource(QUrl::fromLocalFile(
    QCoreApplication::applicationDirPath() + "/example.qml"));

  QuickWidget quickWidget(view);

  quickWidget.show();

  return app.exec();
}
