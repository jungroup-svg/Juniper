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

/*
 * Fills.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_Fills_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_Fills_H_


#include "ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  Fills
    : public ModelBase
{
public:
    Fills();
    virtual ~Fills();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// Fills members

    /// <summary>
    /// Execution time.
    /// </summary>
    std::shared_ptr<utility::datetime> getTime() const;
    bool timeIsSet() const;
    void unsetTime();

    void setTime(const std::shared_ptr<utility::datetime>& value);

    /// <summary>
    /// Execution price.
    /// </summary>
    double getPrice() const;
    bool priceIsSet() const;
    void unsetPrice();

    void setPrice(double value);

    /// <summary>
    /// Executed quantity.
    /// </summary>
    double getAmount() const;
    bool amountIsSet() const;
    void unsetAmount();

    void setAmount(double value);


protected:
    std::shared_ptr<utility::datetime> m_Time;
    bool m_TimeIsSet;
    double m_Price;
    bool m_PriceIsSet;
    double m_Amount;
    bool m_AmountIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_Fills_H_ */
