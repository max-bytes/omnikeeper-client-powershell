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
.PARAMETER OutgoingRelation
No description available.
.PARAMETER PredicateID
No description available.
.PARAMETER Type
No description available.
.OUTPUTS

InboundIDMethodByRelatedTempID<PSCustomObject>
#>

function Initialize-OKInboundIDMethodByRelatedTempID {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TempID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${OutgoingRelation},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PredicateID},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: okclient => OKInboundIDMethodByRelatedTempID' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "tempID" = ${TempID}
            "outgoingRelation" = ${OutgoingRelation}
            "predicateID" = ${PredicateID}
            "type" = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InboundIDMethodByRelatedTempID<PSCustomObject>

.DESCRIPTION

Convert from JSON to InboundIDMethodByRelatedTempID<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InboundIDMethodByRelatedTempID<PSCustomObject>
#>
function ConvertFrom-OKJsonToInboundIDMethodByRelatedTempID {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: okclient => OKInboundIDMethodByRelatedTempID' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OKInboundIDMethodByRelatedTempID
        $AllProperties = ("tempID", "outgoingRelation", "predicateID", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tempID"))) { #optional property not found
            $TempID = $null
        } else {
            $TempID = $JsonParameters.PSobject.Properties["tempID"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "outgoingRelation"))) { #optional property not found
            $OutgoingRelation = $null
        } else {
            $OutgoingRelation = $JsonParameters.PSobject.Properties["outgoingRelation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "predicateID"))) { #optional property not found
            $PredicateID = $null
        } else {
            $PredicateID = $JsonParameters.PSobject.Properties["predicateID"].value
        }

        $PSO = [PSCustomObject]@{
            "tempID" = ${TempID}
            "outgoingRelation" = ${OutgoingRelation}
            "predicateID" = ${PredicateID}
            "type" = ${Type}
        }

        return $PSO
    }

}

