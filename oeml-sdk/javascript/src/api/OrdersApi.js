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


import ApiClient from "../ApiClient";
import MessageReject from '../model/MessageReject';
import OrderCancelAllRequest from '../model/OrderCancelAllRequest';
import OrderCancelSingleRequest from '../model/OrderCancelSingleRequest';
import OrderExecutionReport from '../model/OrderExecutionReport';
import OrderNewSingleRequest from '../model/OrderNewSingleRequest';
import ValidationError from '../model/ValidationError';

/**
* Orders service.
* @module api/OrdersApi
* @version v1
*/
export default class OrdersApi {

    /**
    * Constructs a new OrdersApi. 
    * @alias module:api/OrdersApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the v1OrdersCancelAllPost operation.
     * @callback module:api/OrdersApi~v1OrdersCancelAllPostCallback
     * @param {String} error Error message, if any.
     * @param {module:model/MessageReject} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Cancel all orders request
     * This request cancels all open orders on single specified exchange.
     * @param {module:model/OrderCancelAllRequest} orderCancelAllRequest OrderCancelAllRequest object.
     * @param {module:api/OrdersApi~v1OrdersCancelAllPostCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/MessageReject}
     */
    v1OrdersCancelAllPost(orderCancelAllRequest, callback) {
      let postBody = orderCancelAllRequest;
      // verify the required parameter 'orderCancelAllRequest' is set
      if (orderCancelAllRequest === undefined || orderCancelAllRequest === null) {
        throw new Error("Missing the required parameter 'orderCancelAllRequest' when calling v1OrdersCancelAllPost");
      }

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = ['application/json'];
      let accepts = ['application/json', 'appliction/json'];
      let returnType = MessageReject;
      return this.apiClient.callApi(
        '/v1/orders/cancel/all', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the v1OrdersCancelPost operation.
     * @callback module:api/OrdersApi~v1OrdersCancelPostCallback
     * @param {String} error Error message, if any.
     * @param {module:model/OrderExecutionReport} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Cancel order request
     * Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.
     * @param {module:model/OrderCancelSingleRequest} orderCancelSingleRequest OrderCancelSingleRequest object.
     * @param {module:api/OrdersApi~v1OrdersCancelPostCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/OrderExecutionReport}
     */
    v1OrdersCancelPost(orderCancelSingleRequest, callback) {
      let postBody = orderCancelSingleRequest;
      // verify the required parameter 'orderCancelSingleRequest' is set
      if (orderCancelSingleRequest === undefined || orderCancelSingleRequest === null) {
        throw new Error("Missing the required parameter 'orderCancelSingleRequest' when calling v1OrdersCancelPost");
      }

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = ['application/json'];
      let accepts = ['application/json', 'appliction/json'];
      let returnType = OrderExecutionReport;
      return this.apiClient.callApi(
        '/v1/orders/cancel', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the v1OrdersGet operation.
     * @callback module:api/OrdersApi~v1OrdersGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/OrderExecutionReport>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get open orders
     * Get last execution reports for open orders across all or single exchange.
     * @param {Object} opts Optional parameters
     * @param {String} opts.exchangeId Filter the open orders to the specific exchange.
     * @param {module:api/OrdersApi~v1OrdersGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/OrderExecutionReport>}
     */
    v1OrdersGet(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'exchange_id': opts['exchangeId']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['application/json', 'appliction/json'];
      let returnType = [OrderExecutionReport];
      return this.apiClient.callApi(
        '/v1/orders', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the v1OrdersPost operation.
     * @callback module:api/OrdersApi~v1OrdersPostCallback
     * @param {String} error Error message, if any.
     * @param {module:model/OrderExecutionReport} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Send new order
     * This request creating new order for the specific exchange.
     * @param {module:model/OrderNewSingleRequest} orderNewSingleRequest OrderNewSingleRequest object.
     * @param {module:api/OrdersApi~v1OrdersPostCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/OrderExecutionReport}
     */
    v1OrdersPost(orderNewSingleRequest, callback) {
      let postBody = orderNewSingleRequest;
      // verify the required parameter 'orderNewSingleRequest' is set
      if (orderNewSingleRequest === undefined || orderNewSingleRequest === null) {
        throw new Error("Missing the required parameter 'orderNewSingleRequest' when calling v1OrdersPost");
      }

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = ['application/json'];
      let accepts = ['application/json', 'appliction/json'];
      let returnType = OrderExecutionReport;
      return this.apiClient.callApi(
        '/v1/orders', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the v1OrdersStatusClientOrderIdGet operation.
     * @callback module:api/OrdersApi~v1OrdersStatusClientOrderIdGetCallback
     * @param {String} error Error message, if any.
     * @param {module:model/OrderExecutionReport} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get order execution report
     * Get the last order execution report for the specified order. The requested order does not need to be active or opened.
     * @param {String} clientOrderId The unique identifier of the order assigned by the client.
     * @param {module:api/OrdersApi~v1OrdersStatusClientOrderIdGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/OrderExecutionReport}
     */
    v1OrdersStatusClientOrderIdGet(clientOrderId, callback) {
      let postBody = null;
      // verify the required parameter 'clientOrderId' is set
      if (clientOrderId === undefined || clientOrderId === null) {
        throw new Error("Missing the required parameter 'clientOrderId' when calling v1OrdersStatusClientOrderIdGet");
      }

      let pathParams = {
        'client_order_id': clientOrderId
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = OrderExecutionReport;
      return this.apiClient.callApi(
        '/v1/orders/status/{client_order_id}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
