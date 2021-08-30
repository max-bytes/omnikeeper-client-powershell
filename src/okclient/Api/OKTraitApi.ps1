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

.PARAMETER LayerIDs
No description available.

.PARAMETER TraitName
No description available.

.PARAMETER Version
No description available.

.PARAMETER AtTime
No description available.

.PARAMETER ReturnType

Select the return type (optional): application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

System.Collections.Hashtable
#>
function Get-OKEffectiveTraitsForTraitName {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${LayerIDs},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TraitName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Version},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${AtTime},
        [String]
        [ValidateSet("application/json;odata.metadata=minimal;odata.streaming=true", "application/json;odata.metadata=minimal;odata.streaming=false", "application/json;odata.metadata=minimal", "application/json;odata.metadata=full;odata.streaming=true", "application/json;odata.metadata=full;odata.streaming=false", "application/json;odata.metadata=full", "application/json;odata.metadata=none;odata.streaming=true", "application/json;odata.metadata=none;odata.streaming=false", "application/json;odata.metadata=none", "application/json;odata.streaming=true", "application/json;odata.streaming=false", "application/json", "application/xml", "application/odata", "text/plain", "text/json")]
        $ReturnType,
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-OKEffectiveTraitsForTraitName' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OKConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json;odata.metadata=minimal;odata.streaming=true', 'application/json;odata.metadata=minimal;odata.streaming=false', 'application/json;odata.metadata=minimal', 'application/json;odata.metadata=full;odata.streaming=true', 'application/json;odata.metadata=full;odata.streaming=false', 'application/json;odata.metadata=full', 'application/json;odata.metadata=none;odata.streaming=true', 'application/json;odata.metadata=none;odata.streaming=false', 'application/json;odata.metadata=none', 'application/json;odata.streaming=true', 'application/json;odata.streaming=false', 'application/json', 'application/xml', 'application/odata', 'text/plain', 'text/json')

        if ($ReturnType) {
            # use the return type (MIME) provided by the user
            $LocalVarAccepts = @($ReturnType)
        }

        $LocalVarUri = '/api/v{version}/Trait/getEffectiveTraitsForTraitName'
        if (!$Version) {
            throw "Error! The required parameter `Version` missing when calling getEffectiveTraitsForTraitName."
        }
        $LocalVarUri = $LocalVarUri.replace('{version}', [System.Web.HTTPUtility]::UrlEncode($Version))

        if (!$LayerIDs) {
            throw "Error! The required parameter `LayerIDs` missing when calling getEffectiveTraitsForTraitName."
        }
        $LocalVarQueryParameters['layerIDs'] = $LayerIDs

        if (!$TraitName) {
            throw "Error! The required parameter `TraitName` missing when calling getEffectiveTraitsForTraitName."
        }
        $LocalVarQueryParameters['traitName'] = $TraitName

        if ($AtTime) {
            $LocalVarQueryParameters['atTime'] = $AtTime
        }



        $LocalVarResult = Invoke-OKApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "System.Collections.Hashtable" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

