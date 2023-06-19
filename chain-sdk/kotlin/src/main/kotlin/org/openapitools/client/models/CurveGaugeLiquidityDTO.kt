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
 * @param id 
 * @param user 
 * @param gauge 
 * @param originalBalance 
 * @param originalSupply 
 * @param workingBalance 
 * @param workingSupply 
 * @param timestamp 
 * @param block 
 * @param transaction 
 * @param vid 
 */


data class CurveGaugeLiquidityDTO (

    @Json(name = "entry_time")
    val entryTime: java.time.OffsetDateTime? = null,

    @Json(name = "recv_time")
    val recvTime: java.time.OffsetDateTime? = null,

    /* Number of block in which entity was recorded. */
    @Json(name = "block_number")
    val blockNumber: kotlin.Long? = null,

    /*  */
    @Json(name = "id")
    val id: kotlin.String? = null,

    /*  */
    @Json(name = "user")
    val user: kotlin.String? = null,

    /*  */
    @Json(name = "gauge")
    val gauge: kotlin.String? = null,

    /*  */
    @Json(name = "original_balance")
    val originalBalance: kotlin.String? = null,

    /*  */
    @Json(name = "original_supply")
    val originalSupply: kotlin.String? = null,

    /*  */
    @Json(name = "working_balance")
    val workingBalance: kotlin.String? = null,

    /*  */
    @Json(name = "working_supply")
    val workingSupply: kotlin.String? = null,

    /*  */
    @Json(name = "timestamp")
    val timestamp: kotlin.String? = null,

    /*  */
    @Json(name = "block")
    val block: kotlin.String? = null,

    /*  */
    @Json(name = "transaction")
    val transaction: kotlin.String? = null,

    /*  */
    @Json(name = "vid")
    val vid: kotlin.Long? = null

)

