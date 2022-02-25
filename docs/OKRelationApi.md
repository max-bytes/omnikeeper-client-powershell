# okclient.okclient/Api.OKRelationApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-OKAllMergedRelations**](OKRelationApi.md#Get-OKAllMergedRelations) | **GET** /api/v{version}/Relation/getAllMergedRelations | 
[**Get-OKMergedRelation**](OKRelationApi.md#Get-OKMergedRelation) | **GET** /api/v{version}/Relation/getMergedRelation | 
[**Get-OKMergedRelationsFromOrToCI**](OKRelationApi.md#Get-OKMergedRelationsFromOrToCI) | **GET** /api/v{version}/Relation/getMergedRelationsFromOrToCI | 
[**Get-OKMergedRelationsOutgoingFromCI**](OKRelationApi.md#Get-OKMergedRelationsOutgoingFromCI) | **GET** /api/v{version}/Relation/getMergedRelationsOutgoingFromCI | 
[**Get-OKMergedRelationsWithPredicate**](OKRelationApi.md#Get-OKMergedRelationsWithPredicate) | **GET** /api/v{version}/Relation/getMergedRelationsWithPredicate | 


<a name="Get-OKAllMergedRelations"></a>
# **Get-OKAllMergedRelations**
> RelationDTO[] Get-OKAllMergedRelations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerIDs] <String[]><br>
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

$LayerIDs = "MyLayerIDs" # String[] | 
$Version = "MyVersion" # String | 
$AtTime = (Get-Date) # System.DateTime |  (optional)

# 
try {
    $Result = Get-OKAllMergedRelations -LayerIDs $LayerIDs -Version $Version -AtTime $AtTime
} catch {
    Write-Host ("Exception occurred when calling Get-OKAllMergedRelations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LayerIDs** | [**String[]**](String.md)|  | 
 **Version** | **String**|  | 
 **AtTime** | **System.DateTime**|  | [optional] 

### Return type

[**RelationDTO[]**](RelationDTO.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-OKMergedRelation"></a>
# **Get-OKMergedRelation**
> RelationDTO Get-OKMergedRelation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FromCIID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ToCIID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PredicateID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerIDs] <String[]><br>
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

$FromCIID = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | 
$ToCIID = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | 
$PredicateID = "MyPredicateID" # String | 
$LayerIDs = "MyLayerIDs" # String[] | 
$Version = "MyVersion" # String | 
$AtTime = (Get-Date) # System.DateTime |  (optional)

# 
try {
    $Result = Get-OKMergedRelation -FromCIID $FromCIID -ToCIID $ToCIID -PredicateID $PredicateID -LayerIDs $LayerIDs -Version $Version -AtTime $AtTime
} catch {
    Write-Host ("Exception occurred when calling Get-OKMergedRelation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FromCIID** | **String**|  | 
 **ToCIID** | **String**|  | 
 **PredicateID** | **String**|  | 
 **LayerIDs** | [**String[]**](String.md)|  | 
 **Version** | **String**|  | 
 **AtTime** | **System.DateTime**|  | [optional] 

### Return type

[**RelationDTO**](RelationDTO.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-OKMergedRelationsFromOrToCI"></a>
# **Get-OKMergedRelationsFromOrToCI**
> RelationDTO[] Get-OKMergedRelationsFromOrToCI<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Ciid] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerIDs] <String[]><br>
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

$Ciid = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | 
$LayerIDs = "MyLayerIDs" # String[] | 
$Version = "MyVersion" # String | 
$AtTime = (Get-Date) # System.DateTime |  (optional)

# 
try {
    $Result = Get-OKMergedRelationsFromOrToCI -Ciid $Ciid -LayerIDs $LayerIDs -Version $Version -AtTime $AtTime
} catch {
    Write-Host ("Exception occurred when calling Get-OKMergedRelationsFromOrToCI: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Ciid** | **String**|  | 
 **LayerIDs** | [**String[]**](String.md)|  | 
 **Version** | **String**|  | 
 **AtTime** | **System.DateTime**|  | [optional] 

### Return type

[**RelationDTO[]**](RelationDTO.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-OKMergedRelationsOutgoingFromCI"></a>
# **Get-OKMergedRelationsOutgoingFromCI**
> RelationDTO[] Get-OKMergedRelationsOutgoingFromCI<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FromCIID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerIDs] <String[]><br>
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

$FromCIID = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | 
$LayerIDs = "MyLayerIDs" # String[] | 
$Version = "MyVersion" # String | 
$AtTime = (Get-Date) # System.DateTime |  (optional)

# 
try {
    $Result = Get-OKMergedRelationsOutgoingFromCI -FromCIID $FromCIID -LayerIDs $LayerIDs -Version $Version -AtTime $AtTime
} catch {
    Write-Host ("Exception occurred when calling Get-OKMergedRelationsOutgoingFromCI: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FromCIID** | **String**|  | 
 **LayerIDs** | [**String[]**](String.md)|  | 
 **Version** | **String**|  | 
 **AtTime** | **System.DateTime**|  | [optional] 

### Return type

[**RelationDTO[]**](RelationDTO.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-OKMergedRelationsWithPredicate"></a>
# **Get-OKMergedRelationsWithPredicate**
> RelationDTO[] Get-OKMergedRelationsWithPredicate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PredicateID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerIDs] <String[]><br>
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

$PredicateID = "MyPredicateID" # String | 
$LayerIDs = "MyLayerIDs" # String[] | 
$Version = "MyVersion" # String | 
$AtTime = (Get-Date) # System.DateTime |  (optional)

# 
try {
    $Result = Get-OKMergedRelationsWithPredicate -PredicateID $PredicateID -LayerIDs $LayerIDs -Version $Version -AtTime $AtTime
} catch {
    Write-Host ("Exception occurred when calling Get-OKMergedRelationsWithPredicate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PredicateID** | **String**|  | 
 **LayerIDs** | [**String[]**](String.md)|  | 
 **Version** | **String**|  | 
 **AtTime** | **System.DateTime**|  | [optional] 

### Return type

[**RelationDTO[]**](RelationDTO.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

