# IAttributeValue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**AttributeValueType**](AttributeValueType.md) |  | [optional] 
**IsArray** | **Boolean** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IAttributeValue = Initialize-okclientIAttributeValue  -Type null `
 -IsArray null
```

- Convert the resource to JSON
```powershell
$IAttributeValue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

