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


/**
 * Order time in force options are documented in the separate section: <a href=\"#oeml-order-params-tif\">OEML / Starter Guide / Order parameters / Time in force</a> 
 */
export type TimeInForce = 'GOOD_TILL_CANCEL' | 'GOOD_TILL_TIME_EXCHANGE' | 'GOOD_TILL_TIME_OMS' | 'FILL_OR_KILL' | 'IMMEDIATE_OR_CANCEL';

export const TimeInForce = {
    GoodTillCancel: 'GOOD_TILL_CANCEL' as TimeInForce,
    GoodTillTimeExchange: 'GOOD_TILL_TIME_EXCHANGE' as TimeInForce,
    GoodTillTimeOms: 'GOOD_TILL_TIME_OMS' as TimeInForce,
    FillOrKill: 'FILL_OR_KILL' as TimeInForce,
    ImmediateOrCancel: 'IMMEDIATE_OR_CANCEL' as TimeInForce
};

