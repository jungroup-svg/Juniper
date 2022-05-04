/*
 * EMS - REST API
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.api;

import org.openapitools.client.ApiException;
import org.openapitools.client.model.MessageReject;
import org.openapitools.client.model.OrderCancelAllRequest;
import org.openapitools.client.model.OrderCancelSingleRequest;
import org.openapitools.client.model.OrderExecutionReport;
import org.openapitools.client.model.OrderNewSingleRequest;
import org.openapitools.client.model.ValidationError;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for OrdersApi
 */
@Ignore
public class OrdersApiTest {

    private final OrdersApi api = new OrdersApi();

    
    /**
     * Cancel all orders request
     *
     * This request cancels all open orders on single specified exchange.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void v1OrdersCancelAllPostTest() throws ApiException {
        OrderCancelAllRequest orderCancelAllRequest = null;
                MessageReject response = api.v1OrdersCancelAllPost(orderCancelAllRequest);
        // TODO: test validations
    }
    
    /**
     * Cancel order request
     *
     * Request cancel for an existing order. The order can be canceled using the &#x60;client_order_id&#x60; or &#x60;exchange_order_id&#x60;.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void v1OrdersCancelPostTest() throws ApiException {
        OrderCancelSingleRequest orderCancelSingleRequest = null;
                OrderExecutionReport response = api.v1OrdersCancelPost(orderCancelSingleRequest);
        // TODO: test validations
    }
    
    /**
     * Get open orders
     *
     * Get last execution reports for open orders across all or single exchange.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void v1OrdersGetTest() throws ApiException {
        String exchangeId = null;
                List<OrderExecutionReport> response = api.v1OrdersGet(exchangeId);
        // TODO: test validations
    }
    
    /**
     * Send new order
     *
     * This request creating new order for the specific exchange.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void v1OrdersPostTest() throws ApiException {
        OrderNewSingleRequest orderNewSingleRequest = null;
                OrderExecutionReport response = api.v1OrdersPost(orderNewSingleRequest);
        // TODO: test validations
    }
    
    /**
     * Get order execution report
     *
     * Get the last order execution report for the specified order. The requested order does not need to be active or opened.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void v1OrdersStatusClientOrderIdGetTest() throws ApiException {
        String clientOrderId = null;
                OrderExecutionReport response = api.v1OrdersStatusClientOrderIdGet(clientOrderId);
        // TODO: test validations
    }
    
}
