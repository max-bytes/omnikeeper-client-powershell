#
# Landscape omnikeeper REST API
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: v1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER ExpressionKind
No description available.
.OUTPUTS

IEdmExpression<PSCustomObject>
#>

function Initialize-OKIEdmExpression {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ExpressionKind}
    )

    Process {
        'Creating PSCustomObject: okclient => OKIEdmExpression' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "expressionKind" = ${ExpressionKind}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IEdmExpression<PSCustomObject>

.DESCRIPTION

Convert from JSON to IEdmExpression<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IEdmExpression<PSCustomObject>
#>
function ConvertFrom-OKJsonToIEdmExpression {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: okclient => OKIEdmExpression' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OKIEdmExpression
        $AllProperties = ("expressionKind")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expressionKind"))) { #optional property not found
            $ExpressionKind = $null
        } else {
            $ExpressionKind = $JsonParameters.PSobject.Properties["expressionKind"].value
        }

        $PSO = [PSCustomObject]@{
            "expressionKind" = ${ExpressionKind}
        }

        return $PSO
    }

}

