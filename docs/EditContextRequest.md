# EditContextRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SpeakingName** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Configuration** | [**GridViewConfiguration**](GridViewConfiguration.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EditContextRequest = Initialize-okclientEditContextRequest  -SpeakingName null `
 -Description null `
 -Configuration null
```

- Convert the resource to JSON
```powershell
$EditContextRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

