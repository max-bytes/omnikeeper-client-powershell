# okclient.okclient\Api.OKImportExportLayerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Import-OKExportLayerExportLayer**](OKImportExportLayerApi.md#Import-OKExportLayerExportLayer) | **GET** /api/v{version}/ImportExportLayer/exportLayer | 
[**Import-OKExportLayerImportLayer**](OKImportExportLayerApi.md#Import-OKExportLayerImportLayer) | **POST** /api/v{version}/ImportExportLayer/importLayer | 


<a id="Import-OKExportLayerExportLayer"></a>
# **Import-OKExportLayerExportLayer**
> void Import-OKExportLayerExportLayer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Ciids] <String[]><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$LayerID = "MyLayerID" # String | 
$Version = "MyVersion" # String | 
$Ciids = "MyCiids" # String[] |  (optional)

try {
    $Result = Import-OKExportLayerExportLayer -LayerID $LayerID -Version $Version -Ciids $Ciids
} catch {
    Write-Host ("Exception occurred when calling Import-OKExportLayerExportLayer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LayerID** | **String**|  | 
 **Version** | **String**|  | 
 **Ciids** | [**String[]**](String.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Import-OKExportLayerImportLayer"></a>
# **Import-OKExportLayerImportLayer**
> void Import-OKExportLayerImportLayer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Files] <System.IO.FileInfo[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OverwriteLayerID] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Version = "MyVersion" # String | 
$Files =  # System.IO.FileInfo[] | 
$OverwriteLayerID = "MyOverwriteLayerID" # String |  (optional)

try {
    $Result = Import-OKExportLayerImportLayer -Version $Version -Files $Files -OverwriteLayerID $OverwriteLayerID
} catch {
    Write-Host ("Exception occurred when calling Import-OKExportLayerImportLayer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Version** | **String**|  | 
 **Files** | **System.IO.FileInfo[]**|  | 
 **OverwriteLayerID** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

