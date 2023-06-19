/*
 * On Chain Dapps - REST API
 *
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
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
using OpenAPIDateConverter = CoinAPI.EMS.REST.V1.Client.OpenAPIDateConverter;

namespace CoinAPI.EMS.REST.V1.Model
{
    /// <summary>
    /// CurveRemoveLiquidityEventDTO
    /// </summary>
    [DataContract]
    public partial class CurveRemoveLiquidityEventDTO :  IEquatable<CurveRemoveLiquidityEventDTO>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="CurveRemoveLiquidityEventDTO" /> class.
        /// </summary>
        /// <param name="entryTime">entryTime.</param>
        /// <param name="recvTime">recvTime.</param>
        /// <param name="blockNumber">Number of block in which entity was recorded..</param>
        /// <param name="id">id.</param>
        /// <param name="pool">pool.</param>
        /// <param name="provider">provider.</param>
        /// <param name="tokenAmounts">tokenAmounts.</param>
        /// <param name="fees">fees.</param>
        /// <param name="tokenSupply">tokenSupply.</param>
        /// <param name="invariant">invariant.</param>
        /// <param name="block">block.</param>
        /// <param name="timestamp">timestamp.</param>
        /// <param name="transaction">transaction.</param>
        /// <param name="vid">vid.</param>
        public CurveRemoveLiquidityEventDTO(DateTime entryTime = default(DateTime), DateTime recvTime = default(DateTime), long blockNumber = default(long), string id = default(string), string pool = default(string), string provider = default(string), List<string> tokenAmounts = default(List<string>), List<string> fees = default(List<string>), string tokenSupply = default(string), string invariant = default(string), string block = default(string), string timestamp = default(string), string transaction = default(string), long vid = default(long))
        {
            this.Id = id;
            this.Pool = pool;
            this.Provider = provider;
            this.TokenAmounts = tokenAmounts;
            this.Fees = fees;
            this.TokenSupply = tokenSupply;
            this.Invariant = invariant;
            this.Block = block;
            this.Timestamp = timestamp;
            this.Transaction = transaction;
            this.EntryTime = entryTime;
            this.RecvTime = recvTime;
            this.BlockNumber = blockNumber;
            this.Id = id;
            this.Pool = pool;
            this.Provider = provider;
            this.TokenAmounts = tokenAmounts;
            this.Fees = fees;
            this.TokenSupply = tokenSupply;
            this.Invariant = invariant;
            this.Block = block;
            this.Timestamp = timestamp;
            this.Transaction = transaction;
            this.Vid = vid;
        }

        /// <summary>
        /// Gets or Sets EntryTime
        /// </summary>
        [DataMember(Name="entry_time", EmitDefaultValue=false)]
        public DateTime EntryTime { get; set; }

        /// <summary>
        /// Gets or Sets RecvTime
        /// </summary>
        [DataMember(Name="recv_time", EmitDefaultValue=false)]
        public DateTime RecvTime { get; set; }

        /// <summary>
        /// Number of block in which entity was recorded.
        /// </summary>
        /// <value>Number of block in which entity was recorded.</value>
        [DataMember(Name="block_number", EmitDefaultValue=false)]
        public long BlockNumber { get; set; }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name="id", EmitDefaultValue=true)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets Pool
        /// </summary>
        [DataMember(Name="pool", EmitDefaultValue=true)]
        public string Pool { get; set; }

        /// <summary>
        /// Gets or Sets Provider
        /// </summary>
        [DataMember(Name="provider", EmitDefaultValue=true)]
        public string Provider { get; set; }

        /// <summary>
        /// Gets or Sets TokenAmounts
        /// </summary>
        [DataMember(Name="token_amounts", EmitDefaultValue=true)]
        public List<string> TokenAmounts { get; set; }

        /// <summary>
        /// Gets or Sets Fees
        /// </summary>
        [DataMember(Name="fees", EmitDefaultValue=true)]
        public List<string> Fees { get; set; }

        /// <summary>
        /// Gets or Sets TokenSupply
        /// </summary>
        [DataMember(Name="token_supply", EmitDefaultValue=true)]
        public string TokenSupply { get; set; }

        /// <summary>
        /// Gets or Sets Invariant
        /// </summary>
        [DataMember(Name="invariant", EmitDefaultValue=true)]
        public string Invariant { get; set; }

        /// <summary>
        /// Gets or Sets Block
        /// </summary>
        [DataMember(Name="block", EmitDefaultValue=true)]
        public string Block { get; set; }

        /// <summary>
        /// Gets or Sets Timestamp
        /// </summary>
        [DataMember(Name="timestamp", EmitDefaultValue=true)]
        public string Timestamp { get; set; }

        /// <summary>
        /// Gets or Sets Transaction
        /// </summary>
        [DataMember(Name="transaction", EmitDefaultValue=true)]
        public string Transaction { get; set; }

        /// <summary>
        /// Gets or Sets Vid
        /// </summary>
        [DataMember(Name="vid", EmitDefaultValue=false)]
        public long Vid { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class CurveRemoveLiquidityEventDTO {\n");
            sb.Append("  EntryTime: ").Append(EntryTime).Append("\n");
            sb.Append("  RecvTime: ").Append(RecvTime).Append("\n");
            sb.Append("  BlockNumber: ").Append(BlockNumber).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Pool: ").Append(Pool).Append("\n");
            sb.Append("  Provider: ").Append(Provider).Append("\n");
            sb.Append("  TokenAmounts: ").Append(TokenAmounts).Append("\n");
            sb.Append("  Fees: ").Append(Fees).Append("\n");
            sb.Append("  TokenSupply: ").Append(TokenSupply).Append("\n");
            sb.Append("  Invariant: ").Append(Invariant).Append("\n");
            sb.Append("  Block: ").Append(Block).Append("\n");
            sb.Append("  Timestamp: ").Append(Timestamp).Append("\n");
            sb.Append("  Transaction: ").Append(Transaction).Append("\n");
            sb.Append("  Vid: ").Append(Vid).Append("\n");
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
            return this.Equals(input as CurveRemoveLiquidityEventDTO);
        }

        /// <summary>
        /// Returns true if CurveRemoveLiquidityEventDTO instances are equal
        /// </summary>
        /// <param name="input">Instance of CurveRemoveLiquidityEventDTO to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(CurveRemoveLiquidityEventDTO input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.EntryTime == input.EntryTime ||
                    (this.EntryTime != null &&
                    this.EntryTime.Equals(input.EntryTime))
                ) && 
                (
                    this.RecvTime == input.RecvTime ||
                    (this.RecvTime != null &&
                    this.RecvTime.Equals(input.RecvTime))
                ) && 
                (
                    this.BlockNumber == input.BlockNumber ||
                    (this.BlockNumber != null &&
                    this.BlockNumber.Equals(input.BlockNumber))
                ) && 
                (
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && 
                (
                    this.Pool == input.Pool ||
                    (this.Pool != null &&
                    this.Pool.Equals(input.Pool))
                ) && 
                (
                    this.Provider == input.Provider ||
                    (this.Provider != null &&
                    this.Provider.Equals(input.Provider))
                ) && 
                (
                    this.TokenAmounts == input.TokenAmounts ||
                    this.TokenAmounts != null &&
                    input.TokenAmounts != null &&
                    this.TokenAmounts.SequenceEqual(input.TokenAmounts)
                ) && 
                (
                    this.Fees == input.Fees ||
                    this.Fees != null &&
                    input.Fees != null &&
                    this.Fees.SequenceEqual(input.Fees)
                ) && 
                (
                    this.TokenSupply == input.TokenSupply ||
                    (this.TokenSupply != null &&
                    this.TokenSupply.Equals(input.TokenSupply))
                ) && 
                (
                    this.Invariant == input.Invariant ||
                    (this.Invariant != null &&
                    this.Invariant.Equals(input.Invariant))
                ) && 
                (
                    this.Block == input.Block ||
                    (this.Block != null &&
                    this.Block.Equals(input.Block))
                ) && 
                (
                    this.Timestamp == input.Timestamp ||
                    (this.Timestamp != null &&
                    this.Timestamp.Equals(input.Timestamp))
                ) && 
                (
                    this.Transaction == input.Transaction ||
                    (this.Transaction != null &&
                    this.Transaction.Equals(input.Transaction))
                ) && 
                (
                    this.Vid == input.Vid ||
                    (this.Vid != null &&
                    this.Vid.Equals(input.Vid))
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
                if (this.EntryTime != null)
                    hashCode = hashCode * 59 + this.EntryTime.GetHashCode();
                if (this.RecvTime != null)
                    hashCode = hashCode * 59 + this.RecvTime.GetHashCode();
                if (this.BlockNumber != null)
                    hashCode = hashCode * 59 + this.BlockNumber.GetHashCode();
                if (this.Id != null)
                    hashCode = hashCode * 59 + this.Id.GetHashCode();
                if (this.Pool != null)
                    hashCode = hashCode * 59 + this.Pool.GetHashCode();
                if (this.Provider != null)
                    hashCode = hashCode * 59 + this.Provider.GetHashCode();
                if (this.TokenAmounts != null)
                    hashCode = hashCode * 59 + this.TokenAmounts.GetHashCode();
                if (this.Fees != null)
                    hashCode = hashCode * 59 + this.Fees.GetHashCode();
                if (this.TokenSupply != null)
                    hashCode = hashCode * 59 + this.TokenSupply.GetHashCode();
                if (this.Invariant != null)
                    hashCode = hashCode * 59 + this.Invariant.GetHashCode();
                if (this.Block != null)
                    hashCode = hashCode * 59 + this.Block.GetHashCode();
                if (this.Timestamp != null)
                    hashCode = hashCode * 59 + this.Timestamp.GetHashCode();
                if (this.Transaction != null)
                    hashCode = hashCode * 59 + this.Transaction.GetHashCode();
                if (this.Vid != null)
                    hashCode = hashCode * 59 + this.Vid.GetHashCode();
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
