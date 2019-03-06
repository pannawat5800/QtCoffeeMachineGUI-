#ifndef LOGINFORM_H
#define LOGINFORM_H

#include <QWidget>
#include <QString>
#include <QQmlContext>
namespace Ui {
class LoginForm;
}

class LoginForm : public QWidget
{
    Q_OBJECT

public:
    explicit LoginForm(QWidget *parent = nullptr);
    ~LoginForm();

    Q_INVOKABLE void loginUser(QString id);

signals:
    void activateOperation();

private:
    Ui::LoginForm *ui;

};

#endif // LOGINFORM_H
