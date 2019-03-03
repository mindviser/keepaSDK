/**
 * Keepa API
 * The Keepa API offers numerous endpoints.  Every request requires your API access key as a parameter. You can find and change your key in the keepa portal. All requests must be issued as a HTTPS GET and accept gzip encoding. If possible, use a Keep-Alive connection.  Multiple requests can be made in parallel to increase throughput.
 *
 * OpenAPI spec version: 1.0.0
 * Contact: info@keepa.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 4.0.0-beta2.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "Category.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {

Category::Category()
{
    m_DomainId = 0;
    m_CatId = 0;
    m_Name = utility::conversions::to_string_t("");
    m_Parent = 0;
    m_HighestRank = 0;
    m_ProductCount = 0;
}

Category::~Category()
{
}

void Category::validate()
{
    // TODO: implement validation
}

web::json::value Category::toJson() const
{
    web::json::value val = web::json::value::object();

    val[utility::conversions::to_string_t("domainId")] = ModelBase::toJson(m_DomainId);
    val[utility::conversions::to_string_t("catId")] = ModelBase::toJson(m_CatId);
    val[utility::conversions::to_string_t("name")] = ModelBase::toJson(m_Name);
    {
        std::vector<web::json::value> jsonArray;
        for( auto& item : m_Children )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        val[utility::conversions::to_string_t("children")] = web::json::value::array(jsonArray);
    }
    val[utility::conversions::to_string_t("parent")] = ModelBase::toJson(m_Parent);
    val[utility::conversions::to_string_t("highestRank")] = ModelBase::toJson(m_HighestRank);
    val[utility::conversions::to_string_t("productCount")] = ModelBase::toJson(m_ProductCount);

    return val;
}

void Category::fromJson(const web::json::value& val)
{
    setDomainId(ModelBase::int32_tFromJson(val.at(utility::conversions::to_string_t("domainId"))));
    setCatId(ModelBase::int32_tFromJson(val.at(utility::conversions::to_string_t("catId"))));
    setName(ModelBase::stringFromJson(val.at(utility::conversions::to_string_t("name"))));
    {
        m_Children.clear();
        std::vector<web::json::value> jsonArray;
        for( auto& item : val.at(utility::conversions::to_string_t("children")).as_array() )
        {
            m_Children.push_back(ModelBase::int32_tFromJson(item));
        }
    }
    setParent(ModelBase::int32_tFromJson(val.at(utility::conversions::to_string_t("parent"))));
    setHighestRank(ModelBase::int32_tFromJson(val.at(utility::conversions::to_string_t("highestRank"))));
    setProductCount(ModelBase::int32_tFromJson(val.at(utility::conversions::to_string_t("productCount"))));
}

void Category::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("domainId"), m_DomainId));
    multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("catId"), m_CatId));
    multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("name"), m_Name));
    {
        std::vector<web::json::value> jsonArray;
        for( auto& item : m_Children )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("children"), web::json::value::array(jsonArray), utility::conversions::to_string_t("application/json")));
            }
    multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("parent"), m_Parent));
    multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("highestRank"), m_HighestRank));
    multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("productCount"), m_ProductCount));
}

void Category::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    setDomainId(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("domainId"))));
    setCatId(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("catId"))));
    setName(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("name"))));
    {
        m_Children.clear();

        web::json::value jsonArray = web::json::value::parse(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("children"))));
        for( auto& item : jsonArray.as_array() )
        {
            m_Children.push_back(ModelBase::int32_tFromJson(item));
        }
    }
    setParent(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("parent"))));
    setHighestRank(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("highestRank"))));
    setProductCount(ModelBase::int32_tFromHttpContent(multipart->getContent(utility::conversions::to_string_t("productCount"))));
}

int32_t Category::getDomainId() const
{
    return m_DomainId;
}

void Category::setDomainId(int32_t value)
{
    m_DomainId = value;
    
}

int32_t Category::getCatId() const
{
    return m_CatId;
}

void Category::setCatId(int32_t value)
{
    m_CatId = value;
    
}

utility::string_t Category::getName() const
{
    return m_Name;
}

void Category::setName(const utility::string_t& value)
{
    m_Name = value;
    
}

std::vector<int32_t>& Category::getChildren()
{
    return m_Children;
}

void Category::setChildren(std::vector<int32_t> value)
{
    m_Children = value;
    
}

int32_t Category::getParent() const
{
    return m_Parent;
}

void Category::setParent(int32_t value)
{
    m_Parent = value;
    
}

int32_t Category::getHighestRank() const
{
    return m_HighestRank;
}

void Category::setHighestRank(int32_t value)
{
    m_HighestRank = value;
    
}

int32_t Category::getProductCount() const
{
    return m_ProductCount;
}

void Category::setProductCount(int32_t value)
{
    m_ProductCount = value;
    
}

}
}
}
}
