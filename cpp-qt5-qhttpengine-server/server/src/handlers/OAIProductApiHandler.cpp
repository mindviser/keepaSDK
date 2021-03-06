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

#include <QJsonArray>
#include <QJsonDocument>
#include <QJsonObject>
#include <QVariantMap>
#include <QDebug>

#include "OAIProductApiHandler.h"
#include "OAIProductApiRequest.h"

namespace OpenAPI {

OAIProductApiHandler::OAIProductApiHandler(){

}

OAIProductApiHandler::~OAIProductApiHandler(){

}

void OAIProductApiHandler::product(QString key, qint32 domain, QString asin, QString code) {
    Q_UNUSED(key);
    Q_UNUSED(domain);
    Q_UNUSED(asin);
    Q_UNUSED(code);
    auto reqObj = qobject_cast<OAIProductApiRequest*>(sender());
    if( reqObj != nullptr ) 
    { 
        QList<OAICategory> res;
        reqObj->productResponse(res);
    }    
}


}
