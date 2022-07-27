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

.PARAMETER IsNullable
No description available.
.PARAMETER Definition
No description available.
.OUTPUTS

IEdmTypeReference<PSCustomObject>
#>

function Initialize-OKIEdmTypeReference {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsNullable},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Definition}
    )

    Process {
        'Creating PSCustomObject: okclient => OKIEdmTypeReference' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "isNullable" = ${IsNullable}
            "definition" = ${Definition}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IEdmTypeReference<PSCustomObject>

.DESCRIPTION

Convert from JSON to IEdmTypeReference<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IEdmTypeReference<PSCustomObject>
#>
function ConvertFrom-OKJsonToIEdmTypeReference {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: okclient => OKIEdmTypeReference' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OKIEdmTypeReference
        $AllProperties = ("isNullable", "definition")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isNullable"))) { #optional property not found
            $IsNullable = $null
        } else {
            $IsNullable = $JsonParameters.PSobject.Properties["isNullable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "definition"))) { #optional property not found
            $Definition = $null
        } else {
            $Definition = $JsonParameters.PSobject.Properties["definition"].value
        }

        $PSO = [PSCustomObject]@{
            "isNullable" = ${IsNullable}
            "definition" = ${Definition}
        }

        return $PSO
    }

}
