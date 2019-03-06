#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    m_speech = new QTextToSpeech(this);
    ui->quickWidget->rootContext()->setContextProperty("mainWidget", this);
    navigationPage(0);


    /*ui->stackedWidget->insertWidget(0, &advertise);
    ui->stackedWidget->insertWidget(1, &login);
    ui->stackedWidget->insertWidget(2, &operation);
    ui->stackedWidget->insertWidget(3, &filling);
    ui->stackedWidget->insertWidget(4, &order);
    ui->stackedWidget->insertWidget(5, &complete);
    ui->stackedWidget->setCurrentIndex(0);

    connect(&advertise, SIGNAL(gotoLogin()), this, SLOT(routeLogin()));
    connect(&login, SIGNAL(activateOperation()), this, SLOT(routeOperation()));
    connect(&operation, SIGNAL(activateFilling()), this, SLOT(routeFilling()));
    connect(&filling, SIGNAL(routetoback()), this, SLOT(routeOperation()));
    connect(&operation, SIGNAL(activateComplete()), this, SLOT(routerComplete()));
    connect(&operation, SIGNAL(activateOrder()), this, SLOT(routeOrder()));
    connect(&order, SIGNAL(activateProduct()), this, SLOT(routeOperation()));*/
    //this->showFullScreen();

}

MainWindow::~MainWindow()
{
    delete ui;
}
void MainWindow::navigationPage(int index){

    if(index == 0){
        navigationLogin();
    }else if (index == 1){
        navigationProduct();
    }else if (index == 2){
        naviationOrder();
    }
    else if (index == 3){
        navigationSetting();
    }else if (index == 4){
        navigationFilling();
    }
}
void MainWindow::setUserID(QString uid){
    userID = uid;
}
void MainWindow::naviationOrder(){
    ui->quickWidget->setResizeMode(QQuickWidget::SizeRootObjectToView);
    ui->quickWidget->setSource(QUrl("qrc:/orderPage.qml"));
    ui->quickWidget->show();
}
void MainWindow::navigationLogin(){
    ui->quickWidget->setResizeMode(QQuickWidget::SizeRootObjectToView);
    ui->quickWidget->setSource(QUrl("qrc:/main_navigation.qml"));
    ui->quickWidget->show();
}
void MainWindow::navigationProduct(){
    ui->quickWidget->setResizeMode(QQuickWidget::SizeRootObjectToView);
    ui->quickWidget->setSource(QUrl("qrc:/main.qml"));
    ui->quickWidget->show();
}
void MainWindow::navigationSetting(){
    ui->quickWidget->setResizeMode(QQuickWidget::SizeRootObjectToView);
    ui->quickWidget->setSource(QUrl(QStringLiteral("qrc:/fillingPage.qml")));
    ui->quickWidget->show();
}

void MainWindow::navigationFilling(){
    ui->quickWidget->setResizeMode(QQuickWidget::SizeRootObjectToView);
    ui->quickWidget->setSource(QUrl(QStringLiteral("qrc:/completePage.qml")));
    ui->quickWidget->show();
}


void MainWindow::setProductID(QString id){
    productID = id;
}
/*void MainWindow::routeAdvertise()
{
    ui->stackedWidget->setCurrentIndex(1);
}
void MainWindow::routeLogin()
{
    qDebug()<< "go to oeration";
    ui->stackedWidget->setCurrentIndex(1);
    m_speech->say("Please login to receive your order");
}

void MainWindow::routeOperation()
{
    ui->stackedWidget->setCurrentIndex(2);
    m_speech->say("Welcome to smart coffee machine mister Aek . How can I help you sir");

}

void MainWindow::routeFilling()
{
    ui->stackedWidget->setCurrentIndex(3);
    m_speech->say("Please seting the material as you wish");
}

void MainWindow::routeComplete()
{
    ui->stackedWidget->setCurrentIndex(5);
}

void MainWindow:: routeOrder()
{
    ui->stackedWidget->setCurrentIndex(4);
}
*/
