# FragmentDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**Value** | [**AttributeValueDTO**](AttributeValueDTO.md) |  | 
**Ciid** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$FragmentDTO = Initialize-okclientFragmentDTO  -Name null `
 -Value null `
 -Ciid null
```

- Convert the resource to JSON
```powershell
$FragmentDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

