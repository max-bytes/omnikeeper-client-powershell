# ILoadConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SearchLayerIDs** | **Int64[]** |  | [optional] [readonly] 
**WriteLayerID** | **Int64** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ILoadConfig = Initialize-okclientILoadConfig  -SearchLayerIDs null `
 -WriteLayerID null
```

- Convert the resource to JSON
```powershell
$ILoadConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

