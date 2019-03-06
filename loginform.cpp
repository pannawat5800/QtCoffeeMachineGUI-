#include "loginform.h"
#include "ui_loginform.h"

LoginForm::LoginForm(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::LoginForm)
{
    ui->setupUi(this);
    /*ui->quickWidgetLogin->rootContext()->setContextProperty("loginWidget", this);
    ui->quickWidgetLogin->setSource(QUrl(QStringLiteral("qrc:/login.qml")));
    ui->quickWidgetLogin->show();*/

}

LoginForm::~LoginForm()
{
    delete ui;
}

void LoginForm::loginUser(QString id)
{
    qDebug()<< id;
    qDebug()<< "+++++++++++++++++++++++++++++++++++++";
    //emit activateOperation();
    /*ui->quickWidgetLogin->rootContext()->setContextProperty("loginWidget", this);
    ui->quickWidgetLogin->setSource(QUrl(QStringLiteral("qrc:/main.qml")));
    ui->quickWidgetLogin->show();*/
}
