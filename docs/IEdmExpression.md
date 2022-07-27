# IEdmExpression
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExpressionKind** | [**EdmExpressionKind**](EdmExpressionKind.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IEdmExpression = Initialize-okclientIEdmExpression  -ExpressionKind null
```

- Convert the resource to JSON
```powershell
$IEdmExpression | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

