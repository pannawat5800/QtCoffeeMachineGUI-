#include "advertisementform.h"
#include "ui_advertisementform.h"

AdvertisementForm::AdvertisementForm(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::AdvertisementForm)
{
    ui->setupUi(this);
    //ui->quickWidget->rootContext()->setContextProperty("advertisWidget", this);
}

AdvertisementForm::~AdvertisementForm()
{
    delete ui;
}

void AdvertisementForm::activateLogin()
{
    qDebug() << "go to login";
    emit gotoLogin();
}
