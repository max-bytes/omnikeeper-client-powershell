# ChangeDataCell
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Value** | [**AttributeValueDTO**](AttributeValueDTO.md) |  | [optional] 
**Changeable** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ChangeDataCell = Initialize-okclientChangeDataCell  -Name null `
 -Value null `
 -Changeable null
```

- Convert the resource to JSON
```powershell
$ChangeDataCell | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

