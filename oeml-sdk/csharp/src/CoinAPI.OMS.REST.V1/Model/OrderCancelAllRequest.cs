/*
 * EMS - REST API
 *
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = CoinAPI.OMS.REST.V1.Client.OpenAPIDateConverter;

namespace CoinAPI.OMS.REST.V1.Model
{
    /// <summary>
    /// Cancel all orders request object.
    /// </summary>
    [DataContract]
    public partial class OrderCancelAllRequest :  IEquatable<OrderCancelAllRequest>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="OrderCancelAllRequest" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected OrderCancelAllRequest() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="OrderCancelAllRequest" /> class.
        /// </summary>
        /// <param name="exchangeId">Identifier of the exchange from which active orders should be canceled. (required).</param>
        public OrderCancelAllRequest(string exchangeId = default(string))
        {
            // to ensure "exchangeId" is required (not null)
            if (exchangeId == null)
            {
                throw new InvalidDataException("exchangeId is a required property for OrderCancelAllRequest and cannot be null");
            }
            else
            {
                this.ExchangeId = exchangeId;
            }

        }

        /// <summary>
        /// Identifier of the exchange from which active orders should be canceled.
        /// </summary>
        /// <value>Identifier of the exchange from which active orders should be canceled.</value>
        [DataMember(Name="exchange_id", EmitDefaultValue=true)]
        public string ExchangeId { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class OrderCancelAllRequest {\n");
            sb.Append("  ExchangeId: ").Append(ExchangeId).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as OrderCancelAllRequest);
        }

        /// <summary>
        /// Returns true if OrderCancelAllRequest instances are equal
        /// </summary>
        /// <param name="input">Instance of OrderCancelAllRequest to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(OrderCancelAllRequest input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.ExchangeId == input.ExchangeId ||
                    (this.ExchangeId != null &&
                    this.ExchangeId.Equals(input.ExchangeId))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.ExchangeId != null)
                    hashCode = hashCode * 59 + this.ExchangeId.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
