#include "operationform.h"
#include "ui_operationform.h"

OperationForm::OperationForm(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::OperationForm)
{
    ui->setupUi(this);
    //ui->quickWidget->rootContext()->setContextProperty("mainWidget", this);
    /*ui->quickWidget->setSource(QUrl(QStringLiteral("qrc:/main.qml")));
    ui->quickWidget->show();*/

}

OperationForm::~OperationForm()
{
    delete ui;
}

void OperationForm::onselected(QString menu)
{

    setSelectedMenu(menu);
    emit activateFilling();
}

void OperationForm::setSelectedMenu(QString menu)
{
    coffee = menu;
}

void OperationForm:: onFilling()
{
     emit activateComplete();
}

void OperationForm:: onOrdering(){

    emit activateOrder();
    //ui->quickWidget->Loading;
}


