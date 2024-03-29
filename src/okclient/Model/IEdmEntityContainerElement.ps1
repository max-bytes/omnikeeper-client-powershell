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

.PARAMETER ContainerElementKind
No description available.
.PARAMETER Container
No description available.
.PARAMETER Name
No description available.
.OUTPUTS

IEdmEntityContainerElement<PSCustomObject>
#>

function Initialize-OKIEdmEntityContainerElement {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("None", "EntitySet", "ActionImport", "FunctionImport", "Singleton")]
        [PSCustomObject]
        ${ContainerElementKind},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Container},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: okclient => OKIEdmEntityContainerElement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "containerElementKind" = ${ContainerElementKind}
            "container" = ${Container}
            "name" = ${Name}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IEdmEntityContainerElement<PSCustomObject>

.DESCRIPTION

Convert from JSON to IEdmEntityContainerElement<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IEdmEntityContainerElement<PSCustomObject>
#>
function ConvertFrom-OKJsonToIEdmEntityContainerElement {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: okclient => OKIEdmEntityContainerElement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OKIEdmEntityContainerElement
        $AllProperties = ("containerElementKind", "container", "name")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "containerElementKind"))) { #optional property not found
            $ContainerElementKind = $null
        } else {
            $ContainerElementKind = $JsonParameters.PSobject.Properties["containerElementKind"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "container"))) { #optional property not found
            $Container = $null
        } else {
            $Container = $JsonParameters.PSobject.Properties["container"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        $PSO = [PSCustomObject]@{
            "containerElementKind" = ${ContainerElementKind}
            "container" = ${Container}
            "name" = ${Name}
        }

        return $PSO
    }

}

