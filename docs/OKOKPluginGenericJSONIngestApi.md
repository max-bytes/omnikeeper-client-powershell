# okclient.okclient/Api.OKOKPluginGenericJSONIngestApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-OKAllContexts**](OKOKPluginGenericJSONIngestApi.md#Get-OKAllContexts) | **GET** /api/v{version}/ingest/genericJSON/manage/context | 
[**Get-OKContext**](OKOKPluginGenericJSONIngestApi.md#Get-OKContext) | **GET** /api/v{version}/ingest/genericJSON/manage/context/{id} | 
[**ConvertTo-OKgest**](OKOKPluginGenericJSONIngestApi.md#ConvertTo-OKgest) | **POST** /api/v{version}/ingest/genericJSON/files | 
[**Remove-OKContext**](OKOKPluginGenericJSONIngestApi.md#Remove-OKContext) | **DELETE** /api/v{version}/ingest/genericJSON/manage/context/{id} | 
[**Invoke-OKUpsertContext**](OKOKPluginGenericJSONIngestApi.md#Invoke-OKUpsertContext) | **POST** /api/v{version}/ingest/genericJSON/manage/context | 


<a name="Get-OKAllContexts"></a>
# **Get-OKAllContexts**
> Context[] Get-OKAllContexts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Version = "MyVersion" # String | 

try {
    $Result = Get-OKAllContexts -Version $Version
} catch {
    Write-Host ("Exception occurred when calling Get-OKAllContexts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Version** | **String**|  | 

### Return type

[**Context[]**](Context.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-OKContext"></a>
# **Get-OKContext**
> Context Get-OKContext<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "MyId" # String | 
$Version = "MyVersion" # String | 

try {
    $Result = Get-OKContext -Id $Id -Version $Version
} catch {
    Write-Host ("Exception occurred when calling Get-OKContext: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 
 **Version** | **String**|  | 

### Return type

[**Context**](Context.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="ConvertTo-OKgest"></a>
# **ConvertTo-OKgest**
> void ConvertTo-OKgest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Context] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Files] <System.IO.FileInfo[]><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Context = "MyContext" # String | 
$Version = "MyVersion" # String | 
$Files =  # System.IO.FileInfo[] | 

try {
    $Result = ConvertTo-OKgest -Context $Context -Version $Version -Files $Files
} catch {
    Write-Host ("Exception occurred when calling ConvertTo-OKgest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Context** | **String**|  | 
 **Version** | **String**|  | 
 **Files** | **System.IO.FileInfo[]**|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-OKContext"></a>
# **Remove-OKContext**
> Context Remove-OKContext<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "MyId" # String | 
$Version = "MyVersion" # String | 

try {
    $Result = Remove-OKContext -Id $Id -Version $Version
} catch {
    Write-Host ("Exception occurred when calling Remove-OKContext: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 
 **Version** | **String**|  | 

### Return type

[**Context**](Context.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-OKUpsertContext"></a>
# **Invoke-OKUpsertContext**
> Context Invoke-OKUpsertContext<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Context] <PSCustomObject><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Version = "MyVersion" # String | 
$ILoadConfig = Initialize-ILoadConfig -SearchLayerIDs "MySearchLayerIDs" -WriteLayerID "MyWriteLayerID"
$Context = Initialize-Context -Id "MyId" -ExtractConfig  -TransformConfig  -LoadConfig $ILoadConfig # Context | 

try {
    $Result = Invoke-OKUpsertContext -Version $Version -Context $Context
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKUpsertContext: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Version** | **String**|  | 
 **Context** | [**Context**](Context.md)|  | 

### Return type

[**Context**](Context.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, application/json-patch+json, text/json, application/*+json
 - **Accept**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

