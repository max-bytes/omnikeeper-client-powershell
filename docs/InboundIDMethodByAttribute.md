# InboundIDMethodByAttribute
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attribute** | [**GenericInboundAttribute**](GenericInboundAttribute.md) |  | [optional] 
**Modifiers** | [**InboundIDMethodByAttributeModifiers**](InboundIDMethodByAttributeModifiers.md) |  | [optional] 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$InboundIDMethodByAttribute = Initialize-okclientInboundIDMethodByAttribute  -Attribute null `
 -Modifiers null `
 -Type null
```

- Convert the resource to JSON
```powershell
$InboundIDMethodByAttribute | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

