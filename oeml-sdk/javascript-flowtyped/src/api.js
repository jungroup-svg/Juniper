// @flow
/* eslint-disable no-use-before-define */
/**
 * EMS - REST API
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


import * as url from "url";
import * as portableFetch from "portable-fetch";
import { Configuration } from "./configuration";

const BASE_PATH: string = "https://ems-gateway-aws-eu-central-1-dev.coinapi.io".replace(/\/+$/, "");

/**
 *
 * @export
 */
export const COLLECTION_FORMATS = {
    csv: ",",
    ssv: " ",
    tsv: "\t",
    pipes: "|",
};

/**
 *
 * @export
 */
export type FetchAPI = {
    (url: string, init?: any): Promise<Response>;
}

/**
 *
 * @export
 */
export type FetchArgs = {
    url: string;
    options: {};
}

/**
 *
 * @export
 */
export type RequestOptions = {
    headers?: {};
    query?: {};
    body?: string | FormData;
}

/**
 * * @export
 * @class RequiredError
 * @extends {Error}
 */
export class RequiredError extends Error {
    name:string = "RequiredError"
    constructor(field: string, msg?: string) {
        super(msg);
    }
}

/**
 * 
 * @export
 */
export type Balance = {
    /**
     * Exchange identifier used to identify the routing destination.
     * @type {string}
     * @memberof Balance
     */
    exchange_id?: string;
    /**
     * 
     * @type {Array<BalanceData>}
     * @memberof Balance
     */
    data?: Array<BalanceData>;
}


            export type BalanceDataLastUpdatedByEnum = 'INITIALIZATION' | 'BALANCE_MANAGER' | 'EXCHANGE';
/**
 * 
 * @export
 */
export type BalanceData = {
    /**
     * Exchange currency code.
     * @type {string}
     * @memberof BalanceData
     */
    asset_id_exchange?: string;
    /**
     * CoinAPI currency code.
     * @type {string}
     * @memberof BalanceData
     */
    asset_id_coinapi?: string;
    /**
     * Value of the current total currency balance on the exchange.
     * @type {number}
     * @memberof BalanceData
     */
    balance?: number;
    /**
     * Value of the current available currency balance on the exchange that can be used as collateral.
     * @type {number}
     * @memberof BalanceData
     */
    available?: number;
    /**
     * Value of the current locked currency balance by the exchange.
     * @type {number}
     * @memberof BalanceData
     */
    locked?: number;
    /**
     * Source of the last modification. 
     * @type {string}
     * @memberof BalanceData
     */
    last_updated_by?: BalanceDataLastUpdatedByEnum;
    /**
     * Current exchange rate to the USD for the single unit of the currency. 
     * @type {number}
     * @memberof BalanceData
     */
    rate_usd?: number;
    /**
     * Value of the current total traded.
     * @type {number}
     * @memberof BalanceData
     */
    traded?: number;
}

/**
 * 
 * @export
 */
export type Fills = {
    /**
     * Execution time.
     * @type {Date}
     * @memberof Fills
     */
    time?: Date;
    /**
     * Execution price.
     * @type {number}
     * @memberof Fills
     */
    price?: number;
    /**
     * Executed quantity.
     * @type {number}
     * @memberof Fills
     */
    amount?: number;
}

/**
 * 
 * @export
 */
export type MessageReject = {
    /**
     * Message type, constant.
     * @type {string}
     * @memberof MessageReject
     */
    type?: string;
    /**
     * 
     * @type {RejectReason}
     * @memberof MessageReject
     */
    reject_reason?: RejectReason;
    /**
     * If the message related to exchange, then the identifier of the exchange will be provided.
     * @type {string}
     * @memberof MessageReject
     */
    exchange_id?: string;
    /**
     * Message text.
     * @type {string}
     * @memberof MessageReject
     */
    message?: string;
    /**
     * Value of rejected request, if available.
     * @type {string}
     * @memberof MessageReject
     */
    rejected_message?: string;
}

/**
 * Side of order. 
 * @export
 * @enum {string}
 */
export type OrdSide = 'BUY' | 'SELL';

/**
 * Order statuses and the lifecycle are documented in the separate section: <a href=\"#ems-order-lifecycle\">EMS / Starter Guide / Order Lifecycle</a> 
 * @export
 * @enum {string}
 */
export type OrdStatus = 'RECEIVED' | 'ROUTING' | 'ROUTED' | 'NEW' | 'PENDING_CANCEL' | 'PARTIALLY_FILLED' | 'FILLED' | 'CANCELED' | 'REJECTED';

/**
 * Order types are documented in the separate section: <a href=\"#ems-order-params-type\">EMS / Starter Guide / Order parameters / Order type</a> 
 * @export
 * @enum {string}
 */
export type OrdType = 'LIMIT';

/**
 * Cancel all orders request object.
 * @export
 */
export type OrderCancelAllRequest = {
    /**
     * Identifier of the exchange from which active orders should be canceled.
     * @type {string}
     * @memberof OrderCancelAllRequest
     */
    exchange_id: string;
}

/**
 * Cancel single order request object.
 * @export
 */
export type OrderCancelSingleRequest = {
    /**
     * Exchange identifier used to identify the routing destination.
     * @type {string}
     * @memberof OrderCancelSingleRequest
     */
    exchange_id: string;
    /**
     * Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
     * @type {string}
     * @memberof OrderCancelSingleRequest
     */
    exchange_order_id?: string;
    /**
     * The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
     * @type {string}
     * @memberof OrderCancelSingleRequest
     */
    client_order_id?: string;
}


            export type OrderExecutionReportExecInstEnum = 'MAKER_OR_CANCEL' | 'AUCTION_ONLY' | 'INDICATION_OF_INTEREST';
/**
 * The order execution report object.
 * @export
 */
export type OrderExecutionReport = {
    /**
     * Exchange identifier used to identify the routing destination.
     * @type {string}
     * @memberof OrderExecutionReport
     */
    exchange_id: string;
    /**
     * The unique identifier of the order assigned by the client.
     * @type {string}
     * @memberof OrderExecutionReport
     */
    client_order_id: string;
    /**
     * Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
     * @type {string}
     * @memberof OrderExecutionReport
     */
    symbol_id_exchange?: string;
    /**
     * CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
     * @type {string}
     * @memberof OrderExecutionReport
     */
    symbol_id_coinapi?: string;
    /**
     * Order quantity.
     * @type {number}
     * @memberof OrderExecutionReport
     */
    amount_order: number;
    /**
     * Order price.
     * @type {number}
     * @memberof OrderExecutionReport
     */
    price: number;
    /**
     * 
     * @type {OrdSide}
     * @memberof OrderExecutionReport
     */
    side: OrdSide;
    /**
     * 
     * @type {OrdType}
     * @memberof OrderExecutionReport
     */
    order_type: OrdType;
    /**
     * 
     * @type {TimeInForce}
     * @memberof OrderExecutionReport
     */
    time_in_force: TimeInForce;
    /**
     * Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
     * @type {Date}
     * @memberof OrderExecutionReport
     */
    expire_time?: Date;
    /**
     * Order execution instructions are documented in the separate section: <a href=\"#ems-order-params-exec\">EMS / Starter Guide / Order parameters / Execution instructions</a> 
     * @type {Array<string>}
     * @memberof OrderExecutionReport
     */
    exec_inst?: Array<OrderExecutionReportExecInstEnum>;
    /**
     * The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
     * @type {string}
     * @memberof OrderExecutionReport
     */
    client_order_id_format_exchange: string;
    /**
     * Unique identifier of the order assigned by the exchange or executing system.
     * @type {string}
     * @memberof OrderExecutionReport
     */
    exchange_order_id?: string;
    /**
     * Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
     * @type {number}
     * @memberof OrderExecutionReport
     */
    amount_open: number;
    /**
     * Total quantity filled.
     * @type {number}
     * @memberof OrderExecutionReport
     */
    amount_filled: number;
    /**
     * Calculated average price of all fills on this order.
     * @type {number}
     * @memberof OrderExecutionReport
     */
    avg_px?: number;
    /**
     * 
     * @type {OrdStatus}
     * @memberof OrderExecutionReport
     */
    status: OrdStatus;
    /**
     * Timestamped history of order status changes.
     * @type {Array<Array<string>>}
     * @memberof OrderExecutionReport
     */
    status_history?: Array<Array<string>>;
    /**
     * Error message.
     * @type {string}
     * @memberof OrderExecutionReport
     */
    error_message?: string;
    /**
     * Relay fill information on working orders.
     * @type {Array<Fills>}
     * @memberof OrderExecutionReport
     */
    fills?: Array<Fills>;
}

/**
 * The order execution report message.
 * @export
 */
export type OrderExecutionReportAllOf = {
    /**
     * The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
     * @type {string}
     * @memberof OrderExecutionReportAllOf
     */
    client_order_id_format_exchange: string;
    /**
     * Unique identifier of the order assigned by the exchange or executing system.
     * @type {string}
     * @memberof OrderExecutionReportAllOf
     */
    exchange_order_id?: string;
    /**
     * Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
     * @type {number}
     * @memberof OrderExecutionReportAllOf
     */
    amount_open: number;
    /**
     * Total quantity filled.
     * @type {number}
     * @memberof OrderExecutionReportAllOf
     */
    amount_filled: number;
    /**
     * Calculated average price of all fills on this order.
     * @type {number}
     * @memberof OrderExecutionReportAllOf
     */
    avg_px?: number;
    /**
     * 
     * @type {OrdStatus}
     * @memberof OrderExecutionReportAllOf
     */
    status: OrdStatus;
    /**
     * Timestamped history of order status changes.
     * @type {Array<Array<string>>}
     * @memberof OrderExecutionReportAllOf
     */
    status_history?: Array<Array<string>>;
    /**
     * Error message.
     * @type {string}
     * @memberof OrderExecutionReportAllOf
     */
    error_message?: string;
    /**
     * Relay fill information on working orders.
     * @type {Array<Fills>}
     * @memberof OrderExecutionReportAllOf
     */
    fills?: Array<Fills>;
}


            export type OrderNewSingleRequestExecInstEnum = 'MAKER_OR_CANCEL' | 'AUCTION_ONLY' | 'INDICATION_OF_INTEREST';
/**
 * The new order message.
 * @export
 */
export type OrderNewSingleRequest = {
    /**
     * Exchange identifier used to identify the routing destination.
     * @type {string}
     * @memberof OrderNewSingleRequest
     */
    exchange_id: string;
    /**
     * The unique identifier of the order assigned by the client.
     * @type {string}
     * @memberof OrderNewSingleRequest
     */
    client_order_id: string;
    /**
     * Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
     * @type {string}
     * @memberof OrderNewSingleRequest
     */
    symbol_id_exchange?: string;
    /**
     * CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
     * @type {string}
     * @memberof OrderNewSingleRequest
     */
    symbol_id_coinapi?: string;
    /**
     * Order quantity.
     * @type {number}
     * @memberof OrderNewSingleRequest
     */
    amount_order: number;
    /**
     * Order price.
     * @type {number}
     * @memberof OrderNewSingleRequest
     */
    price: number;
    /**
     * 
     * @type {OrdSide}
     * @memberof OrderNewSingleRequest
     */
    side: OrdSide;
    /**
     * 
     * @type {OrdType}
     * @memberof OrderNewSingleRequest
     */
    order_type: OrdType;
    /**
     * 
     * @type {TimeInForce}
     * @memberof OrderNewSingleRequest
     */
    time_in_force: TimeInForce;
    /**
     * Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
     * @type {Date}
     * @memberof OrderNewSingleRequest
     */
    expire_time?: Date;
    /**
     * Order execution instructions are documented in the separate section: <a href=\"#ems-order-params-exec\">EMS / Starter Guide / Order parameters / Execution instructions</a> 
     * @type {Array<string>}
     * @memberof OrderNewSingleRequest
     */
    exec_inst?: Array<OrderNewSingleRequestExecInstEnum>;
}

/**
 * 
 * @export
 */
export type Position = {
    /**
     * Exchange identifier used to identify the routing destination.
     * @type {string}
     * @memberof Position
     */
    exchange_id?: string;
    /**
     * 
     * @type {Array<PositionData>}
     * @memberof Position
     */
    data?: Array<PositionData>;
}

/**
 * The Position object.
 * @export
 */
export type PositionData = {
    /**
     * Exchange symbol.
     * @type {string}
     * @memberof PositionData
     */
    symbol_id_exchange?: string;
    /**
     * CoinAPI symbol.
     * @type {string}
     * @memberof PositionData
     */
    symbol_id_coinapi?: string;
    /**
     * Calculated average price of all fills on this position.
     * @type {number}
     * @memberof PositionData
     */
    avg_entry_price?: number;
    /**
     * The current position quantity.
     * @type {number}
     * @memberof PositionData
     */
    quantity?: number;
    /**
     * 
     * @type {OrdSide}
     * @memberof PositionData
     */
    side?: OrdSide;
    /**
     * Unrealised profit or loss (PNL) of this position.
     * @type {number}
     * @memberof PositionData
     */
    unrealized_pnl?: number;
    /**
     * Leverage for this position reported by the exchange.
     * @type {number}
     * @memberof PositionData
     */
    leverage?: number;
    /**
     * Is cross margin mode enable for this position?
     * @type {boolean}
     * @memberof PositionData
     */
    cross_margin?: boolean;
    /**
     * Liquidation price. If mark price will reach this value, the position will be liquidated.
     * @type {number}
     * @memberof PositionData
     */
    liquidation_price?: number;
    /**
     * 
     * @type {Object}
     * @memberof PositionData
     */
    raw_data?: Object;
}

/**
 * Cause of rejection.
 * @export
 * @enum {string}
 */
export type RejectReason = 'OTHER' | 'EXCHANGE_UNREACHABLE' | 'EXCHANGE_RESPONSE_TIMEOUT' | 'ORDER_ID_NOT_FOUND' | 'INVALID_TYPE' | 'METHOD_NOT_SUPPORTED' | 'JSON_ERROR';

/**
 * Order time in force options are documented in the separate section: <a href=\"#ems-order-params-tif\">EMS / Starter Guide / Order parameters / Time in force</a> 
 * @export
 * @enum {string}
 */
export type TimeInForce = 'GOOD_TILL_CANCEL' | 'GOOD_TILL_TIME_EXCHANGE' | 'GOOD_TILL_TIME_OMS' | 'FILL_OR_KILL' | 'IMMEDIATE_OR_CANCEL';

/**
 * 
 * @export
 */
export type ValidationError = {
    /**
     * 
     * @type {string}
     * @memberof ValidationError
     */
    type?: string;
    /**
     * 
     * @type {string}
     * @memberof ValidationError
     */
    title?: string;
    /**
     * 
     * @type {number}
     * @memberof ValidationError
     */
    status?: number;
    /**
     * 
     * @type {string}
     * @memberof ValidationError
     */
    traceId?: string;
    /**
     * 
     * @type {string}
     * @memberof ValidationError
     */
    errors?: string;
}



/**
 * BalancesApi - fetch parameter creator
 * @export
 */
export const BalancesApiFetchParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Get current currency balance from all or single exchange.
         * @summary Get balances
         * @throws {RequiredError}
         */
        v1BalancesGet(exchangeId?: string, options: RequestOptions): FetchArgs {
            const localVarPath = `/v1/balances`;
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions: RequestOptions = Object.assign({}, { method: 'GET' }, options);
            const localVarHeaderParameter = {};
            const localVarQueryParameter = {};

            if (exchangeId !== undefined) {
                localVarQueryParameter['exchange_id'] = ((exchangeId:any):string);
            }

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            localVarUrlObj.search = null;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

export type BalancesApiType = { 
    v1BalancesGet(exchangeId?: string, options?: RequestOptions): Promise<Array<Balance>>,
}

/**
 * BalancesApi - factory function to inject configuration 
 * @export
 */
export const BalancesApi = function(configuration?: Configuration, fetch: FetchAPI = portableFetch): BalancesApiType {
    const basePath: string = (configuration && configuration.basePath) || BASE_PATH;
    return {
        /**
         * Get current currency balance from all or single exchange.
         * @summary Get balances
         * @throws {RequiredError}
         */
        v1BalancesGet(exchangeId?: string, options?: RequestOptions = {}): Promise<Array<Balance>> {
            const localVarFetchArgs = BalancesApiFetchParamCreator(configuration).v1BalancesGet(exchangeId, options);
            return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                if (response.status >= 200 && response.status < 300) {
                    return response.json();
                } else {
                    throw response;
                }
            });
        },
    }
};


/**
 * OrdersApi - fetch parameter creator
 * @export
 */
export const OrdersApiFetchParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * This request cancels all open orders on single specified exchange.
         * @summary Cancel all orders request
         * @throws {RequiredError}
         */
        v1OrdersCancelAllPost(orderCancelAllRequest: OrderCancelAllRequest, options: RequestOptions): FetchArgs {
            // verify required parameter 'orderCancelAllRequest' is not null or undefined
            if (orderCancelAllRequest === null || orderCancelAllRequest === undefined) {
                throw new RequiredError('orderCancelAllRequest','Required parameter orderCancelAllRequest was null or undefined when calling v1OrdersCancelAllPost.');
            }
            const localVarPath = `/v1/orders/cancel/all`;
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions: RequestOptions = Object.assign({}, { method: 'POST' }, options);
            const localVarHeaderParameter = {};
            const localVarQueryParameter = {};

            localVarHeaderParameter['Content-Type'] = 'application/json';

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            localVarUrlObj.search = null;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);
            const needsSerialization = (typeof orderCancelAllRequest !== "string") || localVarRequestOptions.headers['Content-Type'] === 'application/json';
            localVarRequestOptions.body =  needsSerialization ? JSON.stringify(orderCancelAllRequest != null ? orderCancelAllRequest : {}) : (((orderCancelAllRequest:any):string) || "");

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.
         * @summary Cancel order request
         * @throws {RequiredError}
         */
        v1OrdersCancelPost(orderCancelSingleRequest: OrderCancelSingleRequest, options: RequestOptions): FetchArgs {
            // verify required parameter 'orderCancelSingleRequest' is not null or undefined
            if (orderCancelSingleRequest === null || orderCancelSingleRequest === undefined) {
                throw new RequiredError('orderCancelSingleRequest','Required parameter orderCancelSingleRequest was null or undefined when calling v1OrdersCancelPost.');
            }
            const localVarPath = `/v1/orders/cancel`;
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions: RequestOptions = Object.assign({}, { method: 'POST' }, options);
            const localVarHeaderParameter = {};
            const localVarQueryParameter = {};

            localVarHeaderParameter['Content-Type'] = 'application/json';

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            localVarUrlObj.search = null;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);
            const needsSerialization = (typeof orderCancelSingleRequest !== "string") || localVarRequestOptions.headers['Content-Type'] === 'application/json';
            localVarRequestOptions.body =  needsSerialization ? JSON.stringify(orderCancelSingleRequest != null ? orderCancelSingleRequest : {}) : (((orderCancelSingleRequest:any):string) || "");

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Get last execution reports for open orders across all or single exchange.
         * @summary Get open orders
         * @throws {RequiredError}
         */
        v1OrdersGet(exchangeId?: string, options: RequestOptions): FetchArgs {
            const localVarPath = `/v1/orders`;
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions: RequestOptions = Object.assign({}, { method: 'GET' }, options);
            const localVarHeaderParameter = {};
            const localVarQueryParameter = {};

            if (exchangeId !== undefined) {
                localVarQueryParameter['exchange_id'] = ((exchangeId:any):string);
            }

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            localVarUrlObj.search = null;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * This request creating new order for the specific exchange.
         * @summary Send new order
         * @throws {RequiredError}
         */
        v1OrdersPost(orderNewSingleRequest: OrderNewSingleRequest, options: RequestOptions): FetchArgs {
            // verify required parameter 'orderNewSingleRequest' is not null or undefined
            if (orderNewSingleRequest === null || orderNewSingleRequest === undefined) {
                throw new RequiredError('orderNewSingleRequest','Required parameter orderNewSingleRequest was null or undefined when calling v1OrdersPost.');
            }
            const localVarPath = `/v1/orders`;
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions: RequestOptions = Object.assign({}, { method: 'POST' }, options);
            const localVarHeaderParameter = {};
            const localVarQueryParameter = {};

            localVarHeaderParameter['Content-Type'] = 'application/json';

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            localVarUrlObj.search = null;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);
            const needsSerialization = (typeof orderNewSingleRequest !== "string") || localVarRequestOptions.headers['Content-Type'] === 'application/json';
            localVarRequestOptions.body =  needsSerialization ? JSON.stringify(orderNewSingleRequest != null ? orderNewSingleRequest : {}) : (((orderNewSingleRequest:any):string) || "");

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Get the last order execution report for the specified order. The requested order does not need to be active or opened.
         * @summary Get order execution report
         * @throws {RequiredError}
         */
        v1OrdersStatusClientOrderIdGet(clientOrderId: string, options: RequestOptions): FetchArgs {
            // verify required parameter 'clientOrderId' is not null or undefined
            if (clientOrderId === null || clientOrderId === undefined) {
                throw new RequiredError('clientOrderId','Required parameter clientOrderId was null or undefined when calling v1OrdersStatusClientOrderIdGet.');
            }
            const localVarPath = `/v1/orders/status/{client_order_id}`
                .replace(`{${"client_order_id"}}`, encodeURIComponent(String(clientOrderId)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions: RequestOptions = Object.assign({}, { method: 'GET' }, options);
            const localVarHeaderParameter = {};
            const localVarQueryParameter = {};

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            localVarUrlObj.search = null;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

export type OrdersApiType = { 
    v1OrdersCancelAllPost(orderCancelAllRequest: OrderCancelAllRequest, options?: RequestOptions): Promise<MessageReject>,

    v1OrdersCancelPost(orderCancelSingleRequest: OrderCancelSingleRequest, options?: RequestOptions): Promise<OrderExecutionReport>,

    v1OrdersGet(exchangeId?: string, options?: RequestOptions): Promise<Array<OrderExecutionReport>>,

    v1OrdersPost(orderNewSingleRequest: OrderNewSingleRequest, options?: RequestOptions): Promise<OrderExecutionReport>,

    v1OrdersStatusClientOrderIdGet(clientOrderId: string, options?: RequestOptions): Promise<OrderExecutionReport>,
}

/**
 * OrdersApi - factory function to inject configuration 
 * @export
 */
export const OrdersApi = function(configuration?: Configuration, fetch: FetchAPI = portableFetch): OrdersApiType {
    const basePath: string = (configuration && configuration.basePath) || BASE_PATH;
    return {
        /**
         * This request cancels all open orders on single specified exchange.
         * @summary Cancel all orders request
         * @throws {RequiredError}
         */
        v1OrdersCancelAllPost(orderCancelAllRequest: OrderCancelAllRequest, options?: RequestOptions = {}): Promise<MessageReject> {
            const localVarFetchArgs = OrdersApiFetchParamCreator(configuration).v1OrdersCancelAllPost(orderCancelAllRequest, options);
            return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                if (response.status >= 200 && response.status < 300) {
                    return response.json();
                } else {
                    throw response;
                }
            });
        },
        /**
         * Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.
         * @summary Cancel order request
         * @throws {RequiredError}
         */
        v1OrdersCancelPost(orderCancelSingleRequest: OrderCancelSingleRequest, options?: RequestOptions = {}): Promise<OrderExecutionReport> {
            const localVarFetchArgs = OrdersApiFetchParamCreator(configuration).v1OrdersCancelPost(orderCancelSingleRequest, options);
            return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                if (response.status >= 200 && response.status < 300) {
                    return response.json();
                } else {
                    throw response;
                }
            });
        },
        /**
         * Get last execution reports for open orders across all or single exchange.
         * @summary Get open orders
         * @throws {RequiredError}
         */
        v1OrdersGet(exchangeId?: string, options?: RequestOptions = {}): Promise<Array<OrderExecutionReport>> {
            const localVarFetchArgs = OrdersApiFetchParamCreator(configuration).v1OrdersGet(exchangeId, options);
            return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                if (response.status >= 200 && response.status < 300) {
                    return response.json();
                } else {
                    throw response;
                }
            });
        },
        /**
         * This request creating new order for the specific exchange.
         * @summary Send new order
         * @throws {RequiredError}
         */
        v1OrdersPost(orderNewSingleRequest: OrderNewSingleRequest, options?: RequestOptions = {}): Promise<OrderExecutionReport> {
            const localVarFetchArgs = OrdersApiFetchParamCreator(configuration).v1OrdersPost(orderNewSingleRequest, options);
            return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                if (response.status >= 200 && response.status < 300) {
                    return response.json();
                } else {
                    throw response;
                }
            });
        },
        /**
         * Get the last order execution report for the specified order. The requested order does not need to be active or opened.
         * @summary Get order execution report
         * @throws {RequiredError}
         */
        v1OrdersStatusClientOrderIdGet(clientOrderId: string, options?: RequestOptions = {}): Promise<OrderExecutionReport> {
            const localVarFetchArgs = OrdersApiFetchParamCreator(configuration).v1OrdersStatusClientOrderIdGet(clientOrderId, options);
            return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                if (response.status >= 200 && response.status < 300) {
                    return response.json();
                } else {
                    throw response;
                }
            });
        },
    }
};


/**
 * PositionsApi - fetch parameter creator
 * @export
 */
export const PositionsApiFetchParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Get current open positions across all or single exchange.
         * @summary Get open positions
         * @throws {RequiredError}
         */
        v1PositionsGet(exchangeId?: string, options: RequestOptions): FetchArgs {
            const localVarPath = `/v1/positions`;
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions: RequestOptions = Object.assign({}, { method: 'GET' }, options);
            const localVarHeaderParameter = {};
            const localVarQueryParameter = {};

            if (exchangeId !== undefined) {
                localVarQueryParameter['exchange_id'] = ((exchangeId:any):string);
            }

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            localVarUrlObj.search = null;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

export type PositionsApiType = { 
    v1PositionsGet(exchangeId?: string, options?: RequestOptions): Promise<Array<Position>>,
}

/**
 * PositionsApi - factory function to inject configuration 
 * @export
 */
export const PositionsApi = function(configuration?: Configuration, fetch: FetchAPI = portableFetch): PositionsApiType {
    const basePath: string = (configuration && configuration.basePath) || BASE_PATH;
    return {
        /**
         * Get current open positions across all or single exchange.
         * @summary Get open positions
         * @throws {RequiredError}
         */
        v1PositionsGet(exchangeId?: string, options?: RequestOptions = {}): Promise<Array<Position>> {
            const localVarFetchArgs = PositionsApiFetchParamCreator(configuration).v1PositionsGet(exchangeId, options);
            return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                if (response.status >= 200 && response.status < 300) {
                    return response.json();
                } else {
                    throw response;
                }
            });
        },
    }
};


export type ApiTypes = { 
    BalancesApi: BalancesApiType,

    OrdersApi: OrdersApiType,

    PositionsApi: PositionsApiType,
 }
