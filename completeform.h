#ifndef COMPLETEFORM_H
#define COMPLETEFORM_H

#include <QWidget>
#include <QQmlContext>
namespace Ui {
class CompleteForm;
}

class CompleteForm : public QWidget
{
    Q_OBJECT

public:
    explicit CompleteForm(QWidget *parent = nullptr);
    ~CompleteForm();



private:
    Ui::CompleteForm *ui;

};

#endif // COMPLETEFORM_H
