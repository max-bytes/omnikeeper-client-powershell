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

.PARAMETER Inner
No description available.
.PARAMETER Type
No description available.
.OUTPUTS

InboundIDMethodByIntersect<PSCustomObject>
#>

function Initialize-OKInboundIDMethodByIntersect {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Inner},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: okclient => OKInboundIDMethodByIntersect' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "inner" = ${Inner}
            "type" = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InboundIDMethodByIntersect<PSCustomObject>

.DESCRIPTION

Convert from JSON to InboundIDMethodByIntersect<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InboundIDMethodByIntersect<PSCustomObject>
#>
function ConvertFrom-OKJsonToInboundIDMethodByIntersect {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: okclient => OKInboundIDMethodByIntersect' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OKInboundIDMethodByIntersect
        $AllProperties = ("inner", "type")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inner"))) { #optional property not found
            $Inner = $null
        } else {
            $Inner = $JsonParameters.PSobject.Properties["inner"].value
        }

        $PSO = [PSCustomObject]@{
            "inner" = ${Inner}
            "type" = ${Type}
        }

        return $PSO
    }

}

