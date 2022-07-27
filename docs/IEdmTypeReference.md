# IEdmTypeReference
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsNullable** | **Boolean** |  | [optional] [readonly] 
**Definition** | [**IEdmType**](IEdmType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IEdmTypeReference = Initialize-okclientIEdmTypeReference  -IsNullable null `
 -Definition null
```

- Convert the resource to JSON
```powershell
$IEdmTypeReference | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

