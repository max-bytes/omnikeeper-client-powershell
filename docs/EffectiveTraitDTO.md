# EffectiveTraitDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TraitAttributes** | [**System.Collections.Hashtable**](CIAttributeDTO.md) |  | 
**TraitRelations** | [**System.Collections.Hashtable**](Array.md) |  | 

## Examples

- Prepare the resource
```powershell
$EffectiveTraitDTO = Initialize-okclientEffectiveTraitDTO  -TraitAttributes null `
 -TraitRelations null
```

- Convert the resource to JSON
```powershell
$EffectiveTraitDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

