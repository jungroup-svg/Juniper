<?php
/**
 * OrderExecutionReport
 *
 * PHP version 7.3
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * EMS - REST API
 *
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a hrefs=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside>
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 5.4.0
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace OpenAPI\Client\Model;

use \ArrayAccess;
use \OpenAPI\Client\ObjectSerializer;

/**
 * OrderExecutionReport Class Doc Comment
 *
 * @category Class
 * @description The order execution report object.
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<TKey, TValue>
 * @template TKey int|null
 * @template TValue mixed|null
 */
class OrderExecutionReport implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'OrderExecutionReport';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'exchange_id' => 'string',
        'client_order_id' => 'string',
        'symbol_id_exchange' => 'string',
        'symbol_id_coinapi' => 'string',
        'amount_order' => 'float',
        'price' => 'float',
        'side' => '\OpenAPI\Client\Model\OrdSide',
        'order_type' => '\OpenAPI\Client\Model\OrdType',
        'time_in_force' => '\OpenAPI\Client\Model\TimeInForce',
        'expire_time' => '\DateTime',
        'exec_inst' => 'string[]',
        'client_order_id_format_exchange' => 'string',
        'exchange_order_id' => 'string',
        'amount_open' => 'float',
        'amount_filled' => 'float',
        'avg_px' => 'float',
        'status' => '\OpenAPI\Client\Model\OrdStatus',
        'status_history' => 'string[][]',
        'error_message' => 'string',
        'fills' => '\OpenAPI\Client\Model\Fills[]'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'exchange_id' => null,
        'client_order_id' => null,
        'symbol_id_exchange' => null,
        'symbol_id_coinapi' => null,
        'amount_order' => null,
        'price' => null,
        'side' => null,
        'order_type' => null,
        'time_in_force' => null,
        'expire_time' => null,
        'exec_inst' => null,
        'client_order_id_format_exchange' => null,
        'exchange_order_id' => null,
        'amount_open' => null,
        'amount_filled' => null,
        'avg_px' => null,
        'status' => null,
        'status_history' => null,
        'error_message' => null,
        'fills' => null
    ];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPITypes()
    {
        return self::$openAPITypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPIFormats()
    {
        return self::$openAPIFormats;
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'exchange_id' => 'exchange_id',
        'client_order_id' => 'client_order_id',
        'symbol_id_exchange' => 'symbol_id_exchange',
        'symbol_id_coinapi' => 'symbol_id_coinapi',
        'amount_order' => 'amount_order',
        'price' => 'price',
        'side' => 'side',
        'order_type' => 'order_type',
        'time_in_force' => 'time_in_force',
        'expire_time' => 'expire_time',
        'exec_inst' => 'exec_inst',
        'client_order_id_format_exchange' => 'client_order_id_format_exchange',
        'exchange_order_id' => 'exchange_order_id',
        'amount_open' => 'amount_open',
        'amount_filled' => 'amount_filled',
        'avg_px' => 'avg_px',
        'status' => 'status',
        'status_history' => 'status_history',
        'error_message' => 'error_message',
        'fills' => 'fills'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'exchange_id' => 'setExchangeId',
        'client_order_id' => 'setClientOrderId',
        'symbol_id_exchange' => 'setSymbolIdExchange',
        'symbol_id_coinapi' => 'setSymbolIdCoinapi',
        'amount_order' => 'setAmountOrder',
        'price' => 'setPrice',
        'side' => 'setSide',
        'order_type' => 'setOrderType',
        'time_in_force' => 'setTimeInForce',
        'expire_time' => 'setExpireTime',
        'exec_inst' => 'setExecInst',
        'client_order_id_format_exchange' => 'setClientOrderIdFormatExchange',
        'exchange_order_id' => 'setExchangeOrderId',
        'amount_open' => 'setAmountOpen',
        'amount_filled' => 'setAmountFilled',
        'avg_px' => 'setAvgPx',
        'status' => 'setStatus',
        'status_history' => 'setStatusHistory',
        'error_message' => 'setErrorMessage',
        'fills' => 'setFills'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'exchange_id' => 'getExchangeId',
        'client_order_id' => 'getClientOrderId',
        'symbol_id_exchange' => 'getSymbolIdExchange',
        'symbol_id_coinapi' => 'getSymbolIdCoinapi',
        'amount_order' => 'getAmountOrder',
        'price' => 'getPrice',
        'side' => 'getSide',
        'order_type' => 'getOrderType',
        'time_in_force' => 'getTimeInForce',
        'expire_time' => 'getExpireTime',
        'exec_inst' => 'getExecInst',
        'client_order_id_format_exchange' => 'getClientOrderIdFormatExchange',
        'exchange_order_id' => 'getExchangeOrderId',
        'amount_open' => 'getAmountOpen',
        'amount_filled' => 'getAmountFilled',
        'avg_px' => 'getAvgPx',
        'status' => 'getStatus',
        'status_history' => 'getStatusHistory',
        'error_message' => 'getErrorMessage',
        'fills' => 'getFills'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$openAPIModelName;
    }

    const EXEC_INST_MAKER_OR_CANCEL = 'MAKER_OR_CANCEL';
    const EXEC_INST_AUCTION_ONLY = 'AUCTION_ONLY';
    const EXEC_INST_INDICATION_OF_INTEREST = 'INDICATION_OF_INTEREST';

    /**
     * Gets allowable values of the enum
     *
     * @return string[]
     */
    public function getExecInstAllowableValues()
    {
        return [
            self::EXEC_INST_MAKER_OR_CANCEL,
            self::EXEC_INST_AUCTION_ONLY,
            self::EXEC_INST_INDICATION_OF_INTEREST,
        ];
    }

    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->container['exchange_id'] = $data['exchange_id'] ?? null;
        $this->container['client_order_id'] = $data['client_order_id'] ?? null;
        $this->container['symbol_id_exchange'] = $data['symbol_id_exchange'] ?? null;
        $this->container['symbol_id_coinapi'] = $data['symbol_id_coinapi'] ?? null;
        $this->container['amount_order'] = $data['amount_order'] ?? null;
        $this->container['price'] = $data['price'] ?? null;
        $this->container['side'] = $data['side'] ?? null;
        $this->container['order_type'] = $data['order_type'] ?? null;
        $this->container['time_in_force'] = $data['time_in_force'] ?? null;
        $this->container['expire_time'] = $data['expire_time'] ?? null;
        $this->container['exec_inst'] = $data['exec_inst'] ?? null;
        $this->container['client_order_id_format_exchange'] = $data['client_order_id_format_exchange'] ?? null;
        $this->container['exchange_order_id'] = $data['exchange_order_id'] ?? null;
        $this->container['amount_open'] = $data['amount_open'] ?? null;
        $this->container['amount_filled'] = $data['amount_filled'] ?? null;
        $this->container['avg_px'] = $data['avg_px'] ?? null;
        $this->container['status'] = $data['status'] ?? null;
        $this->container['status_history'] = $data['status_history'] ?? null;
        $this->container['error_message'] = $data['error_message'] ?? null;
        $this->container['fills'] = $data['fills'] ?? null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        if ($this->container['exchange_id'] === null) {
            $invalidProperties[] = "'exchange_id' can't be null";
        }
        if ($this->container['client_order_id'] === null) {
            $invalidProperties[] = "'client_order_id' can't be null";
        }
        if ($this->container['amount_order'] === null) {
            $invalidProperties[] = "'amount_order' can't be null";
        }
        if ($this->container['price'] === null) {
            $invalidProperties[] = "'price' can't be null";
        }
        if ($this->container['side'] === null) {
            $invalidProperties[] = "'side' can't be null";
        }
        if ($this->container['order_type'] === null) {
            $invalidProperties[] = "'order_type' can't be null";
        }
        if ($this->container['time_in_force'] === null) {
            $invalidProperties[] = "'time_in_force' can't be null";
        }
        if ($this->container['client_order_id_format_exchange'] === null) {
            $invalidProperties[] = "'client_order_id_format_exchange' can't be null";
        }
        if ($this->container['amount_open'] === null) {
            $invalidProperties[] = "'amount_open' can't be null";
        }
        if ($this->container['amount_filled'] === null) {
            $invalidProperties[] = "'amount_filled' can't be null";
        }
        if ($this->container['status'] === null) {
            $invalidProperties[] = "'status' can't be null";
        }
        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets exchange_id
     *
     * @return string
     */
    public function getExchangeId()
    {
        return $this->container['exchange_id'];
    }

    /**
     * Sets exchange_id
     *
     * @param string $exchange_id Exchange identifier used to identify the routing destination.
     *
     * @return self
     */
    public function setExchangeId($exchange_id)
    {
        $this->container['exchange_id'] = $exchange_id;

        return $this;
    }

    /**
     * Gets client_order_id
     *
     * @return string
     */
    public function getClientOrderId()
    {
        return $this->container['client_order_id'];
    }

    /**
     * Sets client_order_id
     *
     * @param string $client_order_id The unique identifier of the order assigned by the client.
     *
     * @return self
     */
    public function setClientOrderId($client_order_id)
    {
        $this->container['client_order_id'] = $client_order_id;

        return $this;
    }

    /**
     * Gets symbol_id_exchange
     *
     * @return string|null
     */
    public function getSymbolIdExchange()
    {
        return $this->container['symbol_id_exchange'];
    }

    /**
     * Sets symbol_id_exchange
     *
     * @param string|null $symbol_id_exchange Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
     *
     * @return self
     */
    public function setSymbolIdExchange($symbol_id_exchange)
    {
        $this->container['symbol_id_exchange'] = $symbol_id_exchange;

        return $this;
    }

    /**
     * Gets symbol_id_coinapi
     *
     * @return string|null
     */
    public function getSymbolIdCoinapi()
    {
        return $this->container['symbol_id_coinapi'];
    }

    /**
     * Sets symbol_id_coinapi
     *
     * @param string|null $symbol_id_coinapi CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
     *
     * @return self
     */
    public function setSymbolIdCoinapi($symbol_id_coinapi)
    {
        $this->container['symbol_id_coinapi'] = $symbol_id_coinapi;

        return $this;
    }

    /**
     * Gets amount_order
     *
     * @return float
     */
    public function getAmountOrder()
    {
        return $this->container['amount_order'];
    }

    /**
     * Sets amount_order
     *
     * @param float $amount_order Order quantity.
     *
     * @return self
     */
    public function setAmountOrder($amount_order)
    {
        $this->container['amount_order'] = $amount_order;

        return $this;
    }

    /**
     * Gets price
     *
     * @return float
     */
    public function getPrice()
    {
        return $this->container['price'];
    }

    /**
     * Sets price
     *
     * @param float $price Order price.
     *
     * @return self
     */
    public function setPrice($price)
    {
        $this->container['price'] = $price;

        return $this;
    }

    /**
     * Gets side
     *
     * @return \OpenAPI\Client\Model\OrdSide
     */
    public function getSide()
    {
        return $this->container['side'];
    }

    /**
     * Sets side
     *
     * @param \OpenAPI\Client\Model\OrdSide $side side
     *
     * @return self
     */
    public function setSide($side)
    {
        $this->container['side'] = $side;

        return $this;
    }

    /**
     * Gets order_type
     *
     * @return \OpenAPI\Client\Model\OrdType
     */
    public function getOrderType()
    {
        return $this->container['order_type'];
    }

    /**
     * Sets order_type
     *
     * @param \OpenAPI\Client\Model\OrdType $order_type order_type
     *
     * @return self
     */
    public function setOrderType($order_type)
    {
        $this->container['order_type'] = $order_type;

        return $this;
    }

    /**
     * Gets time_in_force
     *
     * @return \OpenAPI\Client\Model\TimeInForce
     */
    public function getTimeInForce()
    {
        return $this->container['time_in_force'];
    }

    /**
     * Sets time_in_force
     *
     * @param \OpenAPI\Client\Model\TimeInForce $time_in_force time_in_force
     *
     * @return self
     */
    public function setTimeInForce($time_in_force)
    {
        $this->container['time_in_force'] = $time_in_force;

        return $this;
    }

    /**
     * Gets expire_time
     *
     * @return \DateTime|null
     */
    public function getExpireTime()
    {
        return $this->container['expire_time'];
    }

    /**
     * Sets expire_time
     *
     * @param \DateTime|null $expire_time Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
     *
     * @return self
     */
    public function setExpireTime($expire_time)
    {
        $this->container['expire_time'] = $expire_time;

        return $this;
    }

    /**
     * Gets exec_inst
     *
     * @return string[]|null
     */
    public function getExecInst()
    {
        return $this->container['exec_inst'];
    }

    /**
     * Sets exec_inst
     *
     * @param string[]|null $exec_inst Order execution instructions are documented in the separate section: <a href=\"#ems-order-params-exec\">EMS / Starter Guide / Order parameters / Execution instructions</a>
     *
     * @return self
     */
    public function setExecInst($exec_inst)
    {
        $allowedValues = $this->getExecInstAllowableValues();
        if (!is_null($exec_inst) && array_diff($exec_inst, $allowedValues)) {
            throw new \InvalidArgumentException(
                sprintf(
                    "Invalid value for 'exec_inst', must be one of '%s'",
                    implode("', '", $allowedValues)
                )
            );
        }
        $this->container['exec_inst'] = $exec_inst;

        return $this;
    }

    /**
     * Gets client_order_id_format_exchange
     *
     * @return string
     */
    public function getClientOrderIdFormatExchange()
    {
        return $this->container['client_order_id_format_exchange'];
    }

    /**
     * Sets client_order_id_format_exchange
     *
     * @param string $client_order_id_format_exchange The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
     *
     * @return self
     */
    public function setClientOrderIdFormatExchange($client_order_id_format_exchange)
    {
        $this->container['client_order_id_format_exchange'] = $client_order_id_format_exchange;

        return $this;
    }

    /**
     * Gets exchange_order_id
     *
     * @return string|null
     */
    public function getExchangeOrderId()
    {
        return $this->container['exchange_order_id'];
    }

    /**
     * Sets exchange_order_id
     *
     * @param string|null $exchange_order_id Unique identifier of the order assigned by the exchange or executing system.
     *
     * @return self
     */
    public function setExchangeOrderId($exchange_order_id)
    {
        $this->container['exchange_order_id'] = $exchange_order_id;

        return $this;
    }

    /**
     * Gets amount_open
     *
     * @return float
     */
    public function getAmountOpen()
    {
        return $this->container['amount_open'];
    }

    /**
     * Sets amount_open
     *
     * @param float $amount_open Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
     *
     * @return self
     */
    public function setAmountOpen($amount_open)
    {
        $this->container['amount_open'] = $amount_open;

        return $this;
    }

    /**
     * Gets amount_filled
     *
     * @return float
     */
    public function getAmountFilled()
    {
        return $this->container['amount_filled'];
    }

    /**
     * Sets amount_filled
     *
     * @param float $amount_filled Total quantity filled.
     *
     * @return self
     */
    public function setAmountFilled($amount_filled)
    {
        $this->container['amount_filled'] = $amount_filled;

        return $this;
    }

    /**
     * Gets avg_px
     *
     * @return float|null
     */
    public function getAvgPx()
    {
        return $this->container['avg_px'];
    }

    /**
     * Sets avg_px
     *
     * @param float|null $avg_px Calculated average price of all fills on this order.
     *
     * @return self
     */
    public function setAvgPx($avg_px)
    {
        $this->container['avg_px'] = $avg_px;

        return $this;
    }

    /**
     * Gets status
     *
     * @return \OpenAPI\Client\Model\OrdStatus
     */
    public function getStatus()
    {
        return $this->container['status'];
    }

    /**
     * Sets status
     *
     * @param \OpenAPI\Client\Model\OrdStatus $status status
     *
     * @return self
     */
    public function setStatus($status)
    {
        $this->container['status'] = $status;

        return $this;
    }

    /**
     * Gets status_history
     *
     * @return string[][]|null
     */
    public function getStatusHistory()
    {
        return $this->container['status_history'];
    }

    /**
     * Sets status_history
     *
     * @param string[][]|null $status_history Timestamped history of order status changes.
     *
     * @return self
     */
    public function setStatusHistory($status_history)
    {
        $this->container['status_history'] = $status_history;

        return $this;
    }

    /**
     * Gets error_message
     *
     * @return string|null
     */
    public function getErrorMessage()
    {
        return $this->container['error_message'];
    }

    /**
     * Sets error_message
     *
     * @param string|null $error_message Error message.
     *
     * @return self
     */
    public function setErrorMessage($error_message)
    {
        $this->container['error_message'] = $error_message;

        return $this;
    }

    /**
     * Gets fills
     *
     * @return \OpenAPI\Client\Model\Fills[]|null
     */
    public function getFills()
    {
        return $this->container['fills'];
    }

    /**
     * Sets fills
     *
     * @param \OpenAPI\Client\Model\Fills[]|null $fills Relay fill information on working orders.
     *
     * @return self
     */
    public function setFills($fills)
    {
        $this->container['fills'] = $fills;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset)
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed|null
     */
    public function offsetGet($offset)
    {
        return $this->container[$offset] ?? null;
    }

    /**
     * Sets value based on offset.
     *
     * @param int|null $offset Offset
     * @param mixed    $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value)
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset)
    {
        unset($this->container[$offset]);
    }

    /**
     * Serializes the object to a value that can be serialized natively by json_encode().
     * @link https://www.php.net/manual/en/jsonserializable.jsonserialize.php
     *
     * @return mixed Returns data which can be serialized by json_encode(), which is a value
     * of any type other than a resource.
     */
    public function jsonSerialize()
    {
       return ObjectSerializer::sanitizeForSerialization($this);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        return json_encode(
            ObjectSerializer::sanitizeForSerialization($this),
            JSON_PRETTY_PRINT
        );
    }

    /**
     * Gets a header-safe presentation of the object
     *
     * @return string
     */
    public function toHeaderValue()
    {
        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}


