#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <loginform.h>
#include <advertisementform.h>
#include <operationform.h>
#include <fillingform.h>
#include <orderform.h>
#include <QtDebug>
#include <QTextToSpeech>
#include <completeform.h>
#include <QQmlContext>
#include <QQuickWidget>
namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();


    Q_INVOKABLE void navigationPage(int index);
    Q_INVOKABLE void setUserID(QString id);
    Q_INVOKABLE void setProductID(QString id);

    Q_INVOKABLE QString getUserID(){
        return userID;
    }

    Q_INVOKABLE QString getProductID(){
        return productID;
    }

    void naviationOrder();
    void navigationLogin();
    void navigationProduct();
    void navigationSetting();
    void navigationFilling();


    void loginPage();
    void FillingPage();
    void OperationPage();


    Q_INVOKABLE QString NAMESERVER = "10.10.101.147";
    Q_INVOKABLE QString PRODUCTAPI = "http://"+ NAMESERVER + "/api/products";
    Q_INVOKABLE QString ORDERSAPI = "http://"+ NAMESERVER + "/api/orders";


private:

    Ui::MainWindow *ui;
    QString userID;
    QString productID;

    /*LoginForm login;
    AdvertisementForm advertise;
    OperationForm operation;
    FillingForm filling;
    OrderForm order;
    CompleteForm complete;*/

    QTextToSpeech *m_speech;

private slots:
    /*void routeLogin();
    void routeAdvertise();
    void routeOperation();
    void routeFilling();
    void routeComplete();
    void routeOrder();*/
};

#endif // MAINWINDOW_H
