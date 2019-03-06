#ifndef ADVERTISEMENTFORM_H
#define ADVERTISEMENTFORM_H

#include <QWidget>
#include <QQmlContext>
namespace Ui {
class AdvertisementForm;
}

class AdvertisementForm : public QWidget
{
    Q_OBJECT

public:
    explicit AdvertisementForm(QWidget *parent = nullptr);
    ~AdvertisementForm();

     Q_INVOKABLE void activateLogin();

signals:
    void gotoLogin();


private:
    Ui::AdvertisementForm *ui;
};

#endif // ADVERTISEMENTFORM_H
