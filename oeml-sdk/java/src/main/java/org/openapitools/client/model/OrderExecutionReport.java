/*
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


package org.openapitools.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.client.model.OrdSide;
import org.openapitools.client.model.OrdStatus;
import org.openapitools.client.model.OrdType;
import org.openapitools.client.model.OrderExecutionReportAllOf;
import org.openapitools.client.model.OrderNewSingleRequest;
import org.openapitools.client.model.TimeInForce;
import org.threeten.bp.LocalDate;

/**
 * The order execution report object.
 */
@ApiModel(description = "The order execution report object.")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-09-16T13:37:28.057Z[Etc/UTC]")
public class OrderExecutionReport {
  public static final String SERIALIZED_NAME_EXCHANGE_ID = "exchange_id";
  @SerializedName(SERIALIZED_NAME_EXCHANGE_ID)
  private String exchangeId;

  public static final String SERIALIZED_NAME_CLIENT_ORDER_ID = "client_order_id";
  @SerializedName(SERIALIZED_NAME_CLIENT_ORDER_ID)
  private String clientOrderId;

  public static final String SERIALIZED_NAME_SYMBOL_ID_EXCHANGE = "symbol_id_exchange";
  @SerializedName(SERIALIZED_NAME_SYMBOL_ID_EXCHANGE)
  private String symbolIdExchange;

  public static final String SERIALIZED_NAME_SYMBOL_ID_COINAPI = "symbol_id_coinapi";
  @SerializedName(SERIALIZED_NAME_SYMBOL_ID_COINAPI)
  private String symbolIdCoinapi;

  public static final String SERIALIZED_NAME_AMOUNT_ORDER = "amount_order";
  @SerializedName(SERIALIZED_NAME_AMOUNT_ORDER)
  private BigDecimal amountOrder;

  public static final String SERIALIZED_NAME_PRICE = "price";
  @SerializedName(SERIALIZED_NAME_PRICE)
  private BigDecimal price;

  public static final String SERIALIZED_NAME_SIDE = "side";
  @SerializedName(SERIALIZED_NAME_SIDE)
  private OrdSide side;

  public static final String SERIALIZED_NAME_ORDER_TYPE = "order_type";
  @SerializedName(SERIALIZED_NAME_ORDER_TYPE)
  private OrdType orderType;

  public static final String SERIALIZED_NAME_TIME_IN_FORCE = "time_in_force";
  @SerializedName(SERIALIZED_NAME_TIME_IN_FORCE)
  private TimeInForce timeInForce;

  public static final String SERIALIZED_NAME_EXPIRE_TIME = "expire_time";
  @SerializedName(SERIALIZED_NAME_EXPIRE_TIME)
  private LocalDate expireTime = null;

  /**
   * Gets or Sets execInst
   */
  @JsonAdapter(ExecInstEnum.Adapter.class)
  public enum ExecInstEnum {
    MAKER_OR_CANCEL("MAKER_OR_CANCEL"),
    
    AUCTION_ONLY("AUCTION_ONLY"),
    
    INDICATION_OF_INTEREST("INDICATION_OF_INTEREST");

    private String value;

    ExecInstEnum(String value) {
      this.value = value;
    }

    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    public static ExecInstEnum fromValue(String value) {
      for (ExecInstEnum b : ExecInstEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }

    public static class Adapter extends TypeAdapter<ExecInstEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final ExecInstEnum enumeration) throws IOException {
        jsonWriter.value(enumeration.getValue());
      }

      @Override
      public ExecInstEnum read(final JsonReader jsonReader) throws IOException {
        String value =  jsonReader.nextString();
        return ExecInstEnum.fromValue(value);
      }
    }
  }

  public static final String SERIALIZED_NAME_EXEC_INST = "exec_inst";
  @SerializedName(SERIALIZED_NAME_EXEC_INST)
  private List<ExecInstEnum> execInst = null;

  public static final String SERIALIZED_NAME_CLIENT_ORDER_ID_FORMAT_EXCHANGE = "client_order_id_format_exchange";
  @SerializedName(SERIALIZED_NAME_CLIENT_ORDER_ID_FORMAT_EXCHANGE)
  private String clientOrderIdFormatExchange;

  public static final String SERIALIZED_NAME_EXCHANGE_ORDER_ID = "exchange_order_id";
  @SerializedName(SERIALIZED_NAME_EXCHANGE_ORDER_ID)
  private String exchangeOrderId;

  public static final String SERIALIZED_NAME_AMOUNT_OPEN = "amount_open";
  @SerializedName(SERIALIZED_NAME_AMOUNT_OPEN)
  private BigDecimal amountOpen;

  public static final String SERIALIZED_NAME_AMOUNT_FILLED = "amount_filled";
  @SerializedName(SERIALIZED_NAME_AMOUNT_FILLED)
  private BigDecimal amountFilled;

  public static final String SERIALIZED_NAME_STATUS = "status";
  @SerializedName(SERIALIZED_NAME_STATUS)
  private OrdStatus status;

  public static final String SERIALIZED_NAME_TIME_ORDER = "time_order";
  @SerializedName(SERIALIZED_NAME_TIME_ORDER)
  private List<List<String>> timeOrder = new ArrayList<List<String>>();

  public static final String SERIALIZED_NAME_ERROR_MESSAGE = "error_message";
  @SerializedName(SERIALIZED_NAME_ERROR_MESSAGE)
  private String errorMessage;


  public OrderExecutionReport exchangeId(String exchangeId) {
    
    this.exchangeId = exchangeId;
    return this;
  }

   /**
   * Exchange identifier used to identify the routing destination.
   * @return exchangeId
  **/
  @ApiModelProperty(example = "KRAKEN", required = true, value = "Exchange identifier used to identify the routing destination.")

  public String getExchangeId() {
    return exchangeId;
  }


  public void setExchangeId(String exchangeId) {
    this.exchangeId = exchangeId;
  }


  public OrderExecutionReport clientOrderId(String clientOrderId) {
    
    this.clientOrderId = clientOrderId;
    return this;
  }

   /**
   * The unique identifier of the order assigned by the client.
   * @return clientOrderId
  **/
  @ApiModelProperty(example = "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b", required = true, value = "The unique identifier of the order assigned by the client.")

  public String getClientOrderId() {
    return clientOrderId;
  }


  public void setClientOrderId(String clientOrderId) {
    this.clientOrderId = clientOrderId;
  }


  public OrderExecutionReport symbolIdExchange(String symbolIdExchange) {
    
    this.symbolIdExchange = symbolIdExchange;
    return this;
  }

   /**
   * Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order.
   * @return symbolIdExchange
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "XBT/USDT", value = "Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.")

  public String getSymbolIdExchange() {
    return symbolIdExchange;
  }


  public void setSymbolIdExchange(String symbolIdExchange) {
    this.symbolIdExchange = symbolIdExchange;
  }


  public OrderExecutionReport symbolIdCoinapi(String symbolIdCoinapi) {
    
    this.symbolIdCoinapi = symbolIdCoinapi;
    return this;
  }

   /**
   * CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order.
   * @return symbolIdCoinapi
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "KRAKEN_SPOT_BTC_USDT", value = "CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.")

  public String getSymbolIdCoinapi() {
    return symbolIdCoinapi;
  }


  public void setSymbolIdCoinapi(String symbolIdCoinapi) {
    this.symbolIdCoinapi = symbolIdCoinapi;
  }


  public OrderExecutionReport amountOrder(BigDecimal amountOrder) {
    
    this.amountOrder = amountOrder;
    return this;
  }

   /**
   * Order quantity.
   * @return amountOrder
  **/
  @ApiModelProperty(example = "0.045", required = true, value = "Order quantity.")

  public BigDecimal getAmountOrder() {
    return amountOrder;
  }


  public void setAmountOrder(BigDecimal amountOrder) {
    this.amountOrder = amountOrder;
  }


  public OrderExecutionReport price(BigDecimal price) {
    
    this.price = price;
    return this;
  }

   /**
   * Order price.
   * @return price
  **/
  @ApiModelProperty(example = "0.0783", required = true, value = "Order price.")

  public BigDecimal getPrice() {
    return price;
  }


  public void setPrice(BigDecimal price) {
    this.price = price;
  }


  public OrderExecutionReport side(OrdSide side) {
    
    this.side = side;
    return this;
  }

   /**
   * Get side
   * @return side
  **/
  @ApiModelProperty(required = true, value = "")

  public OrdSide getSide() {
    return side;
  }


  public void setSide(OrdSide side) {
    this.side = side;
  }


  public OrderExecutionReport orderType(OrdType orderType) {
    
    this.orderType = orderType;
    return this;
  }

   /**
   * Get orderType
   * @return orderType
  **/
  @ApiModelProperty(required = true, value = "")

  public OrdType getOrderType() {
    return orderType;
  }


  public void setOrderType(OrdType orderType) {
    this.orderType = orderType;
  }


  public OrderExecutionReport timeInForce(TimeInForce timeInForce) {
    
    this.timeInForce = timeInForce;
    return this;
  }

   /**
   * Get timeInForce
   * @return timeInForce
  **/
  @ApiModelProperty(required = true, value = "")

  public TimeInForce getTimeInForce() {
    return timeInForce;
  }


  public void setTimeInForce(TimeInForce timeInForce) {
    this.timeInForce = timeInForce;
  }


  public OrderExecutionReport expireTime(LocalDate expireTime) {
    
    this.expireTime = expireTime;
    return this;
  }

   /**
   * Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;.
   * @return expireTime
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "2020-01-01T10:45:20.1677709Z", value = "Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.")

  public LocalDate getExpireTime() {
    return expireTime;
  }


  public void setExpireTime(LocalDate expireTime) {
    this.expireTime = expireTime;
  }


  public OrderExecutionReport execInst(List<ExecInstEnum> execInst) {
    
    this.execInst = execInst;
    return this;
  }

  public OrderExecutionReport addExecInstItem(ExecInstEnum execInstItem) {
    if (this.execInst == null) {
      this.execInst = new ArrayList<ExecInstEnum>();
    }
    this.execInst.add(execInstItem);
    return this;
  }

   /**
   * Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt; 
   * @return execInst
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "[\"MAKER_OR_CANCEL\"]", value = "Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> ")

  public List<ExecInstEnum> getExecInst() {
    return execInst;
  }


  public void setExecInst(List<ExecInstEnum> execInst) {
    this.execInst = execInst;
  }


  public OrderExecutionReport clientOrderIdFormatExchange(String clientOrderIdFormatExchange) {
    
    this.clientOrderIdFormatExchange = clientOrderIdFormatExchange;
    return this;
  }

   /**
   * The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
   * @return clientOrderIdFormatExchange
  **/
  @ApiModelProperty(example = "f81211e2-27c4-b86a-8143-01088ba9222c", required = true, value = "The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.")

  public String getClientOrderIdFormatExchange() {
    return clientOrderIdFormatExchange;
  }


  public void setClientOrderIdFormatExchange(String clientOrderIdFormatExchange) {
    this.clientOrderIdFormatExchange = clientOrderIdFormatExchange;
  }


  public OrderExecutionReport exchangeOrderId(String exchangeOrderId) {
    
    this.exchangeOrderId = exchangeOrderId;
    return this;
  }

   /**
   * Unique identifier of the order assigned by the exchange or executing system.
   * @return exchangeOrderId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "3456456754", value = "Unique identifier of the order assigned by the exchange or executing system.")

  public String getExchangeOrderId() {
    return exchangeOrderId;
  }


  public void setExchangeOrderId(String exchangeOrderId) {
    this.exchangeOrderId = exchangeOrderId;
  }


  public OrderExecutionReport amountOpen(BigDecimal amountOpen) {
    
    this.amountOpen = amountOpen;
    return this;
  }

   /**
   * Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60;
   * @return amountOpen
  **/
  @ApiModelProperty(example = "0.22", required = true, value = "Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`")

  public BigDecimal getAmountOpen() {
    return amountOpen;
  }


  public void setAmountOpen(BigDecimal amountOpen) {
    this.amountOpen = amountOpen;
  }


  public OrderExecutionReport amountFilled(BigDecimal amountFilled) {
    
    this.amountFilled = amountFilled;
    return this;
  }

   /**
   * Total quantity filled.
   * @return amountFilled
  **/
  @ApiModelProperty(example = "0.0", required = true, value = "Total quantity filled.")

  public BigDecimal getAmountFilled() {
    return amountFilled;
  }


  public void setAmountFilled(BigDecimal amountFilled) {
    this.amountFilled = amountFilled;
  }


  public OrderExecutionReport status(OrdStatus status) {
    
    this.status = status;
    return this;
  }

   /**
   * Get status
   * @return status
  **/
  @ApiModelProperty(required = true, value = "")

  public OrdStatus getStatus() {
    return status;
  }


  public void setStatus(OrdStatus status) {
    this.status = status;
  }


  public OrderExecutionReport timeOrder(List<List<String>> timeOrder) {
    
    this.timeOrder = timeOrder;
    return this;
  }

  public OrderExecutionReport addTimeOrderItem(List<String> timeOrderItem) {
    this.timeOrder.add(timeOrderItem);
    return this;
  }

   /**
   * Timestamped history of order status changes.
   * @return timeOrder
  **/
  @ApiModelProperty(required = true, value = "Timestamped history of order status changes.")

  public List<List<String>> getTimeOrder() {
    return timeOrder;
  }


  public void setTimeOrder(List<List<String>> timeOrder) {
    this.timeOrder = timeOrder;
  }


  public OrderExecutionReport errorMessage(String errorMessage) {
    
    this.errorMessage = errorMessage;
    return this;
  }

   /**
   * Error message
   * @return errorMessage
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "{\"result\":\"error\",\"reason\":\"InsufficientFunds\",\"message\":\"Failed to place buy order on symbol 'BTCUSD' for price $7,000.00 and quantity 0.22 BTC due to insufficient funds\"}", value = "Error message")

  public String getErrorMessage() {
    return errorMessage;
  }


  public void setErrorMessage(String errorMessage) {
    this.errorMessage = errorMessage;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    OrderExecutionReport orderExecutionReport = (OrderExecutionReport) o;
    return Objects.equals(this.exchangeId, orderExecutionReport.exchangeId) &&
        Objects.equals(this.clientOrderId, orderExecutionReport.clientOrderId) &&
        Objects.equals(this.symbolIdExchange, orderExecutionReport.symbolIdExchange) &&
        Objects.equals(this.symbolIdCoinapi, orderExecutionReport.symbolIdCoinapi) &&
        Objects.equals(this.amountOrder, orderExecutionReport.amountOrder) &&
        Objects.equals(this.price, orderExecutionReport.price) &&
        Objects.equals(this.side, orderExecutionReport.side) &&
        Objects.equals(this.orderType, orderExecutionReport.orderType) &&
        Objects.equals(this.timeInForce, orderExecutionReport.timeInForce) &&
        Objects.equals(this.expireTime, orderExecutionReport.expireTime) &&
        Objects.equals(this.execInst, orderExecutionReport.execInst) &&
        Objects.equals(this.clientOrderIdFormatExchange, orderExecutionReport.clientOrderIdFormatExchange) &&
        Objects.equals(this.exchangeOrderId, orderExecutionReport.exchangeOrderId) &&
        Objects.equals(this.amountOpen, orderExecutionReport.amountOpen) &&
        Objects.equals(this.amountFilled, orderExecutionReport.amountFilled) &&
        Objects.equals(this.status, orderExecutionReport.status) &&
        Objects.equals(this.timeOrder, orderExecutionReport.timeOrder) &&
        Objects.equals(this.errorMessage, orderExecutionReport.errorMessage);
  }

  @Override
  public int hashCode() {
    return Objects.hash(exchangeId, clientOrderId, symbolIdExchange, symbolIdCoinapi, amountOrder, price, side, orderType, timeInForce, expireTime, execInst, clientOrderIdFormatExchange, exchangeOrderId, amountOpen, amountFilled, status, timeOrder, errorMessage);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class OrderExecutionReport {\n");
    sb.append("    exchangeId: ").append(toIndentedString(exchangeId)).append("\n");
    sb.append("    clientOrderId: ").append(toIndentedString(clientOrderId)).append("\n");
    sb.append("    symbolIdExchange: ").append(toIndentedString(symbolIdExchange)).append("\n");
    sb.append("    symbolIdCoinapi: ").append(toIndentedString(symbolIdCoinapi)).append("\n");
    sb.append("    amountOrder: ").append(toIndentedString(amountOrder)).append("\n");
    sb.append("    price: ").append(toIndentedString(price)).append("\n");
    sb.append("    side: ").append(toIndentedString(side)).append("\n");
    sb.append("    orderType: ").append(toIndentedString(orderType)).append("\n");
    sb.append("    timeInForce: ").append(toIndentedString(timeInForce)).append("\n");
    sb.append("    expireTime: ").append(toIndentedString(expireTime)).append("\n");
    sb.append("    execInst: ").append(toIndentedString(execInst)).append("\n");
    sb.append("    clientOrderIdFormatExchange: ").append(toIndentedString(clientOrderIdFormatExchange)).append("\n");
    sb.append("    exchangeOrderId: ").append(toIndentedString(exchangeOrderId)).append("\n");
    sb.append("    amountOpen: ").append(toIndentedString(amountOpen)).append("\n");
    sb.append("    amountFilled: ").append(toIndentedString(amountFilled)).append("\n");
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
    sb.append("    timeOrder: ").append(toIndentedString(timeOrder)).append("\n");
    sb.append("    errorMessage: ").append(toIndentedString(errorMessage)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

