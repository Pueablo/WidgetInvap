#ifndef TRANSLATOR_H
#define TRANSLATOR_H

#include <QObject>
#include <QTranslator>
#include <QDebug>
#include <QGuiApplication>
#include <QDir>
#include <QQmlEngine>

class Translator : public QObject
{
    Q_OBJECT


public:
    Translator(QQmlEngine *engine);
    Q_INVOKABLE void selectLanguage(QString language);

signals:
    void languageChanged();

private:
    QTranslator *_translator;
    QQmlEngine *_engine;

};

#endif // TRANSLATOR_H
