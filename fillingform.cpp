#include "fillingform.h"
#include "ui_fillingform.h"

FillingForm::FillingForm(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::FillingForm)
{
    ui->setupUi(this);
    /*ui->quickWidget->rootContext()->setContextProperty("fillWidget", this);
    ui->quickWidget->setSource(QUrl(QStringLiteral("qrc:/fillingPage.qml")));
    ui->quickWidget->show();*/
}

FillingForm::~FillingForm()
{
    delete ui;
}

void FillingForm:: confirm(int coffee, int sugar, int milk, int soy, int coco)
{

}

void FillingForm:: cancle()
{
    emit routetoback();
}

