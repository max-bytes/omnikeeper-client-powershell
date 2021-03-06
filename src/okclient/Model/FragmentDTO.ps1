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

.PARAMETER Name
No description available.
.PARAMETER Value
No description available.
.PARAMETER Ciid
No description available.
.OUTPUTS

FragmentDTO<PSCustomObject>
#>

function Initialize-OKFragmentDTO {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Value},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Ciid}
    )

    Process {
        'Creating PSCustomObject: okclient => OKFragmentDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Value) {
            throw "invalid value for 'Value', 'Value' cannot be null."
        }

        if ($null -eq $Ciid) {
            throw "invalid value for 'Ciid', 'Ciid' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "value" = ${Value}
            "ciid" = ${Ciid}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FragmentDTO<PSCustomObject>

.DESCRIPTION

Convert from JSON to FragmentDTO<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FragmentDTO<PSCustomObject>
#>
function ConvertFrom-OKJsonToFragmentDTO {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: okclient => OKFragmentDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OKFragmentDTO
        $AllProperties = ("name", "value", "ciid")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) {
            throw "Error! JSON cannot be serialized due to the required property 'value' missing."
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ciid"))) {
            throw "Error! JSON cannot be serialized due to the required property 'ciid' missing."
        } else {
            $Ciid = $JsonParameters.PSobject.Properties["ciid"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "value" = ${Value}
            "ciid" = ${Ciid}
        }

        return $PSO
    }

}

