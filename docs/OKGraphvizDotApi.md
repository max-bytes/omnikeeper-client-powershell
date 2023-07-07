# okclient.okclient/Api.OKGraphvizDotApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OKGraphvizDotLayerCentric**](OKGraphvizDotApi.md#Invoke-OKGraphvizDotLayerCentric) | **GET** /api/v{version}/GraphvizDot/layerCentric | 
[**Invoke-OKGraphvizDotTraitCentric**](OKGraphvizDotApi.md#Invoke-OKGraphvizDotTraitCentric) | **GET** /api/v{version}/GraphvizDot/traitCentric | 


<a id="Invoke-OKGraphvizDotLayerCentric"></a>
# **Invoke-OKGraphvizDotLayerCentric**
> void Invoke-OKGraphvizDotLayerCentric<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerIDs] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <System.DateTime><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-To] <System.DateTime><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$LayerIDs = "MyLayerIDs" # String[] | 
$From = (Get-Date) # System.DateTime | 
$To = (Get-Date) # System.DateTime | 
$Version = "MyVersion" # String | 

try {
    $Result = Invoke-OKGraphvizDotLayerCentric -LayerIDs $LayerIDs -From $From -To $To -Version $Version
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKGraphvizDotLayerCentric: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LayerIDs** | [**String[]**](String.md)|  | 
 **From** | **System.DateTime**|  | 
 **To** | **System.DateTime**|  | 
 **Version** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OKGraphvizDotTraitCentric"></a>
# **Invoke-OKGraphvizDotTraitCentric**
> void Invoke-OKGraphvizDotTraitCentric<br>
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
    $Result = Invoke-OKGraphvizDotTraitCentric -LayerIDs $LayerIDs -Version $Version -TraitIDs $TraitIDs -TraitIDsRegex $TraitIDsRegex
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKGraphvizDotTraitCentric: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

