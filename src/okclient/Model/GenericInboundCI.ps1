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

.PARAMETER TempID
No description available.
.PARAMETER IdMethod
No description available.
.PARAMETER SameTempIDHandling
No description available.
.PARAMETER SameTargetCIHandling
No description available.
.PARAMETER NoFoundTargetCIHandling
No description available.
.PARAMETER Attributes
No description available.
.OUTPUTS

GenericInboundCI<PSCustomObject>
#>

function Initialize-OKGenericInboundCI {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TempID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${IdMethod},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("DropAndWarn", "Drop")]
        [PSCustomObject]
        ${SameTempIDHandling},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Error", "Drop", "DropAndWarn", "Evade", "EvadeAndWarn", "Merge")]
        [PSCustomObject]
        ${SameTargetCIHandling},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CreateNew", "CreateNewAndWarn", "Drop")]
        [PSCustomObject]
        ${NoFoundTargetCIHandling},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Attributes}
    )

    Process {
        'Creating PSCustomObject: okclient => OKGenericInboundCI' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "tempID" = ${TempID}
            "idMethod" = ${IdMethod}
            "sameTempIDHandling" = ${SameTempIDHandling}
            "sameTargetCIHandling" = ${SameTargetCIHandling}
            "noFoundTargetCIHandling" = ${NoFoundTargetCIHandling}
            "attributes" = ${Attributes}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GenericInboundCI<PSCustomObject>

.DESCRIPTION

Convert from JSON to GenericInboundCI<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GenericInboundCI<PSCustomObject>
#>
function ConvertFrom-OKJsonToGenericInboundCI {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: okclient => OKGenericInboundCI' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OKGenericInboundCI
        $AllProperties = ("tempID", "idMethod", "sameTempIDHandling", "sameTargetCIHandling", "noFoundTargetCIHandling", "attributes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tempID"))) { #optional property not found
            $TempID = $null
        } else {
            $TempID = $JsonParameters.PSobject.Properties["tempID"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "idMethod"))) { #optional property not found
            $IdMethod = $null
        } else {
            $IdMethod = $JsonParameters.PSobject.Properties["idMethod"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sameTempIDHandling"))) { #optional property not found
            $SameTempIDHandling = $null
        } else {
            $SameTempIDHandling = $JsonParameters.PSobject.Properties["sameTempIDHandling"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sameTargetCIHandling"))) { #optional property not found
            $SameTargetCIHandling = $null
        } else {
            $SameTargetCIHandling = $JsonParameters.PSobject.Properties["sameTargetCIHandling"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "noFoundTargetCIHandling"))) { #optional property not found
            $NoFoundTargetCIHandling = $null
        } else {
            $NoFoundTargetCIHandling = $JsonParameters.PSobject.Properties["noFoundTargetCIHandling"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        $PSO = [PSCustomObject]@{
            "tempID" = ${TempID}
            "idMethod" = ${IdMethod}
            "sameTempIDHandling" = ${SameTempIDHandling}
            "sameTargetCIHandling" = ${SameTargetCIHandling}
            "noFoundTargetCIHandling" = ${NoFoundTargetCIHandling}
            "attributes" = ${Attributes}
        }

        return $PSO
    }

}

