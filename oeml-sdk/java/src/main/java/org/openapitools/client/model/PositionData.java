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
import org.openapitools.client.model.OrdSide;

/**
 * The Position object.
 */
@ApiModel(description = "The Position object.")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-08-11T11:46:53.652Z[Etc/UTC]")
public class PositionData {
  public static final String SERIALIZED_NAME_SYMBOL_ID_EXCHANGE = "symbol_id_exchange";
  @SerializedName(SERIALIZED_NAME_SYMBOL_ID_EXCHANGE)
  private String symbolIdExchange;

  public static final String SERIALIZED_NAME_SYMBOL_ID_COINAPI = "symbol_id_coinapi";
  @SerializedName(SERIALIZED_NAME_SYMBOL_ID_COINAPI)
  private String symbolIdCoinapi;

  public static final String SERIALIZED_NAME_AVG_ENTRY_PRICE = "avg_entry_price";
  @SerializedName(SERIALIZED_NAME_AVG_ENTRY_PRICE)
  private BigDecimal avgEntryPrice;

  public static final String SERIALIZED_NAME_QUANTITY = "quantity";
  @SerializedName(SERIALIZED_NAME_QUANTITY)
  private BigDecimal quantity;

  public static final String SERIALIZED_NAME_SIDE = "side";
  @SerializedName(SERIALIZED_NAME_SIDE)
  private OrdSide side;

  public static final String SERIALIZED_NAME_UNREALIZED_PNL = "unrealized_pnl";
  @SerializedName(SERIALIZED_NAME_UNREALIZED_PNL)
  private BigDecimal unrealizedPnl;

  public static final String SERIALIZED_NAME_LEVERAGE = "leverage";
  @SerializedName(SERIALIZED_NAME_LEVERAGE)
  private BigDecimal leverage;

  public static final String SERIALIZED_NAME_CROSS_MARGIN = "cross_margin";
  @SerializedName(SERIALIZED_NAME_CROSS_MARGIN)
  private Boolean crossMargin;

  public static final String SERIALIZED_NAME_LIQUIDATION_PRICE = "liquidation_price";
  @SerializedName(SERIALIZED_NAME_LIQUIDATION_PRICE)
  private BigDecimal liquidationPrice;

  public static final String SERIALIZED_NAME_RAW_DATA = "raw_data";
  @SerializedName(SERIALIZED_NAME_RAW_DATA)
  private Object rawData;


  public PositionData symbolIdExchange(String symbolIdExchange) {
    
    this.symbolIdExchange = symbolIdExchange;
    return this;
  }

   /**
   * Exchange symbol.
   * @return symbolIdExchange
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "XBTUSD", value = "Exchange symbol.")

  public String getSymbolIdExchange() {
    return symbolIdExchange;
  }


  public void setSymbolIdExchange(String symbolIdExchange) {
    this.symbolIdExchange = symbolIdExchange;
  }


  public PositionData symbolIdCoinapi(String symbolIdCoinapi) {
    
    this.symbolIdCoinapi = symbolIdCoinapi;
    return this;
  }

   /**
   * CoinAPI symbol.
   * @return symbolIdCoinapi
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "BITMEX_PERP_BTC_USD", value = "CoinAPI symbol.")

  public String getSymbolIdCoinapi() {
    return symbolIdCoinapi;
  }


  public void setSymbolIdCoinapi(String symbolIdCoinapi) {
    this.symbolIdCoinapi = symbolIdCoinapi;
  }


  public PositionData avgEntryPrice(BigDecimal avgEntryPrice) {
    
    this.avgEntryPrice = avgEntryPrice;
    return this;
  }

   /**
   * Calculated average price of all fills on this position.
   * @return avgEntryPrice
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.00134444", value = "Calculated average price of all fills on this position.")

  public BigDecimal getAvgEntryPrice() {
    return avgEntryPrice;
  }


  public void setAvgEntryPrice(BigDecimal avgEntryPrice) {
    this.avgEntryPrice = avgEntryPrice;
  }


  public PositionData quantity(BigDecimal quantity) {
    
    this.quantity = quantity;
    return this;
  }

   /**
   * The current position quantity.
   * @return quantity
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "7", value = "The current position quantity.")

  public BigDecimal getQuantity() {
    return quantity;
  }


  public void setQuantity(BigDecimal quantity) {
    this.quantity = quantity;
  }


  public PositionData side(OrdSide side) {
    
    this.side = side;
    return this;
  }

   /**
   * Get side
   * @return side
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public OrdSide getSide() {
    return side;
  }


  public void setSide(OrdSide side) {
    this.side = side;
  }


  public PositionData unrealizedPnl(BigDecimal unrealizedPnl) {
    
    this.unrealizedPnl = unrealizedPnl;
    return this;
  }

   /**
   * Unrealised profit or loss (PNL) of this position.
   * @return unrealizedPnl
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.0", value = "Unrealised profit or loss (PNL) of this position.")

  public BigDecimal getUnrealizedPnl() {
    return unrealizedPnl;
  }


  public void setUnrealizedPnl(BigDecimal unrealizedPnl) {
    this.unrealizedPnl = unrealizedPnl;
  }


  public PositionData leverage(BigDecimal leverage) {
    
    this.leverage = leverage;
    return this;
  }

   /**
   * Leverage for this position reported by the exchange.
   * @return leverage
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.0", value = "Leverage for this position reported by the exchange.")

  public BigDecimal getLeverage() {
    return leverage;
  }


  public void setLeverage(BigDecimal leverage) {
    this.leverage = leverage;
  }


  public PositionData crossMargin(Boolean crossMargin) {
    
    this.crossMargin = crossMargin;
    return this;
  }

   /**
   * Is cross margin mode enable for this position?
   * @return crossMargin
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "true", value = "Is cross margin mode enable for this position?")

  public Boolean getCrossMargin() {
    return crossMargin;
  }


  public void setCrossMargin(Boolean crossMargin) {
    this.crossMargin = crossMargin;
  }


  public PositionData liquidationPrice(BigDecimal liquidationPrice) {
    
    this.liquidationPrice = liquidationPrice;
    return this;
  }

   /**
   * Liquidation price. If mark price will reach this value, the position will be liquidated.
   * @return liquidationPrice
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.072323", value = "Liquidation price. If mark price will reach this value, the position will be liquidated.")

  public BigDecimal getLiquidationPrice() {
    return liquidationPrice;
  }


  public void setLiquidationPrice(BigDecimal liquidationPrice) {
    this.liquidationPrice = liquidationPrice;
  }


  public PositionData rawData(Object rawData) {
    
    this.rawData = rawData;
    return this;
  }

   /**
   * Get rawData
   * @return rawData
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "Other information provided by the exchange on this position.", value = "")

  public Object getRawData() {
    return rawData;
  }


  public void setRawData(Object rawData) {
    this.rawData = rawData;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PositionData positionData = (PositionData) o;
    return Objects.equals(this.symbolIdExchange, positionData.symbolIdExchange) &&
        Objects.equals(this.symbolIdCoinapi, positionData.symbolIdCoinapi) &&
        Objects.equals(this.avgEntryPrice, positionData.avgEntryPrice) &&
        Objects.equals(this.quantity, positionData.quantity) &&
        Objects.equals(this.side, positionData.side) &&
        Objects.equals(this.unrealizedPnl, positionData.unrealizedPnl) &&
        Objects.equals(this.leverage, positionData.leverage) &&
        Objects.equals(this.crossMargin, positionData.crossMargin) &&
        Objects.equals(this.liquidationPrice, positionData.liquidationPrice) &&
        Objects.equals(this.rawData, positionData.rawData);
  }

  @Override
  public int hashCode() {
    return Objects.hash(symbolIdExchange, symbolIdCoinapi, avgEntryPrice, quantity, side, unrealizedPnl, leverage, crossMargin, liquidationPrice, rawData);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PositionData {\n");
    sb.append("    symbolIdExchange: ").append(toIndentedString(symbolIdExchange)).append("\n");
    sb.append("    symbolIdCoinapi: ").append(toIndentedString(symbolIdCoinapi)).append("\n");
    sb.append("    avgEntryPrice: ").append(toIndentedString(avgEntryPrice)).append("\n");
    sb.append("    quantity: ").append(toIndentedString(quantity)).append("\n");
    sb.append("    side: ").append(toIndentedString(side)).append("\n");
    sb.append("    unrealizedPnl: ").append(toIndentedString(unrealizedPnl)).append("\n");
    sb.append("    leverage: ").append(toIndentedString(leverage)).append("\n");
    sb.append("    crossMargin: ").append(toIndentedString(crossMargin)).append("\n");
    sb.append("    liquidationPrice: ").append(toIndentedString(liquidationPrice)).append("\n");
    sb.append("    rawData: ").append(toIndentedString(rawData)).append("\n");
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

