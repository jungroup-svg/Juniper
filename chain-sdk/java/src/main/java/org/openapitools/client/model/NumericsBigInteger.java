/*
 * On Chain Dapps - REST API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
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
import java.io.IOException;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.openapitools.client.JSON;

/**
 * NumericsBigInteger
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2023-06-19T09:56:11.979115Z[Etc/UTC]")
public class NumericsBigInteger {
  public static final String SERIALIZED_NAME_IS_POWER_OF_TWO = "is_power_of_two";
  @SerializedName(SERIALIZED_NAME_IS_POWER_OF_TWO)
  private Boolean isPowerOfTwo;

  public static final String SERIALIZED_NAME_IS_ZERO = "is_zero";
  @SerializedName(SERIALIZED_NAME_IS_ZERO)
  private Boolean isZero;

  public static final String SERIALIZED_NAME_IS_ONE = "is_one";
  @SerializedName(SERIALIZED_NAME_IS_ONE)
  private Boolean isOne;

  public static final String SERIALIZED_NAME_IS_EVEN = "is_even";
  @SerializedName(SERIALIZED_NAME_IS_EVEN)
  private Boolean isEven;

  public static final String SERIALIZED_NAME_SIGN = "sign";
  @SerializedName(SERIALIZED_NAME_SIGN)
  private Integer sign;

  public NumericsBigInteger() {
  }

  
  public NumericsBigInteger(
     Boolean isPowerOfTwo, 
     Boolean isZero, 
     Boolean isOne, 
     Boolean isEven, 
     Integer sign
  ) {
    this();
    this.isPowerOfTwo = isPowerOfTwo;
    this.isZero = isZero;
    this.isOne = isOne;
    this.isEven = isEven;
    this.sign = sign;
  }

   /**
   * Get isPowerOfTwo
   * @return isPowerOfTwo
  **/
  @javax.annotation.Nullable
  public Boolean getIsPowerOfTwo() {
    return isPowerOfTwo;
  }




   /**
   * Get isZero
   * @return isZero
  **/
  @javax.annotation.Nullable
  public Boolean getIsZero() {
    return isZero;
  }




   /**
   * Get isOne
   * @return isOne
  **/
  @javax.annotation.Nullable
  public Boolean getIsOne() {
    return isOne;
  }




   /**
   * Get isEven
   * @return isEven
  **/
  @javax.annotation.Nullable
  public Boolean getIsEven() {
    return isEven;
  }




   /**
   * Get sign
   * @return sign
  **/
  @javax.annotation.Nullable
  public Integer getSign() {
    return sign;
  }





  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NumericsBigInteger numericsBigInteger = (NumericsBigInteger) o;
    return Objects.equals(this.isPowerOfTwo, numericsBigInteger.isPowerOfTwo) &&
        Objects.equals(this.isZero, numericsBigInteger.isZero) &&
        Objects.equals(this.isOne, numericsBigInteger.isOne) &&
        Objects.equals(this.isEven, numericsBigInteger.isEven) &&
        Objects.equals(this.sign, numericsBigInteger.sign);
  }

  @Override
  public int hashCode() {
    return Objects.hash(isPowerOfTwo, isZero, isOne, isEven, sign);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class NumericsBigInteger {\n");
    sb.append("    isPowerOfTwo: ").append(toIndentedString(isPowerOfTwo)).append("\n");
    sb.append("    isZero: ").append(toIndentedString(isZero)).append("\n");
    sb.append("    isOne: ").append(toIndentedString(isOne)).append("\n");
    sb.append("    isEven: ").append(toIndentedString(isEven)).append("\n");
    sb.append("    sign: ").append(toIndentedString(sign)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("is_power_of_two");
    openapiFields.add("is_zero");
    openapiFields.add("is_one");
    openapiFields.add("is_even");
    openapiFields.add("sign");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to NumericsBigInteger
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!NumericsBigInteger.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in NumericsBigInteger is not found in the empty JSON string", NumericsBigInteger.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!NumericsBigInteger.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `NumericsBigInteger` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!NumericsBigInteger.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'NumericsBigInteger' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<NumericsBigInteger> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(NumericsBigInteger.class));

       return (TypeAdapter<T>) new TypeAdapter<NumericsBigInteger>() {
           @Override
           public void write(JsonWriter out, NumericsBigInteger value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public NumericsBigInteger read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of NumericsBigInteger given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of NumericsBigInteger
  * @throws IOException if the JSON string is invalid with respect to NumericsBigInteger
  */
  public static NumericsBigInteger fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, NumericsBigInteger.class);
  }

 /**
  * Convert an instance of NumericsBigInteger to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

