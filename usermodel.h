#ifndef USERMODEL_H
#define USERMODEL_H

#include <QObject>
#include <QString>
class UserModel : public QObject
{
    Q_OBJECT
public:
    explicit UserModel(QObject *parent = nullptr);

    void setUserID(QString id);
    void setTokenID(QString token);

    QString getUserID(){
        return userID;
    }

    QString getTokenID(){
        return tokenID;
    }

signals:

public slots:

private:
   QString  userID = "";
   QString  tokenID = "";

};

#endif // USERMODEL_H
