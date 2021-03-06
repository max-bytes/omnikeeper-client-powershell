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

.PARAMETER TypeAnnotation
No description available.
.PARAMETER EntitySets
No description available.
.PARAMETER Singletons
No description available.
.PARAMETER FunctionImports
No description available.
.OUTPUTS

ODataServiceDocument<PSCustomObject>
#>

function Initialize-OKODataServiceDocument {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TypeAnnotation},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${EntitySets},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Singletons},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FunctionImports}
    )

    Process {
        'Creating PSCustomObject: okclient => OKODataServiceDocument' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "typeAnnotation" = ${TypeAnnotation}
            "entitySets" = ${EntitySets}
            "singletons" = ${Singletons}
            "functionImports" = ${FunctionImports}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ODataServiceDocument<PSCustomObject>

.DESCRIPTION

Convert from JSON to ODataServiceDocument<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ODataServiceDocument<PSCustomObject>
#>
function ConvertFrom-OKJsonToODataServiceDocument {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: okclient => OKODataServiceDocument' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OKODataServiceDocument
        $AllProperties = ("typeAnnotation", "entitySets", "singletons", "functionImports")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "typeAnnotation"))) { #optional property not found
            $TypeAnnotation = $null
        } else {
            $TypeAnnotation = $JsonParameters.PSobject.Properties["typeAnnotation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitySets"))) { #optional property not found
            $EntitySets = $null
        } else {
            $EntitySets = $JsonParameters.PSobject.Properties["entitySets"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "singletons"))) { #optional property not found
            $Singletons = $null
        } else {
            $Singletons = $JsonParameters.PSobject.Properties["singletons"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "functionImports"))) { #optional property not found
            $FunctionImports = $null
        } else {
            $FunctionImports = $JsonParameters.PSobject.Properties["functionImports"].value
        }

        $PSO = [PSCustomObject]@{
            "typeAnnotation" = ${TypeAnnotation}
            "entitySets" = ${EntitySets}
            "singletons" = ${Singletons}
            "functionImports" = ${FunctionImports}
        }

        return $PSO
    }

}

