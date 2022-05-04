/**
 * EMS - REST API
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "RejectReason.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



namespace
{
using EnumUnderlyingType = utility::string_t;

RejectReason::eRejectReason toEnum(const EnumUnderlyingType& val)
{
    if (val == utility::conversions::to_string_t(U("OTHER")))
        return RejectReason::eRejectReason::RejectReason_OTHER;
    if (val == utility::conversions::to_string_t(U("EXCHANGE_UNREACHABLE")))
        return RejectReason::eRejectReason::RejectReason_EXCHANGE_UNREACHABLE;
    if (val == utility::conversions::to_string_t(U("EXCHANGE_RESPONSE_TIMEOUT")))
        return RejectReason::eRejectReason::RejectReason_EXCHANGE_RESPONSE_TIMEOUT;
    if (val == utility::conversions::to_string_t(U("ORDER_ID_NOT_FOUND")))
        return RejectReason::eRejectReason::RejectReason_ORDER_ID_NOT_FOUND;
    if (val == utility::conversions::to_string_t(U("INVALID_TYPE")))
        return RejectReason::eRejectReason::RejectReason_INVALID_TYPE;
    if (val == utility::conversions::to_string_t(U("METHOD_NOT_SUPPORTED")))
        return RejectReason::eRejectReason::RejectReason_METHOD_NOT_SUPPORTED;
    if (val == utility::conversions::to_string_t(U("JSON_ERROR")))
        return RejectReason::eRejectReason::RejectReason_JSON_ERROR;
    return {};
}

EnumUnderlyingType fromEnum(RejectReason::eRejectReason e)
{
    switch (e)
    {
    case RejectReason::eRejectReason::RejectReason_OTHER:
        return U("OTHER");
    case RejectReason::eRejectReason::RejectReason_EXCHANGE_UNREACHABLE:
        return U("EXCHANGE_UNREACHABLE");
    case RejectReason::eRejectReason::RejectReason_EXCHANGE_RESPONSE_TIMEOUT:
        return U("EXCHANGE_RESPONSE_TIMEOUT");
    case RejectReason::eRejectReason::RejectReason_ORDER_ID_NOT_FOUND:
        return U("ORDER_ID_NOT_FOUND");
    case RejectReason::eRejectReason::RejectReason_INVALID_TYPE:
        return U("INVALID_TYPE");
    case RejectReason::eRejectReason::RejectReason_METHOD_NOT_SUPPORTED:
        return U("METHOD_NOT_SUPPORTED");
    case RejectReason::eRejectReason::RejectReason_JSON_ERROR:
        return U("JSON_ERROR");
    default:
        break;
    }
    return {};
}
}

RejectReason::RejectReason()
{
}

RejectReason::~RejectReason()
{
}

void RejectReason::validate()
{
    // TODO: implement validation
}

web::json::value RejectReason::toJson() const
{
    auto val = fromEnum(m_value);
    return web::json::value(val);
}

bool RejectReason::fromJson(const web::json::value& val)
{
    m_value = toEnum(val.as_string());
    return true;
}

void RejectReason::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if (!namePrefix.empty() && namePrefix.back() != U('.'))
    {
        namePrefix.push_back(U('.'));
    }

    auto e = fromEnum(m_value);
    multipart->add(ModelBase::toHttpContent(namePrefix, e));
}

bool RejectReason::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if (!namePrefix.empty() && namePrefix.back() != U('.'))
    {
        namePrefix.push_back(U('.'));
    }
    {
        EnumUnderlyingType e;
        ok = ModelBase::fromHttpContent(multipart->getContent(namePrefix), e);
        if (ok)
        {
            auto v = toEnum(e);
            setValue(v);
        }
    }
    return ok;
}

RejectReason::eRejectReason RejectReason::getValue() const
{
   return m_value;
}

void RejectReason::setValue(RejectReason::eRejectReason const value)
{
   m_value = value;
}


}
}
}
}


