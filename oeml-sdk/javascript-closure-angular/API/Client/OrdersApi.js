/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.OrdersApi.
 * Do not edit this file by hand or your changes will be lost next time it is
 * generated.
 *
 * This section will provide necessary information about the &#x60;CoinAPI EMS REST API&#x60; protocol. &lt;br/&gt; This API is also available in the Postman application: &lt;a href&#x3D;\&quot;https://postman.coinapi.io/\&quot; target&#x3D;\&quot;_blank\&quot;&gt;https://postman.coinapi.io/&lt;/a&gt;       &lt;br/&gt;&lt;br/&gt; Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 * Version: v1
 * Generated by: org.openapitools.codegen.languages.JavascriptClosureAngularClientCodegen
 */
/**
 * @license 28961
 * https://github.com/coinapi/coinapi-sdk/blob/master/LICENSE
 */

goog.provide('API.Client.OrdersApi');

goog.require('API.Client.MessageReject');
goog.require('API.Client.OrderCancelAllRequest');
goog.require('API.Client.OrderCancelSingleRequest');
goog.require('API.Client.OrderExecutionReport');
goog.require('API.Client.OrderNewSingleRequest');
goog.require('API.Client.ValidationError');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.OrdersApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('OrdersApiBasePath') ?
                   /** @type {!string} */ ($injector.get('OrdersApiBasePath')) :
                   'https://ems-gateway-aws-eu-central-1-dev.coinapi.io';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('OrdersApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('OrdersApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.OrdersApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * Cancel all orders request
 * This request cancels all open orders on single specified exchange.
 * @param {!OrderCancelAllRequest} orderCancelAllRequest OrderCancelAllRequest object.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.MessageReject>}
 */
API.Client.OrdersApi.prototype.v1OrdersCancelAllPost = function(orderCancelAllRequest, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/orders/cancel/all';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'orderCancelAllRequest' is set
  if (!orderCancelAllRequest) {
    throw new Error('Missing required parameter orderCancelAllRequest when calling v1OrdersCancelAllPost');
  }
  /** @type {!Object} */
  var httpRequestParams = {
    method: 'POST',
    url: path,
    json: true,
    data: orderCancelAllRequest,
        params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * Cancel order request
 * Request cancel for an existing order. The order can be canceled using the &#x60;client_order_id&#x60; or &#x60;exchange_order_id&#x60;.
 * @param {!OrderCancelSingleRequest} orderCancelSingleRequest OrderCancelSingleRequest object.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.OrderExecutionReport>}
 */
API.Client.OrdersApi.prototype.v1OrdersCancelPost = function(orderCancelSingleRequest, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/orders/cancel';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'orderCancelSingleRequest' is set
  if (!orderCancelSingleRequest) {
    throw new Error('Missing required parameter orderCancelSingleRequest when calling v1OrdersCancelPost');
  }
  /** @type {!Object} */
  var httpRequestParams = {
    method: 'POST',
    url: path,
    json: true,
    data: orderCancelSingleRequest,
        params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * Get open orders
 * Get last execution reports for open orders across all or single exchange.
 * @param {!string=} opt_exchangeId Filter the open orders to the specific exchange.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.OrderExecutionReport>>}
 */
API.Client.OrdersApi.prototype.v1OrdersGet = function(opt_exchangeId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/orders';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_exchangeId !== undefined) {
    queryParameters['exchange_id'] = opt_exchangeId;
  }

  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * Send new order
 * This request creating new order for the specific exchange.
 * @param {!OrderNewSingleRequest} orderNewSingleRequest OrderNewSingleRequest object.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.OrderExecutionReport>}
 */
API.Client.OrdersApi.prototype.v1OrdersPost = function(orderNewSingleRequest, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/orders';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'orderNewSingleRequest' is set
  if (!orderNewSingleRequest) {
    throw new Error('Missing required parameter orderNewSingleRequest when calling v1OrdersPost');
  }
  /** @type {!Object} */
  var httpRequestParams = {
    method: 'POST',
    url: path,
    json: true,
    data: orderNewSingleRequest,
        params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * Get order execution report
 * Get the last order execution report for the specified order. The requested order does not need to be active or opened.
 * @param {!string} clientOrderId The unique identifier of the order assigned by the client.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.OrderExecutionReport>}
 */
API.Client.OrdersApi.prototype.v1OrdersStatusClientOrderIdGet = function(clientOrderId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/orders/status/{client_order_id}'
      .replace('{' + 'client_order_id' + '}', String(clientOrderId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'clientOrderId' is set
  if (!clientOrderId) {
    throw new Error('Missing required parameter clientOrderId when calling v1OrdersStatusClientOrderIdGet');
  }
  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}
