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

.PARAMETER TraitAttributes
No description available.
.PARAMETER TraitRelations
No description available.
.OUTPUTS

EffectiveTraitDTO<PSCustomObject>
#>

function Initialize-OKEffectiveTraitDTO {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${TraitAttributes},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${TraitRelations}
    )

    Process {
        'Creating PSCustomObject: okclient => OKEffectiveTraitDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $TraitAttributes) {
            throw "invalid value for 'TraitAttributes', 'TraitAttributes' cannot be null."
        }

        if ($null -eq $TraitRelations) {
            throw "invalid value for 'TraitRelations', 'TraitRelations' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "traitAttributes" = ${TraitAttributes}
            "traitRelations" = ${TraitRelations}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EffectiveTraitDTO<PSCustomObject>

.DESCRIPTION

Convert from JSON to EffectiveTraitDTO<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EffectiveTraitDTO<PSCustomObject>
#>
function ConvertFrom-OKJsonToEffectiveTraitDTO {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: okclient => OKEffectiveTraitDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OKEffectiveTraitDTO
        $AllProperties = ("traitAttributes", "traitRelations")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'traitAttributes' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "traitAttributes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'traitAttributes' missing."
        } else {
            $TraitAttributes = $JsonParameters.PSobject.Properties["traitAttributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "traitRelations"))) {
            throw "Error! JSON cannot be serialized due to the required property 'traitRelations' missing."
        } else {
            $TraitRelations = $JsonParameters.PSobject.Properties["traitRelations"].value
        }

        $PSO = [PSCustomObject]@{
            "traitAttributes" = ${TraitAttributes}
            "traitRelations" = ${TraitRelations}
        }

        return $PSO
    }

}

