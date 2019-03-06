#include "completeform.h"
#include "ui_completeform.h"

CompleteForm::CompleteForm(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::CompleteForm)
{
    ui->setupUi(this);
    /*ui->quickWidget->rootContext()->setContextProperty("mainWidget", this);
    ui->quickWidget->setSource(QUrl(QStringLiteral("qrc:/completePage.qml")));
    ui->quickWidget->show();*/
}

CompleteForm::~CompleteForm()
{
    delete ui;
}

