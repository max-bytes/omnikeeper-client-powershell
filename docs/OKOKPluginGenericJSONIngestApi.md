# okclient.okclient/Api.OKOKPluginGenericJSONIngestApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OKManageContextGetAllContexts**](OKOKPluginGenericJSONIngestApi.md#Invoke-OKManageContextGetAllContexts) | **GET** /api/v{version}/ingest/genericJSON/manage/context | 
[**Invoke-OKManageContextGetContext**](OKOKPluginGenericJSONIngestApi.md#Invoke-OKManageContextGetContext) | **GET** /api/v{version}/ingest/genericJSON/manage/context/{id} | 
[**Invoke-OKManageContextRemoveContext**](OKOKPluginGenericJSONIngestApi.md#Invoke-OKManageContextRemoveContext) | **DELETE** /api/v{version}/ingest/genericJSON/manage/context/{id} | 
[**Invoke-OKManageContextUpsertContext**](OKOKPluginGenericJSONIngestApi.md#Invoke-OKManageContextUpsertContext) | **POST** /api/v{version}/ingest/genericJSON/manage/context | 
[**Invoke-OKPassiveDataIngest**](OKOKPluginGenericJSONIngestApi.md#Invoke-OKPassiveDataIngest) | **POST** /api/v{version}/ingest/genericJSON/data | 
[**Invoke-OKPassiveFilesIngest**](OKOKPluginGenericJSONIngestApi.md#Invoke-OKPassiveFilesIngest) | **POST** /api/v{version}/ingest/genericJSON/files | 


<a name="Invoke-OKManageContextGetAllContexts"></a>
# **Invoke-OKManageContextGetAllContexts**
> SystemCollectionsHashtable[] Invoke-OKManageContextGetAllContexts<br>
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
    $Result = Invoke-OKManageContextGetAllContexts -Version $Version
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKManageContextGetAllContexts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Version** | **String**|  | 

### Return type

[**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, text/plain, application/octet-stream, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-OKManageContextGetContext"></a>
# **Invoke-OKManageContextGetContext**
> SystemCollectionsHashtable Invoke-OKManageContextGetContext<br>
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
    $Result = Invoke-OKManageContextGetContext -Id $Id -Version $Version
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKManageContextGetContext: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 
 **Version** | **String**|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, text/plain, application/octet-stream, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-OKManageContextRemoveContext"></a>
# **Invoke-OKManageContextRemoveContext**
> Boolean Invoke-OKManageContextRemoveContext<br>
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
    $Result = Invoke-OKManageContextRemoveContext -Id $Id -Version $Version
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKManageContextRemoveContext: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 
 **Version** | **String**|  | 

### Return type

**Boolean**

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, text/plain, application/octet-stream, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-OKManageContextUpsertContext"></a>
# **Invoke-OKManageContextUpsertContext**
> SystemCollectionsHashtable Invoke-OKManageContextUpsertContext<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <SystemCollectionsHashtable><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Version = "MyVersion" # String | 
$Body = @{ key_example = ... } # SystemCollectionsHashtable | 

try {
    $Result = Invoke-OKManageContextUpsertContext -Version $Version -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKManageContextUpsertContext: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Version** | **String**|  | 
 **Body** | **SystemCollectionsHashtable**|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/xml, text/plain, text/json, application/*+json
 - **Accept**: application/json, application/xml, application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, text/plain, application/octet-stream, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-OKPassiveDataIngest"></a>
# **Invoke-OKPassiveDataIngest**
> void Invoke-OKPassiveDataIngest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReadLayerIDs] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WriteLayerID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GenericInboundData] <PSCustomObject><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ReadLayerIDs = "MyReadLayerIDs" # String[] | 
$WriteLayerID = "MyWriteLayerID" # String | 
$Version = "MyVersion" # String | 
$AttributeValueDTO = Initialize-AttributeValueDTO -Type "Text" -IsArray $false -Values "MyValues"
$GenericInboundAttribute = Initialize-GenericInboundAttribute -Name "MyName" -Value $AttributeValueDTO

$InboundIDMethodByAttributeModifiers = Initialize-InboundIDMethodByAttributeModifiers -CaseInsensitive $false

$InboundIDMethodByByUnionInnerInner = Initialize-InboundIDMethodByByUnionInnerInner -Type "MyType" -Attributes "MyAttributes" -CaseInsensitive $false -Attribute $GenericInboundAttribute -Modifiers $InboundIDMethodByAttributeModifiers -TempID "MyTempID" -OutgoingRelation $false -PredicateID "MyPredicateID" -Inner $InboundIDMethodByByUnionInnerInner

$GenericInboundCIIdMethod = Initialize-GenericInboundCIIdMethod -Type "MyType" -Attributes "MyAttributes" -CaseInsensitive $false -Attribute $GenericInboundAttribute -Modifiers $InboundIDMethodByAttributeModifiers -TempID "MyTempID" -OutgoingRelation $false -PredicateID "MyPredicateID" -Inner $InboundIDMethodByByUnionInnerInner

$GenericInboundCI = Initialize-GenericInboundCI -TempID "MyTempID" -IdMethod $GenericInboundCIIdMethod -SameTempIDHandling "DropAndWarn" -SameTargetCIHandling "Error" -NoFoundTargetCIHandling "CreateNew" -Attributes $GenericInboundAttribute

$GenericInboundRelation = Initialize-GenericInboundRelation -VarFrom "MyVarFrom" -Predicate "MyPredicate" -To "MyTo"
$GenericInboundData = Initialize-GenericInboundData -Cis $GenericInboundCI -Relations $GenericInboundRelation # GenericInboundData | 

try {
    $Result = Invoke-OKPassiveDataIngest -ReadLayerIDs $ReadLayerIDs -WriteLayerID $WriteLayerID -Version $Version -GenericInboundData $GenericInboundData
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKPassiveDataIngest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ReadLayerIDs** | [**String[]**](String.md)|  | 
 **WriteLayerID** | **String**|  | 
 **Version** | **String**|  | 
 **GenericInboundData** | [**GenericInboundData**](GenericInboundData.md)|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/xml, text/plain, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-OKPassiveFilesIngest"></a>
# **Invoke-OKPassiveFilesIngest**
> void Invoke-OKPassiveFilesIngest<br>
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
    $Result = Invoke-OKPassiveFilesIngest -Context $Context -Version $Version -Files $Files
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKPassiveFilesIngest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

