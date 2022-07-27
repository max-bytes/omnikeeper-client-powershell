# InboundIDMethodByByUnionInnerInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | [optional] [readonly] 
**Attributes** | **String[]** |  | [optional] 
**CaseInsensitive** | **Boolean** |  | [optional] 
**Attribute** | [**GenericInboundAttribute**](GenericInboundAttribute.md) |  | [optional] 
**Modifiers** | [**InboundIDMethodByAttributeModifiers**](InboundIDMethodByAttributeModifiers.md) |  | [optional] 
**TempID** | **String** |  | [optional] 
**OutgoingRelation** | **Boolean** |  | [optional] 
**PredicateID** | **String** |  | [optional] 
**Inner** | [**InboundIDMethodByByUnionInnerInner[]**](InboundIDMethodByByUnionInnerInner.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboundIDMethodByByUnionInnerInner = Initialize-okclientInboundIDMethodByByUnionInnerInner  -Type null `
 -Attributes null `
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
$InboundIDMethodByByUnionInnerInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

