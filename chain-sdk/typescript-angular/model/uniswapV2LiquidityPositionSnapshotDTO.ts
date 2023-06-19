/**
 * On Chain Dapps - REST API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


/**
 * This entity is used to store data about a user\'s liquidity position over time. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more. It gets created and never updated.
 */
export interface UniswapV2LiquidityPositionSnapshotDTO { 
    entry_time?: string;
    recv_time?: string;
    /**
     * Number of block in which entity was recorded.
     */
    block_number?: number;
    /**
     * Identifier, format: (pair address)-(user address)
     */
    id?: string | null;
    /**
     * Reference to LP identifier.
     */
    liquidity_position?: string | null;
    /**
     * Creation time.
     */
    timestamp?: number;
    /**
     * Number of block in which LP snapshot was recorded.
     */
    block?: number;
    /**
     * Reference to user.
     */
    user?: string | null;
    /**
     * Reference to the pair liquidity is being provided on.
     */
    pair?: string | null;
    /**
     * Snapshot of token0 price.
     */
    token_0_price_usd?: string | null;
    /**
     * Snapshot of token0 price.
     */
    token_1_price_usd?: string | null;
    /**
     * Snapshot of pair token0 reserves.
     */
    reserve_0?: string | null;
    /**
     * Snapshot of pair token1 reserves.
     */
    reserve_1?: string | null;
    /**
     * Snapshot of pair reserves in USD.
     */
    reserve_usd?: string | null;
    /**
     * Snapshot of pool token supply.
     */
    liquidity_token_total_supply?: string | null;
    /**
     * Snapshot of users pool token balance.
     */
    liquidity_token_balance?: string | null;
    /**
     * 
     */
    vid?: number;
    /**
     * 
     */
    block_range?: string | null;
}

