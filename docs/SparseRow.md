# SparseRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ciid** | **String** |  | [optional] 
**Cells** | [**ChangeDataCell[]**](ChangeDataCell.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SparseRow = Initialize-okclientSparseRow  -Ciid null `
 -Cells null
```

- Convert the resource to JSON
```powershell
$SparseRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

