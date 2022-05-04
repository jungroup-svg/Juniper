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



#include "OrderCancelSingleRequest.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




OrderCancelSingleRequest::OrderCancelSingleRequest()
{
    m_Exchange_id = utility::conversions::to_string_t("");
    m_Exchange_idIsSet = false;
    m_Exchange_order_id = utility::conversions::to_string_t("");
    m_Exchange_order_idIsSet = false;
    m_Client_order_id = utility::conversions::to_string_t("");
    m_Client_order_idIsSet = false;
}

OrderCancelSingleRequest::~OrderCancelSingleRequest()
{
}

void OrderCancelSingleRequest::validate()
{
    // TODO: implement validation
}

web::json::value OrderCancelSingleRequest::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_Exchange_idIsSet)
    {
        val[utility::conversions::to_string_t(U("exchange_id"))] = ModelBase::toJson(m_Exchange_id);
    }
    if(m_Exchange_order_idIsSet)
    {
        val[utility::conversions::to_string_t(U("exchange_order_id"))] = ModelBase::toJson(m_Exchange_order_id);
    }
    if(m_Client_order_idIsSet)
    {
        val[utility::conversions::to_string_t(U("client_order_id"))] = ModelBase::toJson(m_Client_order_id);
    }

    return val;
}

bool OrderCancelSingleRequest::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t(U("exchange_id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("exchange_id")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_exchange_id;
            ok &= ModelBase::fromJson(fieldValue, refVal_exchange_id);
            setExchangeId(refVal_exchange_id);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("exchange_order_id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("exchange_order_id")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_exchange_order_id;
            ok &= ModelBase::fromJson(fieldValue, refVal_exchange_order_id);
            setExchangeOrderId(refVal_exchange_order_id);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("client_order_id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("client_order_id")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_client_order_id;
            ok &= ModelBase::fromJson(fieldValue, refVal_client_order_id);
            setClientOrderId(refVal_client_order_id);
        }
    }
    return ok;
}

void OrderCancelSingleRequest::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m_Exchange_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("exchange_id")), m_Exchange_id));
    }
    if(m_Exchange_order_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("exchange_order_id")), m_Exchange_order_id));
    }
    if(m_Client_order_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("client_order_id")), m_Client_order_id));
    }
}

bool OrderCancelSingleRequest::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("exchange_id"))))
    {
        utility::string_t refVal_exchange_id;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("exchange_id"))), refVal_exchange_id );
        setExchangeId(refVal_exchange_id);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("exchange_order_id"))))
    {
        utility::string_t refVal_exchange_order_id;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("exchange_order_id"))), refVal_exchange_order_id );
        setExchangeOrderId(refVal_exchange_order_id);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("client_order_id"))))
    {
        utility::string_t refVal_client_order_id;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("client_order_id"))), refVal_client_order_id );
        setClientOrderId(refVal_client_order_id);
    }
    return ok;
}

utility::string_t OrderCancelSingleRequest::getExchangeId() const
{
    return m_Exchange_id;
}

void OrderCancelSingleRequest::setExchangeId(const utility::string_t& value)
{
    m_Exchange_id = value;
    m_Exchange_idIsSet = true;
}

bool OrderCancelSingleRequest::exchangeIdIsSet() const
{
    return m_Exchange_idIsSet;
}

void OrderCancelSingleRequest::unsetExchange_id()
{
    m_Exchange_idIsSet = false;
}
utility::string_t OrderCancelSingleRequest::getExchangeOrderId() const
{
    return m_Exchange_order_id;
}

void OrderCancelSingleRequest::setExchangeOrderId(const utility::string_t& value)
{
    m_Exchange_order_id = value;
    m_Exchange_order_idIsSet = true;
}

bool OrderCancelSingleRequest::exchangeOrderIdIsSet() const
{
    return m_Exchange_order_idIsSet;
}

void OrderCancelSingleRequest::unsetExchange_order_id()
{
    m_Exchange_order_idIsSet = false;
}
utility::string_t OrderCancelSingleRequest::getClientOrderId() const
{
    return m_Client_order_id;
}

void OrderCancelSingleRequest::setClientOrderId(const utility::string_t& value)
{
    m_Client_order_id = value;
    m_Client_order_idIsSet = true;
}

bool OrderCancelSingleRequest::clientOrderIdIsSet() const
{
    return m_Client_order_idIsSet;
}

void OrderCancelSingleRequest::unsetClient_order_id()
{
    m_Client_order_idIsSet = false;
}
}
}
}
}


