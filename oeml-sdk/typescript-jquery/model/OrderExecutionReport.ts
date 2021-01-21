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

import * as models from './models';

/**
 * The order execution report object.
 */
export interface OrderExecutionReport {
    /**
     * Exchange identifier used to identify the routing destination.
     */
    exchange_id: string;

    /**
     * The unique identifier of the order assigned by the client.
     */
    client_order_id: string;

    /**
     * Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
     */
    symbol_id_exchange?: string;

    /**
     * CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
     */
    symbol_id_coinapi?: string;

    /**
     * Order quantity.
     */
    amount_order: number;

    /**
     * Order price.
     */
    price: number;

    side: models.OrdSide;

    order_type: models.OrdType;

    time_in_force: models.TimeInForce;

    /**
     * Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
     */
    expire_time?: string;

    /**
     * Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> 
     */
    exec_inst?: Array<OrderExecutionReport.ExecInstEnum>;

    /**
     * The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
     */
    client_order_id_format_exchange: string;

    /**
     * Unique identifier of the order assigned by the exchange or executing system.
     */
    exchange_order_id?: string;

    /**
     * Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
     */
    amount_open: number;

    /**
     * Total quantity filled.
     */
    amount_filled: number;

    /**
     * Calculated average price of all fills on this order.
     */
    avg_px?: number;

    status: models.OrdStatus;

    /**
     * Timestamped history of order status changes.
     */
    status_history?: Array<Array<string>>;

    /**
     * Error message.
     */
    error_message?: string;

    /**
     * Relay fill information on working orders.
     */
    fills?: Array<models.Fills>;

}
export namespace OrderExecutionReport {
    export enum ExecInstEnum {
        MakerOrCancel = <any> 'MAKER_OR_CANCEL',
        AuctionOnly = <any> 'AUCTION_ONLY',
        IndicationOfInterest = <any> 'INDICATION_OF_INTEREST'
    }
}
