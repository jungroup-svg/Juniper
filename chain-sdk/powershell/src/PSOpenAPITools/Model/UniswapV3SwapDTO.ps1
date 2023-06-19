#
# On Chain Dapps - REST API
#  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
# Version: v1
# Contact: support@coinapi.io
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Swap are created for each token swap within a pair.

.PARAMETER EntryTime
No description available.
.PARAMETER RecvTime
No description available.
.PARAMETER BlockNumber
Number of block in which entity was recorded.
.PARAMETER Vid

.PARAMETER Id
Identifier, format: (transaction hash) + # + (index in swaps Transaction array).
.PARAMETER Transaction
Pointer to transaction.
.PARAMETER Timestamp
Timestamp of transaction.
.PARAMETER Pool
Pool swap occured within.
.PARAMETER Token0
Reference to token0 as stored in pair contract.
.PARAMETER Token1
Reference to token1 as stored in pair contract.
.PARAMETER VarSender
Sender of the swap.
.PARAMETER Recipient
Recipient of the swap.
.PARAMETER Origin
Transaction origin: the EOA (Externally Owned Account) that initiated the transaction
.PARAMETER Amount0
Delta of token0 swapped.
.PARAMETER Amount1
Delta of token1 swapped.
.PARAMETER AmountUsd
Derived amount of tokens sold in USD.
.PARAMETER SqrtPriceX96
No description available.
.PARAMETER Tick
No description available.
.PARAMETER LogIndex
No description available.
.PARAMETER EvaluatedPrice
No description available.
.PARAMETER EvaluatedAmount
No description available.
.PARAMETER EvaluatedAggressor
No description available.
.PARAMETER PoolId
No description available.
.PARAMETER TransactionId
No description available.
.OUTPUTS

UniswapV3SwapDTO<PSCustomObject>
#>

function Initialize-UniswapV3SwapDTO {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${EntryTime},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${RecvTime},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${BlockNumber},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Vid},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Transaction},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Timestamp},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Pool},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Token0},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Token1},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarSender},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Recipient},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Origin},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Amount0},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Amount1},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AmountUsd},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SqrtPriceX96},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Tick},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LogIndex},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${EvaluatedPrice},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${EvaluatedAmount},
        [Parameter(Position = 21, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Buy", "Sell", "EstimatedBuy", "EstimatedSell", "Unknown")]
        [PSCustomObject]
        ${EvaluatedAggressor},
        [Parameter(Position = 22, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PoolId},
        [Parameter(Position = 23, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TransactionId}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => UniswapV3SwapDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "entry_time" = ${EntryTime}
            "recv_time" = ${RecvTime}
            "block_number" = ${BlockNumber}
            "vid" = ${Vid}
            "id" = ${Id}
            "transaction" = ${Transaction}
            "timestamp" = ${Timestamp}
            "pool" = ${Pool}
            "token_0" = ${Token0}
            "token_1" = ${Token1}
            "sender" = ${VarSender}
            "recipient" = ${Recipient}
            "origin" = ${Origin}
            "amount_0" = ${Amount0}
            "amount_1" = ${Amount1}
            "amount_usd" = ${AmountUsd}
            "sqrt_price_x96" = ${SqrtPriceX96}
            "tick" = ${Tick}
            "log_index" = ${LogIndex}
            "evaluated_price" = ${EvaluatedPrice}
            "evaluated_amount" = ${EvaluatedAmount}
            "evaluated_aggressor" = ${EvaluatedAggressor}
            "pool_id" = ${PoolId}
            "transaction_id" = ${TransactionId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UniswapV3SwapDTO<PSCustomObject>

.DESCRIPTION

Convert from JSON to UniswapV3SwapDTO<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UniswapV3SwapDTO<PSCustomObject>
#>
function ConvertFrom-JsonToUniswapV3SwapDTO {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => UniswapV3SwapDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UniswapV3SwapDTO
        $AllProperties = ("entry_time", "recv_time", "block_number", "vid", "id", "transaction", "timestamp", "pool", "token_0", "token_1", "sender", "recipient", "origin", "amount_0", "amount_1", "amount_usd", "sqrt_price_x96", "tick", "log_index", "evaluated_price", "evaluated_amount", "evaluated_aggressor", "pool_id", "transaction_id")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entry_time"))) { #optional property not found
            $EntryTime = $null
        } else {
            $EntryTime = $JsonParameters.PSobject.Properties["entry_time"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recv_time"))) { #optional property not found
            $RecvTime = $null
        } else {
            $RecvTime = $JsonParameters.PSobject.Properties["recv_time"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "block_number"))) { #optional property not found
            $BlockNumber = $null
        } else {
            $BlockNumber = $JsonParameters.PSobject.Properties["block_number"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "vid"))) { #optional property not found
            $Vid = $null
        } else {
            $Vid = $JsonParameters.PSobject.Properties["vid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "transaction"))) { #optional property not found
            $Transaction = $null
        } else {
            $Transaction = $JsonParameters.PSobject.Properties["transaction"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timestamp"))) { #optional property not found
            $Timestamp = $null
        } else {
            $Timestamp = $JsonParameters.PSobject.Properties["timestamp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pool"))) { #optional property not found
            $Pool = $null
        } else {
            $Pool = $JsonParameters.PSobject.Properties["pool"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "token_0"))) { #optional property not found
            $Token0 = $null
        } else {
            $Token0 = $JsonParameters.PSobject.Properties["token_0"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "token_1"))) { #optional property not found
            $Token1 = $null
        } else {
            $Token1 = $JsonParameters.PSobject.Properties["token_1"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sender"))) { #optional property not found
            $VarSender = $null
        } else {
            $VarSender = $JsonParameters.PSobject.Properties["sender"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recipient"))) { #optional property not found
            $Recipient = $null
        } else {
            $Recipient = $JsonParameters.PSobject.Properties["recipient"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "origin"))) { #optional property not found
            $Origin = $null
        } else {
            $Origin = $JsonParameters.PSobject.Properties["origin"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "amount_0"))) { #optional property not found
            $Amount0 = $null
        } else {
            $Amount0 = $JsonParameters.PSobject.Properties["amount_0"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "amount_1"))) { #optional property not found
            $Amount1 = $null
        } else {
            $Amount1 = $JsonParameters.PSobject.Properties["amount_1"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "amount_usd"))) { #optional property not found
            $AmountUsd = $null
        } else {
            $AmountUsd = $JsonParameters.PSobject.Properties["amount_usd"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sqrt_price_x96"))) { #optional property not found
            $SqrtPriceX96 = $null
        } else {
            $SqrtPriceX96 = $JsonParameters.PSobject.Properties["sqrt_price_x96"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tick"))) { #optional property not found
            $Tick = $null
        } else {
            $Tick = $JsonParameters.PSobject.Properties["tick"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "log_index"))) { #optional property not found
            $LogIndex = $null
        } else {
            $LogIndex = $JsonParameters.PSobject.Properties["log_index"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "evaluated_price"))) { #optional property not found
            $EvaluatedPrice = $null
        } else {
            $EvaluatedPrice = $JsonParameters.PSobject.Properties["evaluated_price"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "evaluated_amount"))) { #optional property not found
            $EvaluatedAmount = $null
        } else {
            $EvaluatedAmount = $JsonParameters.PSobject.Properties["evaluated_amount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "evaluated_aggressor"))) { #optional property not found
            $EvaluatedAggressor = $null
        } else {
            $EvaluatedAggressor = $JsonParameters.PSobject.Properties["evaluated_aggressor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pool_id"))) { #optional property not found
            $PoolId = $null
        } else {
            $PoolId = $JsonParameters.PSobject.Properties["pool_id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "transaction_id"))) { #optional property not found
            $TransactionId = $null
        } else {
            $TransactionId = $JsonParameters.PSobject.Properties["transaction_id"].value
        }

        $PSO = [PSCustomObject]@{
            "entry_time" = ${EntryTime}
            "recv_time" = ${RecvTime}
            "block_number" = ${BlockNumber}
            "vid" = ${Vid}
            "id" = ${Id}
            "transaction" = ${Transaction}
            "timestamp" = ${Timestamp}
            "pool" = ${Pool}
            "token_0" = ${Token0}
            "token_1" = ${Token1}
            "sender" = ${VarSender}
            "recipient" = ${Recipient}
            "origin" = ${Origin}
            "amount_0" = ${Amount0}
            "amount_1" = ${Amount1}
            "amount_usd" = ${AmountUsd}
            "sqrt_price_x96" = ${SqrtPriceX96}
            "tick" = ${Tick}
            "log_index" = ${LogIndex}
            "evaluated_price" = ${EvaluatedPrice}
            "evaluated_amount" = ${EvaluatedAmount}
            "evaluated_aggressor" = ${EvaluatedAggressor}
            "pool_id" = ${PoolId}
            "transaction_id" = ${TransactionId}
        }

        return $PSO
    }

}

