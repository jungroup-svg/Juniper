/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.models


import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param entryTime 
 * @param recvTime 
 * @param blockNumber Number of block in which entity was recorded.
 * @param id Identifier, format: (pair address)-(user address)
 * @param user User address.
 * @param pair Pair address.
 * @param liquidityTokenBalance Amount of LP tokens minted for this position.
 * @param block Block number at which position was created.
 * @param timestamp Creation time.
 * @param vid 
 */


data class SushiswapLiquidityPositionDTO (

    @Json(name = "entry_time")
    val entryTime: java.time.OffsetDateTime? = null,

    @Json(name = "recv_time")
    val recvTime: java.time.OffsetDateTime? = null,

    /* Number of block in which entity was recorded. */
    @Json(name = "block_number")
    val blockNumber: kotlin.Long? = null,

    /* Identifier, format: (pair address)-(user address) */
    @Json(name = "id")
    val id: kotlin.String? = null,

    /* User address. */
    @Json(name = "user")
    val user: kotlin.String? = null,

    /* Pair address. */
    @Json(name = "pair")
    val pair: kotlin.String? = null,

    /* Amount of LP tokens minted for this position. */
    @Json(name = "liquidity_token_balance")
    val liquidityTokenBalance: kotlin.String? = null,

    /* Block number at which position was created. */
    @Json(name = "block")
    val block: kotlin.Int? = null,

    /* Creation time. */
    @Json(name = "timestamp")
    val timestamp: kotlin.Int? = null,

    /*  */
    @Json(name = "vid")
    val vid: kotlin.Long? = null

)

