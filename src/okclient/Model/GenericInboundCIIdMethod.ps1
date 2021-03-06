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

.PARAMETER Json

JSON object

.OUTPUTS

GenericInboundCIIdMethod<PSCustomObject>
#>
function ConvertFrom-OKJsonToGenericInboundCIIdMethod {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match InboundIDMethodByAttribute defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-OKJsonToInboundIDMethodByAttribute $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "InboundIDMethodByAttribute"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'InboundIDMethodByAttribute' defined in oneOf (OKGenericInboundCIIdMethod). Proceeding to the next one if any."
        }

        # try to match InboundIDMethodByAttributeModifiers defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-OKJsonToInboundIDMethodByAttributeModifiers $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "InboundIDMethodByAttributeModifiers"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'InboundIDMethodByAttributeModifiers' defined in oneOf (OKGenericInboundCIIdMethod). Proceeding to the next one if any."
        }

        # try to match InboundIDMethodByByUnion defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-OKJsonToInboundIDMethodByByUnion $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "InboundIDMethodByByUnion"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'InboundIDMethodByByUnion' defined in oneOf (OKGenericInboundCIIdMethod). Proceeding to the next one if any."
        }

        # try to match InboundIDMethodByData defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-OKJsonToInboundIDMethodByData $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "InboundIDMethodByData"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'InboundIDMethodByData' defined in oneOf (OKGenericInboundCIIdMethod). Proceeding to the next one if any."
        }

        # try to match InboundIDMethodByIntersect defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-OKJsonToInboundIDMethodByIntersect $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "InboundIDMethodByIntersect"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'InboundIDMethodByIntersect' defined in oneOf (OKGenericInboundCIIdMethod). Proceeding to the next one if any."
        }

        # try to match InboundIDMethodByRelatedTempID defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-OKJsonToInboundIDMethodByRelatedTempID $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "InboundIDMethodByRelatedTempID"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'InboundIDMethodByRelatedTempID' defined in oneOf (OKGenericInboundCIIdMethod). Proceeding to the next one if any."
        }

        # try to match InboundIDMethodByTemporaryCIID defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-OKJsonToInboundIDMethodByTemporaryCIID $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "InboundIDMethodByTemporaryCIID"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'InboundIDMethodByTemporaryCIID' defined in oneOf (OKGenericInboundCIIdMethod). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([InboundIDMethodByAttribute, InboundIDMethodByAttributeModifiers, InboundIDMethodByByUnion, InboundIDMethodByData, InboundIDMethodByIntersect, InboundIDMethodByRelatedTempID, InboundIDMethodByTemporaryCIID]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("InboundIDMethodByAttribute", "InboundIDMethodByAttributeModifiers", "InboundIDMethodByByUnion", "InboundIDMethodByData", "InboundIDMethodByIntersect", "InboundIDMethodByRelatedTempID", "InboundIDMethodByTemporaryCIID")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([InboundIDMethodByAttribute, InboundIDMethodByAttributeModifiers, InboundIDMethodByByUnion, InboundIDMethodByData, InboundIDMethodByIntersect, InboundIDMethodByRelatedTempID, InboundIDMethodByTemporaryCIID]). JSON Payload: $($Json)"
        }
    }
}

