# InboundIDMethodByAttribute
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | [optional] [readonly] 
**Attribute** | [**GenericInboundAttribute**](GenericInboundAttribute.md) |  | [optional] 
**Modifiers** | [**InboundIDMethodByAttributeModifiers**](InboundIDMethodByAttributeModifiers.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboundIDMethodByAttribute = Initialize-okclientInboundIDMethodByAttribute  -Type null `
 -Attribute null `
 -Modifiers null
```

- Convert the resource to JSON
```powershell
$InboundIDMethodByAttribute | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

