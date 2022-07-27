# GridViewColumn
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourceAttributeName** | **String** |  | [optional] 
**SourceAttributePath** | **String[]** |  | [optional] 
**ColumnDescription** | **String** |  | [optional] 
**ValueType** | [**AttributeValueType**](AttributeValueType.md) |  | [optional] 
**WriteLayer** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GridViewColumn = Initialize-okclientGridViewColumn  -SourceAttributeName null `
 -SourceAttributePath null `
 -ColumnDescription null `
 -ValueType null `
 -WriteLayer null
```

- Convert the resource to JSON
```powershell
$GridViewColumn | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

