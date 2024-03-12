# GenericInboundCIIdMethod
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | **String[]** |  | [optional] 
**Type** | **String** |  | 
**CaseInsensitive** | **Boolean** |  | [optional] 
**Attribute** | [**GenericInboundAttribute**](GenericInboundAttribute.md) |  | [optional] 
**Modifiers** | [**InboundIDMethodByAttributeModifiers**](InboundIDMethodByAttributeModifiers.md) |  | [optional] 
**TempID** | **String** |  | [optional] 
**OutgoingRelation** | **Boolean** |  | [optional] 
**PredicateID** | **String** |  | [optional] 
**Inner** | [**OneOfInboundIDMethodByDataInboundIDMethodByAttributeModifiersInboundIDMethodByAttributeInboundIDMethodByRelatedTempIDInboundIDMethodByTemporaryCIIDInboundIDMethodByByUnionInboundIDMethodByIntersect[]**](OneOfInboundIDMethodByDataInboundIDMethodByAttributeModifiersInboundIDMethodByAttributeInboundIDMethodByRelatedTempIDInboundIDMethodByTemporaryCIIDInboundIDMethodByByUnionInboundIDMethodByIntersect.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GenericInboundCIIdMethod = Initialize-okclientGenericInboundCIIdMethod  -Attributes null `
 -Type null `
 -CaseInsensitive null `
 -Attribute null `
 -Modifiers null `
 -TempID null `
 -OutgoingRelation null `
 -PredicateID null `
 -Inner null
```

- Convert the resource to JSON
```powershell
$GenericInboundCIIdMethod | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

