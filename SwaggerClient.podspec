#
# Be sure to run `pod lib lint SwaggerClient.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "SwaggerClient"
    s.version          = "1.0.0"

    s.summary          = "QuantiModo"
    s.description      = <<-DESC
                         Welcome to QuantiModo API!\nQuantiModo makes it easy to retrieve normalized user data from a wide array of devices and applications. [Learn about QuantiModo](https://app.quantimo.do) or contact us at &lt;api@quantimo.do&gt;.\n\n\n\n\n\n\n\n Before you get started, you will need to:\n\n\n\n\n\n\n\n * Ceate an account at [QuantiModo](https://app.quantimo.do)\n\n\n\n\n\n\n\n * Sign in, and add some data at\n\n[https://app.quantimo.do/connect](https://app.quantimo.do/connect) to try out the API for yourself\n\n\n\n\n\n\n\n * As long as you&#39;re signed in, it will use your browser&#39;s cookie for\n\nauthentication.  However, client applications must use OAuth2 tokens to access the API.\n\n\n\n\n## Oauth2 Authentication\nAfter receiving your `client_id` and `client_secret` by emailing at &lt;info@quantimo.do&gt; you can implement OAuth2 authentication to your application using our [OAuth2](#!/oauth2) endpoints.\n### Request Authorization Code\nBasically you need to redirect users to `/api/v1/oauth2/authorize` endpoint to get an authorization code with following parameters:\n* `client_id` This is the unique ID that QuantiModo uses to identify your application.\n* `scope` Scopes include basic, readmeasurements, and writemeasurements. The `basic` scope allows you to read user info (displayname, email, etc). The `readmeasurements` scope allows one to read a user&#39;s data. The `writemeasurements` scope allows you to write user data. Separate multiple scopes by a space.\n* `redirect_uri` The redirect URI is the URL within your client application that will receive the OAuth2 credentials.\n* `state` An opaque string that is round-tripped in the protocol; that is to say, it is returned as a URI parameter in the Basic flow, and in the URI.\n* `response_type` If the value is code, launches a Basic flow, requiring a POST to the token endpoint to obtain the tokens. If the value is token id_token or id_token token, launches an Implicit flow, requiring the use of Javascript at the redirect URI to retrieve tokens from the URI #fragment.\n\n\n\n\n### Request Access Token\nAfter user approves your access to the given scope, you&#39;ll recevive an authorization code to request an access token. This time make a `POST` request to `/api/v1/oauth2/token` with parameters including:\n* `grant_type` Can be `authorization_code` or `refresh_token` since we are getting the `access_token` for the first time we don&#39;t have a `refresh_token` so this must be `authorization_code`.\n* `client_id` The client id you used to receive an `authorization_code`.\n* `client_secret` Your client secret which you received with the client id.\n* `code` Authorization code you received with the previous request.\n* `redirect_uri` Your application&#39;s redirect url.\n\n\n\n\n### Refreshing Access Token\nAccess tokens expire at some point, to continue using our api you need to refresh them with `refresh_token` you received along with the `access_token`. To do this make a `POST` request to `/api/v1/oauth2/token` with correct parameters, which are:\n* `grant_type` This time grant type must be `refresh_token` since we have it.\n* `client_id` Your application&#39;s client id.\n* `client_secret` Your application&#39;s client secret.\n* `refresh_token` The refresh token you received with the `access_token`.\n\n\n\n\nEvery request you make to this endpoint will give you a new refresh token and make the old one expired. So you can keep getting new access tokens with new refresh tokens.\n\n\n\n\nYou can read more about OAuth2 from [here](http://oauth.net/2/)\n## Example Queries\n### Query Options\nThe standard query options for QuantiModo API are as described in the table below.\nThese are the available query options in QuantiModo API:\n&lt;table&gt;\n  &lt;thead&gt;\n\n    &lt;tr&gt;\n      &lt;th&gt;Parameter&lt;/th&gt;\n      &lt;th&gt;Description&lt;/th&gt;\n    &lt;/tr&gt;\n\n  &lt;/thead&gt;\n\n\n  &lt;tbody&gt;\n\n    &lt;tr&gt;\n      &lt;td&gt;limit&lt;/td&gt;\n      &lt;td&gt;The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.&lt;/td&gt;\n    &lt;/tr&gt;\n    &lt;tr&gt;\n      &lt;td&gt;offset&lt;/td&gt;\n      &lt;td&gt;Suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10.&lt;/td&gt;\n    &lt;/tr&gt;\n    &lt;tr&gt;\n      &lt;td&gt;sort&lt;/td&gt;\n      &lt;td&gt;Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.&lt;/td&gt;\n    &lt;/tr&gt;\n\n  &lt;/tbody&gt;\n\n&lt;/table&gt;\n\n ### Pagination Conventions\n\nSince the maximum limit is 200 records, to get more than that you&#39;ll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.\nFor example, if you want to retrieve data from 61-80 then you can use a query with the following parameters,\n\n\n\n\n\n\n\n `/v1/variables?limit=20&amp;offset=60`\n\n\n\n\n\n\n\nGenerally, youll be retrieving new or updated user data.  To avoid unnecessary API calls, youll want to store your last refresh time locally.  Initially, it should be set to 0.  Then whenever you make a request to get new data, you should limit the returned results to those updated since your last refresh by appending append\n\n\n\n\n\n\n\n `?lastUpdated=(ge)\&quot;2013-01-D01T01:01:01\&quot;`\n\n\n\n\n\n\n\nto your request.\n\n\n\n\n\n\n\n Also for better pagination, you can get link to the records of first, last,\n\nnext and previous page from response headers:\n\n\n\n\n\n\n\n * `Total-Count` - Total number of results for given query\n\n\n\n\n\n\n\n * `Link-First` - Link to get first page records\n\n\n\n\n\n\n\n * `Link-Last` - Link to get last page records\n\n\n\n\n\n\n\n * `Link-Prev` - Link to get previous records set\n\n\n\n\n\n\n\n * `Link-Next` - Link to get next records set\n\n\n\n\n\n\n\n\n\n\n\nRemember, response header will be only sent when the record set is available. e.g. You will not get a ```Link-Last``` &amp; ```Link-Next``` when you query for the last page.\n### Sorting Results\nTo get data sorted by particular field:\n\n\n\n\n\n\n\n `/v1/variables?sort=lastUpdated`\n\n\n\n\n\n\n\nIt will sort data in ascending order. For descending order, you can add &#39;-&#39; prefix before field like:\n\n\n\n\n\n\n\n `/v1/variables?sort=-lastUpdated`\n\n\n\n\n\n\n\n### Filter Parameters\nAlso, many endpoints support various filter parameters. You can filter out your result by specifying filter parameter.\nFor example, to get all variables within the \&quot;Mood\&quot; category, you would use:\n\n\n\n\n\n\n\n `/v1/variables?category=Mood`\n\n\n\n\n\n\n\nHere is the complete list of filter parameters by endpoints:\n#### /v1/correlations\n\n\n\n  &lt;table&gt;\n  &lt;thead&gt;\n    &lt;tr&gt;\n      &lt;th&gt;Parameter&lt;/th&gt;\n      &lt;th&gt;Description&lt;/th&gt;\n    &lt;/tr&gt;\n  &lt;/thead&gt;\n  &lt;tbody&gt;\n    &lt;tr&gt;\n      &lt;td&gt;cause&lt;/td&gt;\n      &lt;td&gt;Original variable name of the hypothetical cause (a.k.a. explanatory or independent variable) for which the user desires correlations&lt;/td&gt;\n    &lt;/tr&gt;\n    &lt;tr&gt;\n      &lt;td&gt;effect&lt;/td&gt;\n      &lt;td&gt;Original variable name of the hypothetical effect (a.k.a. outcome or dependent variable) for which the user desires correlations&lt;/td&gt;\n    &lt;/tr&gt;\n    &lt;tr&gt;\n      &lt;td&gt;correlationCoefficient&lt;/td&gt;\n      &lt;td&gt;Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action&lt;/td&gt;\n    &lt;/tr&gt;\n    &lt;tr&gt;\n      &lt;td&gt;onsetDelay&lt;/td&gt;\n      &lt;td&gt;The number of seconds which pass following a cause measurement before an effect would likely be observed.&lt;/td&gt;\n    &lt;/tr&gt;\n    &lt;tr&gt;\n      &lt;td&gt;durationOfAction&lt;/td&gt;\n      &lt;td&gt;The time in seconds over which the cause would be expected to exert a measurable effect. We have selected a default value for each variable. This default value may be replaced by a user specified by adjusting their variable user settings.&lt;/td&gt;\n    &lt;/tr&gt;\n    &lt;tr&gt;\n      &lt;td&gt;lastUpdated&lt;/td&gt;\n      &lt;td&gt;The time that this measurement was last updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot;&lt;/td&gt;\n    &lt;/tr&gt;\n\n  &lt;/tbody&gt;\n\n  &lt;/table&gt;\n\n#### /v1/measurements\n\n  &lt;table&gt;\n    &lt;thead&gt;\n      &lt;tr&gt;\n\n\n\n        &lt;th&gt;Parameter&lt;/th&gt;\n\n\n\n        &lt;th&gt;Description&lt;/th&gt;\n\n\n\n      &lt;/tr&gt;\n\n    &lt;/thead&gt;\n  \n    &lt;tbody&gt;\n\n      &lt;tr&gt;\n        &lt;td&gt;variableName&lt;/td&gt;\n        &lt;td&gt;Name of the variable you want measurements for (supports exact name match only)&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;tr&gt;\n        &lt;td&gt;source&lt;/td&gt;\n        &lt;td&gt;Name of the source you want measurements for (supports exact name match only)&lt;/td&gt;\n      &lt;/tr&gt;\n      \n      &lt;tr&gt;\n        &lt;td&gt;value&lt;/td&gt;\n        &lt;td&gt;Value of measurement&lt;/td&gt;\n      &lt;/tr&gt;\n      \n      &lt;tr&gt;\n        &lt;td&gt;lastUpdated&lt;/td&gt;\n        &lt;td&gt;The time that this measurement was created or last updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot;&lt;/td&gt;\n      &lt;/tr&gt;\n\n\n    &lt;/tbody&gt;\n\n  &lt;/table&gt;\n\n#### /v1/units\n\n  &lt;table&gt;\n    &lt;thead&gt;\n  \n        &lt;tr&gt;\n  \n  \n  \n          &lt;th&gt;Parameter&lt;/th&gt;\n  \n  \n  \n          &lt;th&gt;Description&lt;/th&gt;\n  \n  \n  \n        &lt;/tr&gt;\n    &lt;/thead&gt;\n\n    &lt;tbody&gt;\n      &lt;tr&gt;\n        &lt;td&gt;unitName&lt;/td&gt;\n        &lt;td&gt;Unit Name (supports exact name match only)&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;tr&gt;\n        &lt;td&gt;abbreviatedUnitName&lt;/td&gt;\n        &lt;td&gt;Restrict the results to a specific unit by providing the unit abbreviation (supports exact name match only)&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;tr&gt;\n        &lt;td&gt;categoryName&lt;/td&gt;\n        &lt;td&gt;Restrict the results to a specific unit category by providing the unit category name.&lt;/td&gt;\n      &lt;/tr&gt;\n    &lt;/tbody&gt;\n    \n  &lt;/table&gt;\n\n#### /v1/variables\n\n  &lt;table&gt;\n    &lt;thead&gt;\n      &lt;tr&gt;\n        &lt;th&gt;Parameter&lt;/th&gt;\n        &lt;th&gt;Description&lt;/th&gt;\n      &lt;/tr&gt;\n    &lt;/thead&gt;\n    \n    &lt;tbody&gt;\n      &lt;tr&gt;\n        &lt;td&gt;category&lt;/td&gt;\n        &lt;td&gt;Restrict the results to a specific category by providing the variable category name such as \&quot;Nutrients\&quot; or \&quot;Physique\&quot;. A complete list of variable categories can be obtained at the /variableCategories endpoint.&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;tr&gt;\n        &lt;td&gt;name&lt;/td&gt;\n        &lt;td&gt;Original name of the variable (supports exact name match only)&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;tr&gt;\n        &lt;td&gt;lastUpdated&lt;/td&gt;\n        &lt;td&gt;Filter by the last time any of the properties of the variable were changed. Uses UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot;&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;tr&gt;\n        &lt;td&gt;source&lt;/td&gt;\n        &lt;td&gt;The name of the data source that created the variable (supports exact name match only). So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;tr&gt;\n        &lt;td&gt;latestMeasurementTime&lt;/td&gt;\n        &lt;td&gt;Filter variables based on the last time a measurement for them was created or updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot;&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;tr&gt;\n        &lt;td&gt;numberOfMeasurements&lt;/td&gt;\n        &lt;td&gt;Filter variables by the total number of measurements that they have. This could be used of you want to filter or sort by popularity.&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;tr&gt;\n        &lt;td&gt;lastSource&lt;/td&gt;\n        &lt;td&gt;Limit variables to those which measurements were last submitted by a specific source. So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here. (supports exact name match only)&lt;/td&gt;\n      &lt;/tr&gt;\n    &lt;/tbody&gt;\n\n  &lt;/table&gt;\n\n#### Filter operators support\nAPI supports the following operators with filter parameters:\n#### Comparison operators\nComparison operators allow you to limit results to those greater than, less than, or equal to a specified value for a specified attribute.   These operators can be used with strings, numbers, and dates.\nThe following comparison operators are available:\n* `gt` for `greater than` comparison\n* `ge` for `greater than or equal` comparison\n* `lt` for `less than` comparison, e.g\n* `le` for `less than or equal` comparison\n\n\n\n\nThey are included in queries using the following format:\n\n\n\n\n\n\n\n `(&lt;operator&gt;)&lt;value&gt;`\n\n\n\n\n\n\n\nFor example, in order to filter value which is greater than 21, the following query parameter should be used:\n\n\n\n\n\n\n\n `?value=(gt)21`\n\n\n\n\n\n\n\n#### Equals/In Operators\nIt also allows filtering by the exact value of an attribute or by a set of values, depending on the type of value passed as a query parameter. If the value contains commas, the parameter is split on commas and used as array input for `IN` filtering, otherwise the exact match is applied.\nIn order to only show records which have the value 42, the following query should be used:\n\n\n\n\n\n\n\n `?value=42`\n\n\n\n\n\n\n\nIn order to filter records which have value 42 or 43, the following query should be used:\n\n\n\n\n\n\n\n `?value=42,43`\n\n\n\n\n\n\n\n#### Like operators\nLike operators allow filtering using `LIKE` query. This operator is triggered if exact match operator is used, but value contains `%` sign as the first or last character.\nIn order to filter records which category that start with `Food`, the following query should be used:\n\n\n\n\n\n\n\n `?category=Food%`\n\n\n\n\n\n\n\n#### Negation operator\nIt is possible to get negated results of a query by prefixed the operator with `!`.\nSome examples:\n\n\n\n\n\n\n\n `//filter records except those with value are not 42 or 43`&lt;br&gt;\n\n\n\n `?value=!42,43`\n\n\n\n\n\n\n\n `//filter records with value not greater than 21`&lt;br&gt;\n\n\n\n `?value=!(ge)21`\n\n\n\n\n\n\n\n#### Multiple constraints for single attribute\nIt is possible to apply multiple constraints by providing an array of query filters:\n\n\n\n\n\n\n\n `// filter all records which value is greater than 20.2 and less than\n\n20.3`&lt;br&gt;\n`?value[]=(gt)20.2&amp;value[]=(lt)20.3`\n`// filter all records which value is greater than 20.2 and less than 20.3 but not 20.2778`&lt;br&gt; `?value[]=(gt)20.2&amp;value[]=(lt)20.3&amp;value[]=!20.2778`\n\n\n\n\n&lt;br&gt;
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'
    
    s.homepage     = "https://github.com/swagger-api/swagger-codegen"
    s.license      = "MIT"
    s.source       = { :git => "https://github.com/swagger-api/swagger-codegen.git", :tag => "#{s.version}" }
    s.author       = { "Swagger" => "apiteam@swagger.io" }

    s.source_files = 'SwaggerClient/**/*'
    s.public_header_files = 'SwaggerClient/**/*.h'

    s.dependency 'AFNetworking', '~> 2.3'
    s.dependency 'JSONModel', '~> 1.1'
    s.dependency 'ISO8601', '~> 0.3'
end

