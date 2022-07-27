# okclient.okclient/Api.OKCytoscapeApi

All URIs are relative to *https://localhost:44378*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OKCytoscapeTraitCentric**](OKCytoscapeApi.md#Invoke-OKCytoscapeTraitCentric) | **GET** /api/v{version}/Cytoscape/traitCentric | 


<a name="Invoke-OKCytoscapeTraitCentric"></a>
# **Invoke-OKCytoscapeTraitCentric**
> void Invoke-OKCytoscapeTraitCentric<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerIDs] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TraitIDs] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TraitIDsRegex] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$LayerIDs = "MyLayerIDs" # String[] | 
$Version = "MyVersion" # String | 
$TraitIDs = "MyTraitIDs" # String[] |  (optional)
$TraitIDsRegex = "MyTraitIDsRegex" # String |  (optional)

try {
    $Result = Invoke-OKCytoscapeTraitCentric -LayerIDs $LayerIDs -Version $Version -TraitIDs $TraitIDs -TraitIDsRegex $TraitIDsRegex
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKCytoscapeTraitCentric: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LayerIDs** | [**String[]**](String.md)|  | 
 **Version** | **String**|  | 
 **TraitIDs** | [**String[]**](String.md)|  | [optional] 
 **TraitIDsRegex** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

