#
# OEML - REST API
# This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=""https://postman.coinapi.io/"" target=""_blank"">https://postman.coinapi.io/</a>       
# Version: v1
# Contact: support@coinapi.io
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Type
No description available.
.PARAMETER Title
No description available.
.PARAMETER Status
No description available.
.PARAMETER TraceId
No description available.
.PARAMETER Errors
No description available.
.OUTPUTS

ValidationError<PSCustomObject>
#>

function Initialize-ValidationError {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Title},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${Status},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TraceId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Errors}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ValidationError' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "title" = ${Title}
            "status" = ${Status}
            "traceId" = ${TraceId}
            "errors" = ${Errors}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ValidationError<PSCustomObject>

.DESCRIPTION

Convert from JSON to ValidationError<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ValidationError<PSCustomObject>
#>
function ConvertFrom-JsonToValidationError {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ValidationError' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ValidationError
        $AllProperties = ("type", "title", "status", "traceId", "errors")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "title"))) { #optional property not found
            $Title = $null
        } else {
            $Title = $JsonParameters.PSobject.Properties["title"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "traceId"))) { #optional property not found
            $TraceId = $null
        } else {
            $TraceId = $JsonParameters.PSobject.Properties["traceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errors"))) { #optional property not found
            $Errors = $null
        } else {
            $Errors = $JsonParameters.PSobject.Properties["errors"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "title" = ${Title}
            "status" = ${Status}
            "traceId" = ${TraceId}
            "errors" = ${Errors}
        }

        return $PSO
    }

}

