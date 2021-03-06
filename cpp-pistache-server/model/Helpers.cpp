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
#include "Helpers.h"

namespace org {
namespace openapitools {
namespace server {
namespace helpers {


std::string toStringValue(const std::string &value){
    return std::string(value);
}

std::string toStringValue(const int32_t &value){
    return std::to_string(value);
}

std::string toStringValue(const int64_t &value){
    return std::to_string(value);
}

std::string toStringValue(const bool &value){
    return value?std::string("true"):std::string("false");
}

std::string toStringValue(const float &value){
    return std::to_string(value);
}

std::string toStringValue(const double &value){
    return std::to_string(value);
}

bool fromStringValue(const std::string &inStr, std::string &value){
    value = std::string(inStr);
    return true;
}

bool fromStringValue(const std::string &inStr, int32_t &value){
    try {
        value = std::stoi( inStr );
    }
    catch (const std::invalid_argument) {
        return false;
    }
    return true;
}

bool fromStringValue(const std::string &inStr, int64_t &value){
    try {
        value = std::stol( inStr );
    }
    catch (const std::invalid_argument) {
        return false;
    }
    return true;
}

bool fromStringValue(const std::string &inStr, bool &value){
    bool result = true;
    inStr == "true"?value = true: inStr == "false"?value = false: result = false;
    return result;
}

bool fromStringValue(const std::string &inStr, float &value){
    try {
        value = std::stof( inStr );
    }
    catch (const std::invalid_argument) {
        return false;
    }
    return true;
}

bool fromStringValue(const std::string &inStr, double &value){
    try {
        value = std::stod( inStr );
    }
    catch (const std::invalid_argument) {
        return false;
    }
    return true;
}

}
}
}
}
