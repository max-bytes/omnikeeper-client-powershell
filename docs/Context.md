# Context
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**ExtractConfig** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**TransformConfig** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**LoadConfig** | [**ILoadConfig**](ILoadConfig.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Context = Initialize-okclientContext  -Id null `
 -ExtractConfig null `
 -TransformConfig null `
 -LoadConfig null
```

- Convert the resource to JSON
```powershell
$Context | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

