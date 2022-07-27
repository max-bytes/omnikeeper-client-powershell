# IEdmVocabularyAnnotation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Qualifier** | **String** |  | [optional] [readonly] 
**Term** | [**IEdmTerm**](IEdmTerm.md) |  | [optional] 
**Target** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Value** | [**IEdmExpression**](IEdmExpression.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IEdmVocabularyAnnotation = Initialize-okclientIEdmVocabularyAnnotation  -Qualifier null `
 -Term null `
 -Target null `
 -Value null
```

- Convert the resource to JSON
```powershell
$IEdmVocabularyAnnotation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

