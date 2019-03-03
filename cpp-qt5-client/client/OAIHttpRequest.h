/**
 * Keepa API
 * The Keepa API offers numerous endpoints.  Every request requires your API access key as a parameter. You can find and change your key in the keepa portal. All requests must be issued as a HTTPS GET and accept gzip encoding. If possible, use a Keep-Alive connection.  Multiple requests can be made in parallel to increase throughput.
 *
 * OpenAPI spec version: 1.0.0
 * Contact: info@keepa.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/**
 * Based on http://www.creativepulse.gr/en/blog/2014/restful-api-requests-using-qt-cpp-for-linux-mac-osx-ms-windows
 * By Alex Stylianos
 *
 **/

#ifndef OAI_HTTPREQUESTWORKER_H
#define OAI_HTTPREQUESTWORKER_H

#include <QObject>
#include <QString>
#include <QMap>
#include <QNetworkAccessManager>
#include <QNetworkReply>



namespace OpenAPI {

enum OAIHttpRequestVarLayout {NOT_SET, ADDRESS, URL_ENCODED, MULTIPART};

class OAIHttpRequestInputFileElement {

public:
    QString variable_name;
    QString local_filename;
    QString request_filename;
    QString mime_type;

};


class OAIHttpRequestInput {

public:
    QString url_str;
    QString http_method;
    OAIHttpRequestVarLayout var_layout;
    QMap<QString, QString> vars;
    QMap<QString, QString> headers;
    QList<OAIHttpRequestInputFileElement> files;
    QByteArray request_body;

    OAIHttpRequestInput();
    OAIHttpRequestInput(QString v_url_str, QString v_http_method);
    void initialize();
    void add_var(QString key, QString value);
    void add_file(QString variable_name, QString local_filename, QString request_filename, QString mime_type);

};


class OAIHttpRequestWorker : public QObject {
    Q_OBJECT

public:
    QByteArray response;
    QNetworkReply::NetworkError error_type;
    QString error_str;

    explicit OAIHttpRequestWorker(QObject *parent = nullptr);
    virtual ~OAIHttpRequestWorker();

    QMap<QByteArray, QByteArray> getResponseHeaders() const;
    QString http_attribute_encode(QString attribute_name, QString input);
    void execute(OAIHttpRequestInput *input);
    static QSslConfiguration* sslDefaultConfiguration;

signals:
    void on_execution_finished(OAIHttpRequestWorker *worker);

private:
    QNetworkAccessManager *manager;
    QMap<QByteArray, QByteArray> headers;
private slots:
    void on_manager_finished(QNetworkReply *reply);

};

}

#endif // OAI_HTTPREQUESTWORKER_H