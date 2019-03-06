#ifndef OPERATIONFORM_H
#define OPERATIONFORM_H

#include <QWidget>
#include <QQmlContext>
namespace Ui {
class OperationForm;
}

class OperationForm : public QWidget
{
    Q_OBJECT

public:
    explicit OperationForm(QWidget *parent = nullptr);
    ~OperationForm();

    Q_INVOKABLE void onselected(QString menu);
    Q_INVOKABLE void onFilling();
    Q_INVOKABLE void onOrdering();

    void setSelectedMenu(QString menu);
    QString getSelectedMenu(){
        return coffee;
    }



signals:
    void activateFilling();
    void activateComplete();
    void activateOrder();

private:
    Ui::OperationForm *ui;

    QString coffee;
};

#endif // OPERATIONFORM_H
