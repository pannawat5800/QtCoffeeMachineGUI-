#ifndef ORDERFORM_H
#define ORDERFORM_H

#include <QWidget>
#include <QQmlContext>

namespace Ui {
class OrderForm;
}

class OrderForm : public QWidget
{
    Q_OBJECT

public:
    explicit OrderForm(QWidget *parent = nullptr);
    ~OrderForm();
    Q_INVOKABLE void onOrder(QString coffee, QString milk, QString soy, QString sugar, QString coco);
    Q_INVOKABLE void onupdate(QString keyorder);
    Q_INVOKABLE void routeProduct();


private:
    Ui::OrderForm *ui;

signals:

    void activateProduct();
};

#endif // ORDERFORM_H
