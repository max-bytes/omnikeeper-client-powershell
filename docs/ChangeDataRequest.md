# ChangeDataRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SparseRows** | [**SparseRow[]**](SparseRow.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ChangeDataRequest = Initialize-okclientChangeDataRequest  -SparseRows null
```

- Convert the resource to JSON
```powershell
$ChangeDataRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

