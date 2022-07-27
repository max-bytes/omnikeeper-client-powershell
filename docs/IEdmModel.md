# IEdmModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SchemaElements** | [**IEdmSchemaElement[]**](IEdmSchemaElement.md) |  | [optional] [readonly] 
**VocabularyAnnotations** | [**IEdmVocabularyAnnotation[]**](IEdmVocabularyAnnotation.md) |  | [optional] [readonly] 
**ReferencedModels** | [**IEdmModel[]**](IEdmModel.md) |  | [optional] [readonly] 
**DeclaredNamespaces** | **String[]** |  | [optional] [readonly] 
**DirectValueAnnotationsManager** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**EntityContainer** | [**IEdmEntityContainer**](IEdmEntityContainer.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IEdmModel = Initialize-okclientIEdmModel  -SchemaElements null `
 -VocabularyAnnotations null `
 -ReferencedModels null `
 -DeclaredNamespaces null `
 -DirectValueAnnotationsManager null `
 -EntityContainer null
```

- Convert the resource to JSON
```powershell
$IEdmModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

