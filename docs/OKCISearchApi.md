# okclient.okclient/Api.OKCISearchApi

All URIs are relative to *https://localhost:44378*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Search-OKCIsByTraits**](OKCISearchApi.md#Search-OKCIsByTraits) | **GET** /api/v{version}/CISearch/searchCIsByTraits | 


<a name="Search-OKCIsByTraits"></a>
# **Search-OKCIsByTraits**
> CIDTO[] Search-OKCIsByTraits<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerIDs] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WithTraits] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WithoutTraits] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AtTime] <System.Nullable[System.DateTime]><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$LayerIDs = @(123) # Int64[] | 
$WithTraits = @("Inner_example") # String[] | 
$WithoutTraits = @("Inner_example") # String[] | 
$Version = "Version_example" # String | 
$AtTime = Get-Date # System.DateTime |  (optional)

try {
     $Result = Search-OKCIsByTraits -LayerIDs $LayerIDs -WithTraits $WithTraits -WithoutTraits $WithoutTraits -Version $Version -AtTime $AtTime
} catch {
    Write-Host ("Exception occured when calling Search-OKCIsByTraits: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LayerIDs** | [**Int64[]**](Int64.md)|  | 
 **WithTraits** | [**String[]**](String.md)|  | 
 **WithoutTraits** | [**String[]**](String.md)|  | 
 **Version** | **String**|  | 
 **AtTime** | **System.DateTime**|  | [optional] 

### Return type

[**CIDTO[]**](CIDTO.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

