# LayerDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Description** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$LayerDTO = Initialize-okclientLayerDTO  -Id null `
 -Description null
```

- Convert the resource to JSON
```powershell
$LayerDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

