#
# Landscape omnikeeper REST API
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: v1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

bulk replace all attributes in specified layer

.DESCRIPTION

No description available.

.PARAMETER Version
No description available.

.PARAMETER BulkCIAttributeLayerScopeDTO
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-OKBulkReplaceAttributesInLayer {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Version},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${BulkCIAttributeLayerScopeDTO},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-OKBulkReplaceAttributesInLayer' | Write-Debug
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

        $LocalVarUri = '/api/v{version}/Attribute/bulkReplaceAttributesInLayer'
        if (!$Version) {
            throw "Error! The required parameter `Version` missing when calling bulkReplaceAttributesInLayer."
        }
        $LocalVarUri = $LocalVarUri.replace('{version}', [System.Web.HTTPUtility]::UrlEncode($Version))

        if (!$BulkCIAttributeLayerScopeDTO) {
            throw "Error! The required parameter `BulkCIAttributeLayerScopeDTO` missing when calling bulkReplaceAttributesInLayer."
        }

        $LocalVarBodyParameter = $BulkCIAttributeLayerScopeDTO | ConvertTo-Json -Depth 100



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

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Regex
No description available.

.PARAMETER LayerIDs
No description available.

.PARAMETER Version
No description available.

.PARAMETER Ciids
No description available.

.PARAMETER AtTime
No description available.

.PARAMETER ReturnType

Select the return type (optional): application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

CIAttributeDTO[]
#>
function Find-OKMergedAttributesByName {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Regex},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${LayerIDs},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Version},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${Ciids},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${AtTime},
        [String]
        [ValidateSet("application/json;odata.metadata=minimal;odata.streaming=true", "application/json;odata.metadata=minimal;odata.streaming=false", "application/json;odata.metadata=minimal", "application/json;odata.metadata=full;odata.streaming=true", "application/json;odata.metadata=full;odata.streaming=false", "application/json;odata.metadata=full", "application/json;odata.metadata=none;odata.streaming=true", "application/json;odata.metadata=none;odata.streaming=false", "application/json;odata.metadata=none", "application/json;odata.streaming=true", "application/json;odata.streaming=false", "application/json", "application/xml", "application/odata", "text/plain", "text/json")]
        $ReturnType,
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Find-OKMergedAttributesByName' | Write-Debug
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

        $LocalVarUri = '/api/v{version}/Attribute/findMergedAttributesByName'
        if (!$Version) {
            throw "Error! The required parameter `Version` missing when calling findMergedAttributesByName."
        }
        $LocalVarUri = $LocalVarUri.replace('{version}', [System.Web.HTTPUtility]::UrlEncode($Version))

        if (!$Regex) {
            throw "Error! The required parameter `Regex` missing when calling findMergedAttributesByName."
        }
        $LocalVarQueryParameters['regex'] = $Regex

        if ($Ciids) {
            $LocalVarQueryParameters['ciids'] = $Ciids
        }

        if (!$LayerIDs) {
            throw "Error! The required parameter `LayerIDs` missing when calling findMergedAttributesByName."
        }
        $LocalVarQueryParameters['layerIDs'] = $LayerIDs

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
                                -ReturnType "CIAttributeDTO[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Ciid
No description available.

.PARAMETER Name
No description available.

.PARAMETER LayerIDs
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

CIAttributeDTO
#>
function Get-OKMergedAttribute {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${Ciid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${LayerIDs},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Version},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${AtTime},
        [String]
        [ValidateSet("application/json;odata.metadata=minimal;odata.streaming=true", "application/json;odata.metadata=minimal;odata.streaming=false", "application/json;odata.metadata=minimal", "application/json;odata.metadata=full;odata.streaming=true", "application/json;odata.metadata=full;odata.streaming=false", "application/json;odata.metadata=full", "application/json;odata.metadata=none;odata.streaming=true", "application/json;odata.metadata=none;odata.streaming=false", "application/json;odata.metadata=none", "application/json;odata.streaming=true", "application/json;odata.streaming=false", "application/json", "application/xml", "application/odata", "text/plain", "text/json")]
        $ReturnType,
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-OKMergedAttribute' | Write-Debug
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

        $LocalVarUri = '/api/v{version}/Attribute/getMergedAttribute'
        if (!$Version) {
            throw "Error! The required parameter `Version` missing when calling getMergedAttribute."
        }
        $LocalVarUri = $LocalVarUri.replace('{version}', [System.Web.HTTPUtility]::UrlEncode($Version))

        if (!$Ciid) {
            throw "Error! The required parameter `Ciid` missing when calling getMergedAttribute."
        }
        $LocalVarQueryParameters['ciid'] = $Ciid

        if (!$Name) {
            throw "Error! The required parameter `Name` missing when calling getMergedAttribute."
        }
        $LocalVarQueryParameters['name'] = $Name

        if (!$LayerIDs) {
            throw "Error! The required parameter `LayerIDs` missing when calling getMergedAttribute."
        }
        $LocalVarQueryParameters['layerIDs'] = $LayerIDs

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
                                -ReturnType "CIAttributeDTO" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Ciids
No description available.

.PARAMETER LayerIDs
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

CIAttributeDTO[]
#>
function Get-OKMergedAttributes {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${Ciids},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${LayerIDs},
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
        'Calling method: Get-OKMergedAttributes' | Write-Debug
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

        $LocalVarUri = '/api/v{version}/Attribute/getMergedAttributes'
        if (!$Version) {
            throw "Error! The required parameter `Version` missing when calling getMergedAttributes."
        }
        $LocalVarUri = $LocalVarUri.replace('{version}', [System.Web.HTTPUtility]::UrlEncode($Version))

        if (!$Ciids) {
            throw "Error! The required parameter `Ciids` missing when calling getMergedAttributes."
        }
        $LocalVarQueryParameters['ciids'] = $Ciids

        if (!$LayerIDs) {
            throw "Error! The required parameter `LayerIDs` missing when calling getMergedAttributes."
        }
        $LocalVarQueryParameters['layerIDs'] = $LayerIDs

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
                                -ReturnType "CIAttributeDTO[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Name
No description available.

.PARAMETER LayerIDs
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

CIAttributeDTO[]
#>
function Get-OKMergedAttributesWithName {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${LayerIDs},
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
        'Calling method: Get-OKMergedAttributesWithName' | Write-Debug
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

        $LocalVarUri = '/api/v{version}/Attribute/getMergedAttributesWithName'
        if (!$Version) {
            throw "Error! The required parameter `Version` missing when calling getMergedAttributesWithName."
        }
        $LocalVarUri = $LocalVarUri.replace('{version}', [System.Web.HTTPUtility]::UrlEncode($Version))

        if (!$Name) {
            throw "Error! The required parameter `Name` missing when calling getMergedAttributesWithName."
        }
        $LocalVarQueryParameters['name'] = $Name

        if (!$LayerIDs) {
            throw "Error! The required parameter `LayerIDs` missing when calling getMergedAttributesWithName."
        }
        $LocalVarQueryParameters['layerIDs'] = $LayerIDs

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
                                -ReturnType "CIAttributeDTO[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

