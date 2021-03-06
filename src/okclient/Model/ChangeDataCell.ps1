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

.PARAMETER Id
No description available.
.PARAMETER Value
No description available.
.PARAMETER Changeable
No description available.
.OUTPUTS

ChangeDataCell<PSCustomObject>
#>

function Initialize-OKChangeDataCell {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Value},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Changeable}
    )

    Process {
        'Creating PSCustomObject: okclient => OKChangeDataCell' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "value" = ${Value}
            "changeable" = ${Changeable}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ChangeDataCell<PSCustomObject>

.DESCRIPTION

Convert from JSON to ChangeDataCell<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ChangeDataCell<PSCustomObject>
#>
function ConvertFrom-OKJsonToChangeDataCell {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: okclient => OKChangeDataCell' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OKChangeDataCell
        $AllProperties = ("id", "value", "changeable")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "changeable"))) { #optional property not found
            $Changeable = $null
        } else {
            $Changeable = $JsonParameters.PSobject.Properties["changeable"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "value" = ${Value}
            "changeable" = ${Changeable}
        }

        return $PSO
    }

}

