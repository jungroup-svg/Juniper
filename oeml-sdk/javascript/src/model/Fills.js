/**
 * EMS - REST API
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The Fills model module.
 * @module model/Fills
 * @version v1
 */
class Fills {
    /**
     * Constructs a new <code>Fills</code>.
     * @alias module:model/Fills
     */
    constructor() { 
        
        Fills.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>Fills</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Fills} obj Optional instance to populate.
     * @return {module:model/Fills} The populated <code>Fills</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Fills();

            if (data.hasOwnProperty('time')) {
                obj['time'] = ApiClient.convertToType(data['time'], 'Date');
            }
            if (data.hasOwnProperty('price')) {
                obj['price'] = ApiClient.convertToType(data['price'], 'Number');
            }
            if (data.hasOwnProperty('amount')) {
                obj['amount'] = ApiClient.convertToType(data['amount'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * Execution time.
 * @member {Date} time
 */
Fills.prototype['time'] = undefined;

/**
 * Execution price.
 * @member {Number} price
 */
Fills.prototype['price'] = undefined;

/**
 * Executed quantity.
 * @member {Number} amount
 */
Fills.prototype['amount'] = undefined;






export default Fills;

