#ifndef FILLINGFORM_H
#define FILLINGFORM_H

#include <QWidget>
#include <QQmlContext>
namespace Ui {
class FillingForm;
}

class FillingForm : public QWidget
{
    Q_OBJECT

public:
    explicit FillingForm(QWidget *parent = nullptr);
    ~FillingForm();
    Q_INVOKABLE void confirm(int coffee, int sugar, int milk, int soy, int coco);
    Q_INVOKABLE void cancle();

signals:
    void routetoback();
    void routetobuying();

private:
    Ui::FillingForm *ui;
};

#endif // FILLINGFORM_H
