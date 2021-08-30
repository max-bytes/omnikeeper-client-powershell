# BulkCIAttributeLayerScopeDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NamePrefix** | **String** |  | 
**LayerID** | **String** |  | 
**Fragments** | [**FragmentDTO[]**](FragmentDTO.md) |  | 

## Examples

- Prepare the resource
```powershell
$BulkCIAttributeLayerScopeDTO = Initialize-okclientBulkCIAttributeLayerScopeDTO  -NamePrefix null `
 -LayerID null `
 -Fragments null
```

- Convert the resource to JSON
```powershell
$BulkCIAttributeLayerScopeDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

