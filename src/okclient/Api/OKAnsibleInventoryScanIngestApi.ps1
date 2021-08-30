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

.PARAMETER WriteLayerID
No description available.

.PARAMETER SearchLayerIDs
No description available.

.PARAMETER Version
No description available.

.PARAMETER AnsibleInventoryScanDTO
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function ConvertTo-OKgestAnsibleInventoryScan {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${WriteLayerID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${SearchLayerIDs},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Version},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${AnsibleInventoryScanDTO},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: ConvertTo-OKgestAnsibleInventoryScan' | Write-Debug
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
        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json;odata.metadata=minimal;odata.streaming=true', 'application/json;odata.metadata=minimal;odata.streaming=false', 'application/json;odata.metadata=minimal', 'application/json;odata.metadata=full;odata.streaming=true', 'application/json;odata.metadata=full;odata.streaming=false', 'application/json;odata.metadata=full', 'application/json;odata.metadata=none;odata.streaming=true', 'application/json;odata.metadata=none;odata.streaming=false', 'application/json;odata.metadata=none', 'application/json;odata.streaming=true', 'application/json;odata.streaming=false', 'application/json', 'application/xml', 'application/odata', 'application/json-patch+json', 'text/json', 'application/*+json')

        $LocalVarUri = '/api/v{version}/Ingest/AnsibleInventoryScan'
        if (!$Version) {
            throw "Error! The required parameter `Version` missing when calling ingestAnsibleInventoryScan."
        }
        $LocalVarUri = $LocalVarUri.replace('{version}', [System.Web.HTTPUtility]::UrlEncode($Version))

        if (!$WriteLayerID) {
            throw "Error! The required parameter `WriteLayerID` missing when calling ingestAnsibleInventoryScan."
        }
        $LocalVarQueryParameters['writeLayerID'] = $WriteLayerID

        if (!$SearchLayerIDs) {
            throw "Error! The required parameter `SearchLayerIDs` missing when calling ingestAnsibleInventoryScan."
        }
        $LocalVarQueryParameters['searchLayerIDs'] = $SearchLayerIDs

        if (!$AnsibleInventoryScanDTO) {
            throw "Error! The required parameter `AnsibleInventoryScanDTO` missing when calling ingestAnsibleInventoryScan."
        }

        $LocalVarBodyParameter = $AnsibleInventoryScanDTO | ConvertTo-Json -Depth 100



        $LocalVarResult = Invoke-OKApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

