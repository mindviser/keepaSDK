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

#ifndef OAI_OAICategoryApiHandler_H
#define OAI_OAICategoryApiHandler_H

#include <QObject>

#include "OAICategory.h"
#include <QString>

namespace OpenAPI {

class OAICategoryApiHandler : public QObject
{
    Q_OBJECT
    
public:
    OAICategoryApiHandler();
    virtual ~OAICategoryApiHandler();


public slots:
    virtual void category(QString key, qint32 domain, qint32 category, qint32 parents);
    

};

}

#endif // OAI_OAICategoryApiHandler_H
