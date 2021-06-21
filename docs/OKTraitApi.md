# okclient.okclient/Api.OKTraitApi

All URIs are relative to *https://localhost:44378*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-OKEffectiveTraitsForTraitName**](OKTraitApi.md#Get-OKEffectiveTraitsForTraitName) | **GET** /api/v{version}/Trait/getEffectiveTraitsForTraitName | 


<a name="Get-OKEffectiveTraitsForTraitName"></a>
# **Get-OKEffectiveTraitsForTraitName**
> System.Collections.Hashtable Get-OKEffectiveTraitsForTraitName<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerIDs] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TraitName] <String><br>
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
$TraitName = "TraitName_example" # String | 
$Version = "Version_example" # String | 
$AtTime = Get-Date # System.DateTime |  (optional)

try {
     $Result = Get-OKEffectiveTraitsForTraitName -LayerIDs $LayerIDs -TraitName $TraitName -Version $Version -AtTime $AtTime
} catch {
    Write-Host ("Exception occured when calling Get-OKEffectiveTraitsForTraitName: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LayerIDs** | [**Int64[]**](Int64.md)|  | 
 **TraitName** | **String**|  | 
 **Version** | **String**|  | 
 **AtTime** | **System.DateTime**|  | [optional] 

### Return type

[**System.Collections.Hashtable**](EffectiveTraitDTO.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

