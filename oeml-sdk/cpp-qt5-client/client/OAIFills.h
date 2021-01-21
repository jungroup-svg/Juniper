/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIFills.h
 *
 * 
 */

#ifndef OAIFills_H
#define OAIFills_H

#include <QJsonObject>

#include <QDate>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIFills : public OAIObject {
public:
    OAIFills();
    OAIFills(QString json);
    ~OAIFills() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QDate getTime() const;
    void setTime(const QDate &time);
    bool is_time_Set() const;
    bool is_time_Valid() const;

    double getPrice() const;
    void setPrice(const double &price);
    bool is_price_Set() const;
    bool is_price_Valid() const;

    double getAmount() const;
    void setAmount(const double &amount);
    bool is_amount_Set() const;
    bool is_amount_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QDate time;
    bool m_time_isSet;
    bool m_time_isValid;

    double price;
    bool m_price_isSet;
    bool m_price_isValid;

    double amount;
    bool m_amount_isSet;
    bool m_amount_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIFills)

#endif // OAIFills_H
