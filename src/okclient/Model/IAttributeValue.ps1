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

.PARAMETER Type
No description available.
.PARAMETER IsArray
No description available.
.OUTPUTS

IAttributeValue<PSCustomObject>
#>

function Initialize-OKIAttributeValue {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsArray}
    )

    Process {
        'Creating PSCustomObject: okclient => OKIAttributeValue' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "isArray" = ${IsArray}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IAttributeValue<PSCustomObject>

.DESCRIPTION

Convert from JSON to IAttributeValue<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IAttributeValue<PSCustomObject>
#>
function ConvertFrom-OKJsonToIAttributeValue {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: okclient => OKIAttributeValue' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OKIAttributeValue
        $AllProperties = ("type", "isArray")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isArray"))) { #optional property not found
            $IsArray = $null
        } else {
            $IsArray = $JsonParameters.PSobject.Properties["isArray"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "isArray" = ${IsArray}
        }

        return $PSO
    }

}

