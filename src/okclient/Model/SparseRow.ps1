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

.PARAMETER Ciid
No description available.
.PARAMETER Cells
No description available.
.OUTPUTS

SparseRow<PSCustomObject>
#>

function Initialize-OKSparseRow {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Ciid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Cells}
    )

    Process {
        'Creating PSCustomObject: okclient => OKSparseRow' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ciid" = ${Ciid}
            "cells" = ${Cells}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SparseRow<PSCustomObject>

.DESCRIPTION

Convert from JSON to SparseRow<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SparseRow<PSCustomObject>
#>
function ConvertFrom-OKJsonToSparseRow {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: okclient => OKSparseRow' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OKSparseRow
        $AllProperties = ("ciid", "cells")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ciid"))) { #optional property not found
            $Ciid = $null
        } else {
            $Ciid = $JsonParameters.PSobject.Properties["ciid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cells"))) { #optional property not found
            $Cells = $null
        } else {
            $Cells = $JsonParameters.PSobject.Properties["cells"].value
        }

        $PSO = [PSCustomObject]@{
            "ciid" = ${Ciid}
            "cells" = ${Cells}
        }

        return $PSO
    }

}

