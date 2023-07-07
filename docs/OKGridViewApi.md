# okclient.okclient/Api.OKGridViewApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OKGridViewAddContext**](OKGridViewApi.md#Invoke-OKGridViewAddContext) | **POST** /api/v{version}/GridView/context | Adds new context
[**Invoke-OKGridViewChangeData**](OKGridViewApi.md#Invoke-OKGridViewChangeData) | **POST** /api/v{version}/GridView/contexts/{context}/change | Saves grid view row changes and returns change results
[**Invoke-OKGridViewDeleteContext**](OKGridViewApi.md#Invoke-OKGridViewDeleteContext) | **DELETE** /api/v{version}/GridView/context/{name} | Deletes specific context
[**Invoke-OKGridViewEditContext**](OKGridViewApi.md#Invoke-OKGridViewEditContext) | **PUT** /api/v{version}/GridView/context/{name} | Edits specific context
[**Invoke-OKGridViewGetData**](OKGridViewApi.md#Invoke-OKGridViewGetData) | **GET** /api/v{version}/GridView/contexts/{context}/data | Returns grid view data for specific context
[**Invoke-OKGridViewGetGridViewContext**](OKGridViewApi.md#Invoke-OKGridViewGetGridViewContext) | **GET** /api/v{version}/GridView/context/{name} | Returns a single context in full
[**Invoke-OKGridViewGetGridViewContexts**](OKGridViewApi.md#Invoke-OKGridViewGetGridViewContexts) | **GET** /api/v{version}/GridView/contexts | Returns a list of contexts for grid view.
[**Invoke-OKGridViewGetSchema**](OKGridViewApi.md#Invoke-OKGridViewGetSchema) | **GET** /api/v{version}/GridView/contexts/{context}/schema | Returns grid view schema for specific context


<a id="Invoke-OKGridViewAddContext"></a>
# **Invoke-OKGridViewAddContext**
> void Invoke-OKGridViewAddContext<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AddContextRequest] <PSCustomObject><br>

Adds new context

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Version = "MyVersion" # String | 
$GridViewColumn = Initialize-GridViewColumn -SourceAttributeName "MySourceAttributeName" -SourceAttributePath "MySourceAttributePath" -ColumnDescription "MyColumnDescription" -ValueType "Text" -WriteLayer "MyWriteLayer"
$GridViewConfiguration = Initialize-GridViewConfiguration -ShowCIIDColumn $false -WriteLayer "MyWriteLayer" -ReadLayerset "MyReadLayerset" -Columns $GridViewColumn -Trait "MyTrait"

$AddContextRequest = Initialize-AddContextRequest -Id "MyId" -SpeakingName "MySpeakingName" -Description "MyDescription" -Configuration $GridViewConfiguration # AddContextRequest |  (optional)

# Adds new context
try {
    $Result = Invoke-OKGridViewAddContext -Version $Version -AddContextRequest $AddContextRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKGridViewAddContext: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Version** | **String**|  | 
 **AddContextRequest** | [**AddContextRequest**](AddContextRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/xml, text/plain, text/json, application/*+json
 - **Accept**: application/json, application/xml, application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, text/plain, application/octet-stream, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OKGridViewChangeData"></a>
# **Invoke-OKGridViewChangeData**
> void Invoke-OKGridViewChangeData<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Context] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChangeDataRequest] <PSCustomObject><br>

Saves grid view row changes and returns change results

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
$AttributeValueDTO = Initialize-AttributeValueDTO -Type "Text" -IsArray $false -Values "MyValues"
$ChangeDataCell = Initialize-ChangeDataCell -Id "MyId" -Value $AttributeValueDTO -Changeable $false

$SparseRow = Initialize-SparseRow -Ciid "MyCiid" -Cells $ChangeDataCell

$ChangeDataRequest = Initialize-ChangeDataRequest -SparseRows $SparseRow # ChangeDataRequest |  (optional)

# Saves grid view row changes and returns change results
try {
    $Result = Invoke-OKGridViewChangeData -Context $Context -Version $Version -ChangeDataRequest $ChangeDataRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKGridViewChangeData: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Context** | **String**|  | 
 **Version** | **String**|  | 
 **ChangeDataRequest** | [**ChangeDataRequest**](ChangeDataRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/xml, text/plain, text/json, application/*+json
 - **Accept**: application/json, application/xml, application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, text/plain, application/octet-stream, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OKGridViewDeleteContext"></a>
# **Invoke-OKGridViewDeleteContext**
> void Invoke-OKGridViewDeleteContext<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>

Deletes specific context

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Name = "MyName" # String | 
$Version = "MyVersion" # String | 

# Deletes specific context
try {
    $Result = Invoke-OKGridViewDeleteContext -Name $Name -Version $Version
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKGridViewDeleteContext: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**|  | 
 **Version** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, text/plain, application/octet-stream, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OKGridViewEditContext"></a>
# **Invoke-OKGridViewEditContext**
> void Invoke-OKGridViewEditContext<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EditContextRequest] <PSCustomObject><br>

Edits specific context

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Name = "MyName" # String | 
$Version = "MyVersion" # String | 
$GridViewColumn = Initialize-GridViewColumn -SourceAttributeName "MySourceAttributeName" -SourceAttributePath "MySourceAttributePath" -ColumnDescription "MyColumnDescription" -ValueType "Text" -WriteLayer "MyWriteLayer"
$GridViewConfiguration = Initialize-GridViewConfiguration -ShowCIIDColumn $false -WriteLayer "MyWriteLayer" -ReadLayerset "MyReadLayerset" -Columns $GridViewColumn -Trait "MyTrait"

$EditContextRequest = Initialize-EditContextRequest -SpeakingName "MySpeakingName" -Description "MyDescription" -Configuration $GridViewConfiguration # EditContextRequest |  (optional)

# Edits specific context
try {
    $Result = Invoke-OKGridViewEditContext -Name $Name -Version $Version -EditContextRequest $EditContextRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKGridViewEditContext: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**|  | 
 **Version** | **String**|  | 
 **EditContextRequest** | [**EditContextRequest**](EditContextRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/xml, text/plain, text/json, application/*+json
 - **Accept**: application/json, application/xml, application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, text/plain, application/octet-stream, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OKGridViewGetData"></a>
# **Invoke-OKGridViewGetData**
> void Invoke-OKGridViewGetData<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Context] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>

Returns grid view data for specific context

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

# Returns grid view data for specific context
try {
    $Result = Invoke-OKGridViewGetData -Context $Context -Version $Version
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKGridViewGetData: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Context** | **String**|  | 
 **Version** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OKGridViewGetGridViewContext"></a>
# **Invoke-OKGridViewGetGridViewContext**
> void Invoke-OKGridViewGetGridViewContext<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>

Returns a single context in full

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Name = "MyName" # String | 
$Version = "MyVersion" # String | 

# Returns a single context in full
try {
    $Result = Invoke-OKGridViewGetGridViewContext -Name $Name -Version $Version
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKGridViewGetGridViewContext: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**|  | 
 **Version** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OKGridViewGetGridViewContexts"></a>
# **Invoke-OKGridViewGetGridViewContexts**
> void Invoke-OKGridViewGetGridViewContexts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>

Returns a list of contexts for grid view.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Version = "MyVersion" # String | 

# Returns a list of contexts for grid view.
try {
    $Result = Invoke-OKGridViewGetGridViewContexts -Version $Version
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKGridViewGetGridViewContexts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Version** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OKGridViewGetSchema"></a>
# **Invoke-OKGridViewGetSchema**
> void Invoke-OKGridViewGetSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Context] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>

Returns grid view schema for specific context

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

# Returns grid view schema for specific context
try {
    $Result = Invoke-OKGridViewGetSchema -Context $Context -Version $Version
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKGridViewGetSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Context** | **String**|  | 
 **Version** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

