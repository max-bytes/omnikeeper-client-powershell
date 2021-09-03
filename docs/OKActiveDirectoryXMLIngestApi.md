# okclient.okclient/Api.OKActiveDirectoryXMLIngestApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ConvertTo-OKgestXML**](OKActiveDirectoryXMLIngestApi.md#ConvertTo-OKgestXML) | **POST** /api/v{version}/Ingest/AD-XML | 


<a name="ConvertTo-OKgestXML"></a>
# **ConvertTo-OKgestXML**
> void ConvertTo-OKgestXML<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WriteLayerID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchLayerIDs] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Files] <System.IO.FileInfo[]><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Version = "MyVersion" # String | 
$WriteLayerID = "MyWriteLayerID" # String | 
$SearchLayerIDs = "MySearchLayerIDs" # String[] | 
$Files =  # System.IO.FileInfo[] | 

try {
    $Result = ConvertTo-OKgestXML -Version $Version -WriteLayerID $WriteLayerID -SearchLayerIDs $SearchLayerIDs -Files $Files
} catch {
    Write-Host ("Exception occurred when calling ConvertTo-OKgestXML: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Version** | **String**|  | 
 **WriteLayerID** | **String**|  | 
 **SearchLayerIDs** | [**String[]**](String.md)|  | 
 **Files** | **System.IO.FileInfo[]**|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

