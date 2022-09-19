#include "translator.h"
#include <QDebug>

Translator::Translator(QQmlEngine *engine)
{
    _translator = new QTranslator(this);
    _engine = engine;
}

void Translator::selectLanguage(QString language)
{

    QDir dir = QDir(qApp->applicationDirPath()).absolutePath();

    if (!_translator->load(QString("%1").arg(language),QString("%1/.qm").arg(dir.path())))
    {
        qDebug() << "Falla al cargar la traducción.";
    }

    qApp->installTranslator(_translator);
    _engine->retranslate();

    emit languageChanged();
}
