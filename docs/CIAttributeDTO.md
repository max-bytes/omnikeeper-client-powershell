# CIAttributeDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Name** | **String** |  | 
**Value** | [**AttributeValueDTO**](AttributeValueDTO.md) |  | 
**Ciid** | **String** |  | 
**State** | [**AttributeState**](AttributeState.md) |  | 

## Examples

- Prepare the resource
```powershell
$CIAttributeDTO = Initialize-okclientCIAttributeDTO  -Id null `
 -Name null `
 -Value null `
 -Ciid null `
 -State null
```

- Convert the resource to JSON
```powershell
$CIAttributeDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

