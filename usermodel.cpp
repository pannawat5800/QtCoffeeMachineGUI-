#include "usermodel.h"

UserModel::UserModel(QObject *parent) : QObject(parent)
{

}

void UserModel::setUserID(QString id)
{
    userID = id;
}

void UserModel::setTokenID(QString token){
    tokenID = token;
}
