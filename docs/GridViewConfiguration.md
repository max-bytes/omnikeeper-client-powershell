# GridViewConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ShowCIIDColumn** | **Boolean** |  | [optional] 
**WriteLayer** | **String** |  | [optional] 
**ReadLayerset** | **String[]** |  | [optional] 
**Columns** | [**GridViewColumn[]**](GridViewColumn.md) |  | [optional] 
**Trait** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GridViewConfiguration = Initialize-okclientGridViewConfiguration  -ShowCIIDColumn null `
 -WriteLayer null `
 -ReadLayerset null `
 -Columns null `
 -Trait null
```

- Convert the resource to JSON
```powershell
$GridViewConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

