=begin comment

EMS - REST API

This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::OpenAPIClient::OrdersApi');

my $api = WWW::OpenAPIClient::OrdersApi->new();
isa_ok($api, 'WWW::OpenAPIClient::OrdersApi');

#
# v1_orders_cancel_all_post test
#
# uncomment below and update the test
#my $v1_orders_cancel_all_post_order_cancel_all_request = undef; # replace NULL with a proper value
#my $v1_orders_cancel_all_post_result = $api->v1_orders_cancel_all_post(order_cancel_all_request => $v1_orders_cancel_all_post_order_cancel_all_request);

#
# v1_orders_cancel_post test
#
# uncomment below and update the test
#my $v1_orders_cancel_post_order_cancel_single_request = undef; # replace NULL with a proper value
#my $v1_orders_cancel_post_result = $api->v1_orders_cancel_post(order_cancel_single_request => $v1_orders_cancel_post_order_cancel_single_request);

#
# v1_orders_get test
#
# uncomment below and update the test
#my $v1_orders_get_exchange_id = undef; # replace NULL with a proper value
#my $v1_orders_get_result = $api->v1_orders_get(exchange_id => $v1_orders_get_exchange_id);

#
# v1_orders_post test
#
# uncomment below and update the test
#my $v1_orders_post_order_new_single_request = undef; # replace NULL with a proper value
#my $v1_orders_post_result = $api->v1_orders_post(order_new_single_request => $v1_orders_post_order_new_single_request);

#
# v1_orders_status_client_order_id_get test
#
# uncomment below and update the test
#my $v1_orders_status_client_order_id_get_client_order_id = undef; # replace NULL with a proper value
#my $v1_orders_status_client_order_id_get_result = $api->v1_orders_status_client_order_id_get(client_order_id => $v1_orders_status_client_order_id_get_client_order_id);

