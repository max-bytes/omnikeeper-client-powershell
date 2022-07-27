# AttributeValueDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**AttributeValueType**](AttributeValueType.md) |  | [optional] 
**IsArray** | **Boolean** |  | [optional] 
**Values** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AttributeValueDTO = Initialize-okclientAttributeValueDTO  -Type null `
 -IsArray null `
 -Values null
```

- Convert the resource to JSON
```powershell
$AttributeValueDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

