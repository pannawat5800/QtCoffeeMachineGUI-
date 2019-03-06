#include "orderform.h"
#include "ui_orderform.h"

OrderForm::OrderForm(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::OrderForm)
{
    ui->setupUi(this);
    /*ui->quickWidget->rootContext()->setContextProperty("orderWidget", this);
    ui->quickWidget->setSource(QUrl(QStringLiteral("qrc:/orderPage.qml")));
    ui->quickWidget->show();*/

}

OrderForm::~OrderForm()
{
    delete ui;
}


void OrderForm:: onOrder(QString coffee, QString milk, QString soy, QString sugar, QString coco)
{

}

void OrderForm:: onupdate(QString keyorder)
{

}

void OrderForm:: routeProduct(){
    emit(activateProduct());
}
