/*  Copyright (c) MediaArea.net SARL. All Rights Reserved.
 *
 *  Use of this source code is governed by a GPLv3+/MPLv2+ license that can
 *  be found in the License.html file in the root of the source tree.
 */

#include "commonwebwindow.h"
#include "mainwindow.h"
#include "WebView.h"
#include "WebPage.h"
#include "progressbar.h"
#include <QFile>
#include <QProgressBar>

namespace MediaConch {

//***************************************************************************
// Constructor / Desructor
//***************************************************************************

CommonWebWindow::CommonWebWindow(MainWindow *p) : main_window(p)
{
}

CommonWebWindow::~CommonWebWindow()
{
}

//***************************************************************************
// Visual elements
//***************************************************************************

//---------------------------------------------------------------------------
void CommonWebWindow::display_html()
{
    QFile template_html(":/base.html");
    template_html.open(QIODevice::ReadOnly | QIODevice::Text);
    QString html(template_html.readAll());
    template_html.close();
    create_html(html);

    QUrl url;
#if QT_VERSION < 0x050700
    url = QUrl("qrc:/html"); //Without it, it works sometimes, depending of engine and version, so let it as before for Qt<5.7 as it is always working for Qt<5.7 and never for Qt>=5.7
    if (!url.isValid())
        return;
#endif

    main_window->web_view->setHtml(html.toUtf8());
}

}
