#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QLocale>
#include <QTranslator>

#include <QtQml/QQmlContext>
//#include <QtWebView/QtWebView>
#include <QQmlApplicationEngine>
#include <qtwebengineglobal.h>


#include <QTranslator> /* Para la traducción de texto */
#include "translator.h"

class Utils : public QObject {
    Q_OBJECT
public:
    Utils(QObject *parent = nullptr) : QObject(parent) { }
    Q_INVOKABLE static QUrl fromUserInput(const QString& userInput);
};

QUrl Utils::fromUserInput(const QString& userInput)
{
    if (userInput.isEmpty())
        return QUrl::fromUserInput("about:blank");
    const QUrl result = QUrl::fromUserInput(userInput);
    return result.isValid() ? result : QUrl::fromUserInput("about:blank");
}

int main(int argc, char *argv[])
{
QtWebEngine::initialize();

#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    /*---------------------------------------------*/
//    QCoreApplication::setAttribute((Qt::AA_EnableHighDpiScaling));
//    QCoreApplication::setAttribute((Qt::AA_ShareOpenGLContexts));
//    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
//    QGuiApplication::setAttribute(Qt::AA_UseSoftwareOpenGL);
//    QCoreApplication::setAttribute(Qt::AA_UseSoftwareOpenGL);
//    QGuiApplication::setAttribute(Qt::AA_UseSoftwareOpenGL);
//    QtWebEngine::initialize();
    /*---------------------------------------------*/

    /*---------------------------------------------*/
//    QCommandLineParser parser;
    const QString initialUrl = /*parser.positionalArguments().isEmpty() ?*/
                QStringLiteral("https://www.baufest.com") /*: parser.positionalArguments().first()*/;

    QQmlApplicationEngine engine;
    QQmlContext *context = engine.rootContext();
    context->setContextProperty(QStringLiteral("initialUrl"),
                                Utils::fromUserInput(initialUrl));
    /*---------------------------------------------*/

    /****************** Traductor *******************/
//    QTranslator translator;
//    const QStringList uiLanguages = QLocale::system().uiLanguages();
//    for (const QString &locale : uiLanguages) {
//        const QString baseName = "Ejemplo_INVAP_" + QLocale(locale).name();
//        if (translator.load(":/i18n/" + baseName)) {
//            app.installTranslator(&translator);
//            break;
//        }
//    }
    Translator trans(&engine);
        engine.rootContext()->setContextProperty("trans", &trans);
    /*************************************/


    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);


    return app.exec();
}
