"""
    EMS - REST API

    This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a hrefs=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside>   # noqa: E501

    The version of the OpenAPI document: v1
    Contact: support@coinapi.io
    Generated by: https://openapi-generator.tech
"""


import re  # noqa: F401
import sys  # noqa: F401

from openapi_client.model_utils import (  # noqa: F401
    ApiTypeError,
    ModelComposed,
    ModelNormal,
    ModelSimple,
    cached_property,
    change_keys_js_to_python,
    convert_js_args_to_python_args,
    date,
    datetime,
    file_type,
    none_type,
    validate_get_composed_info,
    OpenApiModel
)
from openapi_client.exceptions import ApiAttributeError


def lazy_import():
    from openapi_client.model.exec_inst import ExecInst
    from openapi_client.model.fills import Fills
    from openapi_client.model.ord_side import OrdSide
    from openapi_client.model.ord_status import OrdStatus
    from openapi_client.model.ord_type import OrdType
    from openapi_client.model.order_execution_report_all_of import OrderExecutionReportAllOf
    from openapi_client.model.order_new_single_request import OrderNewSingleRequest
    from openapi_client.model.time_in_force import TimeInForce
    globals()['ExecInst'] = ExecInst
    globals()['Fills'] = Fills
    globals()['OrdSide'] = OrdSide
    globals()['OrdStatus'] = OrdStatus
    globals()['OrdType'] = OrdType
    globals()['OrderExecutionReportAllOf'] = OrderExecutionReportAllOf
    globals()['OrderNewSingleRequest'] = OrderNewSingleRequest
    globals()['TimeInForce'] = TimeInForce


class OrderExecutionReport(ModelComposed):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.

    Attributes:
      allowed_values (dict): The key is the tuple path to the attribute
          and the for var_name this is (var_name,). The value is a dict
          with a capitalized key describing the allowed value and an allowed
          value. These dicts store the allowed enum values.
      attribute_map (dict): The key is attribute name
          and the value is json key in definition.
      discriminator_value_class_map (dict): A dict to go from the discriminator
          variable value to the discriminator class name.
      validations (dict): The key is the tuple path to the attribute
          and the for var_name this is (var_name,). The value is a dict
          that stores validations for max_length, min_length, max_items,
          min_items, exclusive_maximum, inclusive_maximum, exclusive_minimum,
          inclusive_minimum, and regex.
      additional_properties_type (tuple): A tuple of classes accepted
          as additional properties values.
    """

    allowed_values = {
    }

    validations = {
    }

    @cached_property
    def additional_properties_type():
        """
        This must be a method because a model may have properties that are
        of type self, this must run after the class is loaded
        """
        lazy_import()
        return (bool, date, datetime, dict, float, int, list, str, none_type,)  # noqa: E501

    _nullable = False

    @cached_property
    def openapi_types():
        """
        This must be a method because a model may have properties that are
        of type self, this must run after the class is loaded

        Returns
            openapi_types (dict): The key is attribute name
                and the value is attribute type.
        """
        lazy_import()
        return {
            'exchange_id': (str,),  # noqa: E501
            'client_order_id': (str,),  # noqa: E501
            'amount_order': (float,),  # noqa: E501
            'price': (float,),  # noqa: E501
            'side': (OrdSide,),  # noqa: E501
            'order_type': (OrdType,),  # noqa: E501
            'time_in_force': (TimeInForce,),  # noqa: E501
            'client_order_id_format_exchange': (str,),  # noqa: E501
            'amount_open': (float,),  # noqa: E501
            'amount_filled': (float,),  # noqa: E501
            'status': (OrdStatus,),  # noqa: E501
            'symbol_id_exchange': (str,),  # noqa: E501
            'symbol_id_coinapi': (str,),  # noqa: E501
            'expire_time': (date,),  # noqa: E501
            'exec_inst': (ExecInst,),  # noqa: E501
            'exchange_order_id': (str,),  # noqa: E501
            'avg_px': (float,),  # noqa: E501
            'status_history': ([[str]],),  # noqa: E501
            'error_message': (str,),  # noqa: E501
            'fills': ([Fills],),  # noqa: E501
        }

    @cached_property
    def discriminator():
        return None


    attribute_map = {
        'exchange_id': 'exchange_id',  # noqa: E501
        'client_order_id': 'client_order_id',  # noqa: E501
        'amount_order': 'amount_order',  # noqa: E501
        'price': 'price',  # noqa: E501
        'side': 'side',  # noqa: E501
        'order_type': 'order_type',  # noqa: E501
        'time_in_force': 'time_in_force',  # noqa: E501
        'client_order_id_format_exchange': 'client_order_id_format_exchange',  # noqa: E501
        'amount_open': 'amount_open',  # noqa: E501
        'amount_filled': 'amount_filled',  # noqa: E501
        'status': 'status',  # noqa: E501
        'symbol_id_exchange': 'symbol_id_exchange',  # noqa: E501
        'symbol_id_coinapi': 'symbol_id_coinapi',  # noqa: E501
        'expire_time': 'expire_time',  # noqa: E501
        'exec_inst': 'exec_inst',  # noqa: E501
        'exchange_order_id': 'exchange_order_id',  # noqa: E501
        'avg_px': 'avg_px',  # noqa: E501
        'status_history': 'status_history',  # noqa: E501
        'error_message': 'error_message',  # noqa: E501
        'fills': 'fills',  # noqa: E501
    }

    read_only_vars = {
    }

    @classmethod
    @convert_js_args_to_python_args
    def _from_openapi_data(cls, *args, **kwargs):  # noqa: E501
        """OrderExecutionReport - a model defined in OpenAPI

        Keyword Args:
            exchange_id (str): Exchange identifier used to identify the routing destination.
            client_order_id (str): The unique identifier of the order assigned by the client.
            amount_order (float): Order quantity.
            price (float): Order price.
            side (OrdSide):
            order_type (OrdType):
            time_in_force (TimeInForce):
            client_order_id_format_exchange (str): The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
            amount_open (float): Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
            amount_filled (float): Total quantity filled.
            status (OrdStatus):
            _check_type (bool): if True, values for parameters in openapi_types
                                will be type checked and a TypeError will be
                                raised if the wrong type is input.
                                Defaults to True
            _path_to_item (tuple/list): This is a list of keys or values to
                                drill down to the model in received_data
                                when deserializing a response
            _spec_property_naming (bool): True if the variable names in the input data
                                are serialized names, as specified in the OpenAPI document.
                                False if the variable names in the input data
                                are pythonic names, e.g. snake case (default)
            _configuration (Configuration): the instance to use when
                                deserializing a file_type parameter.
                                If passed, type conversion is attempted
                                If omitted no type conversion is done.
            _visited_composed_classes (tuple): This stores a tuple of
                                classes that we have traveled through so that
                                if we see that class again we will not use its
                                discriminator again.
                                When traveling through a discriminator, the
                                composed schema that is
                                is traveled through is added to this set.
                                For example if Animal has a discriminator
                                petType and we pass in "Dog", and the class Dog
                                allOf includes Animal, we move through Animal
                                once using the discriminator, and pick Dog.
                                Then in Dog, we will make an instance of the
                                Animal class but this time we won't travel
                                through its discriminator because we passed in
                                _visited_composed_classes = (Animal,)
            symbol_id_exchange (str): Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.. [optional]  # noqa: E501
            symbol_id_coinapi (str): CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.. [optional]  # noqa: E501
            expire_time (date): Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.. [optional]  # noqa: E501
            exec_inst (ExecInst): [optional]  # noqa: E501
            exchange_order_id (str): Unique identifier of the order assigned by the exchange or executing system.. [optional]  # noqa: E501
            avg_px (float): Calculated average price of all fills on this order.. [optional]  # noqa: E501
            status_history ([[str]]): Timestamped history of order status changes.. [optional]  # noqa: E501
            error_message (str): Error message.. [optional]  # noqa: E501
            fills ([Fills]): Relay fill information on working orders.. [optional]  # noqa: E501
        """

        _check_type = kwargs.pop('_check_type', True)
        _spec_property_naming = kwargs.pop('_spec_property_naming', False)
        _path_to_item = kwargs.pop('_path_to_item', ())
        _configuration = kwargs.pop('_configuration', None)
        _visited_composed_classes = kwargs.pop('_visited_composed_classes', ())

        self = super(OpenApiModel, cls).__new__(cls)

        if args:
            raise ApiTypeError(
                "Invalid positional arguments=%s passed to %s. Remove those invalid positional arguments." % (
                    args,
                    self.__class__.__name__,
                ),
                path_to_item=_path_to_item,
                valid_classes=(self.__class__,),
            )

        self._data_store = {}
        self._check_type = _check_type
        self._spec_property_naming = _spec_property_naming
        self._path_to_item = _path_to_item
        self._configuration = _configuration
        self._visited_composed_classes = _visited_composed_classes + (self.__class__,)

        constant_args = {
            '_check_type': _check_type,
            '_path_to_item': _path_to_item,
            '_spec_property_naming': _spec_property_naming,
            '_configuration': _configuration,
            '_visited_composed_classes': self._visited_composed_classes,
        }
        composed_info = validate_get_composed_info(
            constant_args, kwargs, self)
        self._composed_instances = composed_info[0]
        self._var_name_to_model_instances = composed_info[1]
        self._additional_properties_model_instances = composed_info[2]
        discarded_args = composed_info[3]

        for var_name, var_value in kwargs.items():
            if var_name in discarded_args and \
                        self._configuration is not None and \
                        self._configuration.discard_unknown_keys and \
                        self._additional_properties_model_instances:
                # discard variable.
                continue
            setattr(self, var_name, var_value)

        return self

    required_properties = set([
        '_data_store',
        '_check_type',
        '_spec_property_naming',
        '_path_to_item',
        '_configuration',
        '_visited_composed_classes',
        '_composed_instances',
        '_var_name_to_model_instances',
        '_additional_properties_model_instances',
    ])

    @convert_js_args_to_python_args
    def __init__(self, *args, **kwargs):  # noqa: E501
        """OrderExecutionReport - a model defined in OpenAPI

        Keyword Args:
            exchange_id (str): Exchange identifier used to identify the routing destination.
            client_order_id (str): The unique identifier of the order assigned by the client.
            amount_order (float): Order quantity.
            price (float): Order price.
            side (OrdSide):
            order_type (OrdType):
            time_in_force (TimeInForce):
            client_order_id_format_exchange (str): The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
            amount_open (float): Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
            amount_filled (float): Total quantity filled.
            status (OrdStatus):
            _check_type (bool): if True, values for parameters in openapi_types
                                will be type checked and a TypeError will be
                                raised if the wrong type is input.
                                Defaults to True
            _path_to_item (tuple/list): This is a list of keys or values to
                                drill down to the model in received_data
                                when deserializing a response
            _spec_property_naming (bool): True if the variable names in the input data
                                are serialized names, as specified in the OpenAPI document.
                                False if the variable names in the input data
                                are pythonic names, e.g. snake case (default)
            _configuration (Configuration): the instance to use when
                                deserializing a file_type parameter.
                                If passed, type conversion is attempted
                                If omitted no type conversion is done.
            _visited_composed_classes (tuple): This stores a tuple of
                                classes that we have traveled through so that
                                if we see that class again we will not use its
                                discriminator again.
                                When traveling through a discriminator, the
                                composed schema that is
                                is traveled through is added to this set.
                                For example if Animal has a discriminator
                                petType and we pass in "Dog", and the class Dog
                                allOf includes Animal, we move through Animal
                                once using the discriminator, and pick Dog.
                                Then in Dog, we will make an instance of the
                                Animal class but this time we won't travel
                                through its discriminator because we passed in
                                _visited_composed_classes = (Animal,)
            symbol_id_exchange (str): Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.. [optional]  # noqa: E501
            symbol_id_coinapi (str): CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.. [optional]  # noqa: E501
            expire_time (date): Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.. [optional]  # noqa: E501
            exec_inst (ExecInst): [optional]  # noqa: E501
            exchange_order_id (str): Unique identifier of the order assigned by the exchange or executing system.. [optional]  # noqa: E501
            avg_px (float): Calculated average price of all fills on this order.. [optional]  # noqa: E501
            status_history ([[str]]): Timestamped history of order status changes.. [optional]  # noqa: E501
            error_message (str): Error message.. [optional]  # noqa: E501
            fills ([Fills]): Relay fill information on working orders.. [optional]  # noqa: E501
        """

        _check_type = kwargs.pop('_check_type', True)
        _spec_property_naming = kwargs.pop('_spec_property_naming', False)
        _path_to_item = kwargs.pop('_path_to_item', ())
        _configuration = kwargs.pop('_configuration', None)
        _visited_composed_classes = kwargs.pop('_visited_composed_classes', ())

        if args:
            raise ApiTypeError(
                "Invalid positional arguments=%s passed to %s. Remove those invalid positional arguments." % (
                    args,
                    self.__class__.__name__,
                ),
                path_to_item=_path_to_item,
                valid_classes=(self.__class__,),
            )

        self._data_store = {}
        self._check_type = _check_type
        self._spec_property_naming = _spec_property_naming
        self._path_to_item = _path_to_item
        self._configuration = _configuration
        self._visited_composed_classes = _visited_composed_classes + (self.__class__,)

        constant_args = {
            '_check_type': _check_type,
            '_path_to_item': _path_to_item,
            '_spec_property_naming': _spec_property_naming,
            '_configuration': _configuration,
            '_visited_composed_classes': self._visited_composed_classes,
        }
        composed_info = validate_get_composed_info(
            constant_args, kwargs, self)
        self._composed_instances = composed_info[0]
        self._var_name_to_model_instances = composed_info[1]
        self._additional_properties_model_instances = composed_info[2]
        discarded_args = composed_info[3]

        for var_name, var_value in kwargs.items():
            if var_name in discarded_args and \
                        self._configuration is not None and \
                        self._configuration.discard_unknown_keys and \
                        self._additional_properties_model_instances:
                # discard variable.
                continue
            setattr(self, var_name, var_value)
            if var_name in self.read_only_vars:
                raise ApiAttributeError(f"`{var_name}` is a read-only attribute. Use `from_openapi_data` to instantiate "
                                     f"class with read only attributes.")

    @cached_property
    def _composed_schemas():
        # we need this here to make our import statements work
        # we must store _composed_schemas in here so the code is only run
        # when we invoke this method. If we kept this at the class
        # level we would get an error because the class level
        # code would be run when this module is imported, and these composed
        # classes don't exist yet because their module has not finished
        # loading
        lazy_import()
        return {
          'anyOf': [
          ],
          'allOf': [
              OrderExecutionReportAllOf,
              OrderNewSingleRequest,
          ],
          'oneOf': [
          ],
        }
