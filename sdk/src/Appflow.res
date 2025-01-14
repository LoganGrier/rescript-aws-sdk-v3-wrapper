type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-appflow") @new
external createClient: unit => awsServiceClient = "AppflowClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type zendeskConnectorOperator = [
  | @as("NO_OP") #NO_OP
  | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC
  | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE
  | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO
  | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL
  | @as("MASK_LAST_N") #MASK_LAST_N
  | @as("MASK_FIRST_N") #MASK_FIRST_N
  | @as("MASK_ALL") #MASK_ALL
  | @as("SUBTRACTION") #SUBTRACTION
  | @as("DIVISION") #DIVISION
  | @as("MULTIPLICATION") #MULTIPLICATION
  | @as("ADDITION") #ADDITION
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("PROJECTION") #PROJECTION
]
@ocaml.doc("<p>
      The possible write operations in the destination connector. When this value is not provided, this defaults to the <code>INSERT</code> operation.
    </p>")
type writeOperationType = [@as("UPDATE") #UPDATE | @as("UPSERT") #UPSERT | @as("INSERT") #INSERT]
type warehouse = string
@ocaml.doc("<p>
  The connector metadata specific to Veeva.
</p>")
type veevaMetadata = unit
type veevaConnectorOperator = [
  | @as("NO_OP") #NO_OP
  | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC
  | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE
  | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO
  | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL
  | @as("MASK_LAST_N") #MASK_LAST_N
  | @as("MASK_FIRST_N") #MASK_FIRST_N
  | @as("MASK_ALL") #MASK_ALL
  | @as("SUBTRACTION") #SUBTRACTION
  | @as("DIVISION") #DIVISION
  | @as("MULTIPLICATION") #MULTIPLICATION
  | @as("ADDITION") #ADDITION
  | @as("NOT_EQUAL_TO") #NOT_EQUAL_TO
  | @as("EQUAL_TO") #EQUAL_TO
  | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO
  | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO
  | @as("BETWEEN") #BETWEEN
  | @as("CONTAINS") #CONTAINS
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("LESS_THAN") #LESS_THAN
  | @as("PROJECTION") #PROJECTION
]
type value = string
type username = string
@ocaml.doc("<p>
      The connector metadata specific to Upsolver.
    </p>")
type upsolverMetadata = unit
type upsolverBucketName = string
type updatedBy = string
type triggerType = [@as("OnDemand") #OnDemand | @as("Event") #Event | @as("Scheduled") #Scheduled]
@ocaml.doc("<p>
  The connector metadata specific to Trend Micro.
</p>")
type trendmicroMetadata = unit
@ocaml.doc("<p>
  The connector-specific profile properties required when using Trend Micro.
</p>")
type trendmicroConnectorProfileProperties = unit
type trendmicroConnectorOperator = [
  | @as("NO_OP") #NO_OP
  | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC
  | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE
  | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO
  | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL
  | @as("MASK_LAST_N") #MASK_LAST_N
  | @as("MASK_FIRST_N") #MASK_FIRST_N
  | @as("MASK_ALL") #MASK_ALL
  | @as("SUBTRACTION") #SUBTRACTION
  | @as("DIVISION") #DIVISION
  | @as("MULTIPLICATION") #MULTIPLICATION
  | @as("ADDITION") #ADDITION
  | @as("EQUAL_TO") #EQUAL_TO
  | @as("PROJECTION") #PROJECTION
]
type timezone = string
type taskType = [
  | @as("Validate") #Validate
  | @as("Truncate") #Truncate
  | @as("Merge") #Merge
  | @as("Mask") #Mask
  | @as("Map") #Map
  | @as("Filter") #Filter
  | @as("Arithmetic") #Arithmetic
]
type tagValue = string
type tagKey = string
type string_ = string
type stage = string
type slackConnectorOperator = [
  | @as("NO_OP") #NO_OP
  | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC
  | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE
  | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO
  | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL
  | @as("MASK_LAST_N") #MASK_LAST_N
  | @as("MASK_FIRST_N") #MASK_FIRST_N
  | @as("MASK_ALL") #MASK_ALL
  | @as("SUBTRACTION") #SUBTRACTION
  | @as("DIVISION") #DIVISION
  | @as("MULTIPLICATION") #MULTIPLICATION
  | @as("ADDITION") #ADDITION
  | @as("EQUAL_TO") #EQUAL_TO
  | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO
  | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO
  | @as("BETWEEN") #BETWEEN
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("LESS_THAN") #LESS_THAN
  | @as("PROJECTION") #PROJECTION
]
@ocaml.doc("<p>
  The connector metadata specific to Singular.
</p>")
type singularMetadata = unit
@ocaml.doc("<p>
  The connector-specific profile properties required when using Singular.
</p>")
type singularConnectorProfileProperties = unit
type singularConnectorOperator = [
  | @as("NO_OP") #NO_OP
  | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC
  | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE
  | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO
  | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL
  | @as("MASK_LAST_N") #MASK_LAST_N
  | @as("MASK_FIRST_N") #MASK_FIRST_N
  | @as("MASK_ALL") #MASK_ALL
  | @as("SUBTRACTION") #SUBTRACTION
  | @as("DIVISION") #DIVISION
  | @as("MULTIPLICATION") #MULTIPLICATION
  | @as("ADDITION") #ADDITION
  | @as("EQUAL_TO") #EQUAL_TO
  | @as("PROJECTION") #PROJECTION
]
@ocaml.doc("<p>
  The connector metadata specific to ServiceNow.
</p>")
type serviceNowMetadata = unit
type serviceNowConnectorOperator = [
  | @as("NO_OP") #NO_OP
  | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC
  | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE
  | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO
  | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL
  | @as("MASK_LAST_N") #MASK_LAST_N
  | @as("MASK_FIRST_N") #MASK_FIRST_N
  | @as("MASK_ALL") #MASK_ALL
  | @as("SUBTRACTION") #SUBTRACTION
  | @as("DIVISION") #DIVISION
  | @as("MULTIPLICATION") #MULTIPLICATION
  | @as("ADDITION") #ADDITION
  | @as("NOT_EQUAL_TO") #NOT_EQUAL_TO
  | @as("EQUAL_TO") #EQUAL_TO
  | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO
  | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO
  | @as("BETWEEN") #BETWEEN
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("LESS_THAN") #LESS_THAN
  | @as("CONTAINS") #CONTAINS
  | @as("PROJECTION") #PROJECTION
]
type secretKey = string
type scheduleOffset = float
type scheduleFrequencyType = [
  | @as("ONCE") #ONCE
  | @as("MONTHLY") #MONTHLY
  | @as("WEEKLY") #WEEKLY
  | @as("DAILY") #DAILY
  | @as("HOURLY") #HOURLY
  | @as("BYMINUTE") #BYMINUTE
]
type scheduleExpression = string
type salesforceConnectorOperator = [
  | @as("NO_OP") #NO_OP
  | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC
  | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE
  | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO
  | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL
  | @as("MASK_LAST_N") #MASK_LAST_N
  | @as("MASK_FIRST_N") #MASK_FIRST_N
  | @as("MASK_ALL") #MASK_ALL
  | @as("SUBTRACTION") #SUBTRACTION
  | @as("DIVISION") #DIVISION
  | @as("MULTIPLICATION") #MULTIPLICATION
  | @as("ADDITION") #ADDITION
  | @as("NOT_EQUAL_TO") #NOT_EQUAL_TO
  | @as("EQUAL_TO") #EQUAL_TO
  | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO
  | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO
  | @as("BETWEEN") #BETWEEN
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("CONTAINS") #CONTAINS
  | @as("LESS_THAN") #LESS_THAN
  | @as("PROJECTION") #PROJECTION
]
@ocaml.doc("<p>
  The connector metadata specific to Amazon S3.
</p>")
type s3Metadata = unit
type s3ConnectorOperator = [
  | @as("NO_OP") #NO_OP
  | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC
  | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE
  | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO
  | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL
  | @as("MASK_LAST_N") #MASK_LAST_N
  | @as("MASK_FIRST_N") #MASK_FIRST_N
  | @as("MASK_ALL") #MASK_ALL
  | @as("SUBTRACTION") #SUBTRACTION
  | @as("DIVISION") #DIVISION
  | @as("MULTIPLICATION") #MULTIPLICATION
  | @as("ADDITION") #ADDITION
  | @as("NOT_EQUAL_TO") #NOT_EQUAL_TO
  | @as("EQUAL_TO") #EQUAL_TO
  | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO
  | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO
  | @as("BETWEEN") #BETWEEN
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("LESS_THAN") #LESS_THAN
  | @as("PROJECTION") #PROJECTION
]
type roleArn = string
type region = string
type refreshToken = string
@ocaml.doc("<p>
  The connector metadata specific to Amazon Redshift.
</p>")
type redshiftMetadata = unit
type redirectUri = string
type property = string
type privateLinkServiceName = string
type prefixType = [
  | @as("PATH_AND_FILENAME") #PATH_AND_FILENAME
  | @as("PATH") #PATH
  | @as("FILENAME") #FILENAME
]
type prefixFormat = [
  | @as("MINUTE") #MINUTE
  | @as("HOUR") #HOUR
  | @as("DAY") #DAY
  | @as("MONTH") #MONTH
  | @as("YEAR") #YEAR
]
type password = string
type operatorPropertiesKeys = [
  | @as("SUBFIELD_CATEGORY_MAP") #SUBFIELD_CATEGORY_MAP
  | @as("CONCAT_FORMAT") #CONCAT_FORMAT
  | @as("MATH_OPERATION_FIELDS_ORDER") #MATH_OPERATION_FIELDS_ORDER
  | @as("TRUNCATE_LENGTH") #TRUNCATE_LENGTH
  | @as("MASK_LENGTH") #MASK_LENGTH
  | @as("MASK_VALUE") #MASK_VALUE
  | @as("VALIDATION_ACTION") #VALIDATION_ACTION
  | @as("DESTINATION_DATA_TYPE") #DESTINATION_DATA_TYPE
  | @as("SOURCE_DATA_TYPE") #SOURCE_DATA_TYPE
  | @as("LOWER_BOUND") #LOWER_BOUND
  | @as("UPPER_BOUND") #UPPER_BOUND
  | @as("DATA_TYPE") #DATA_TYPE
  | @as("VALUES") #VALUES
  | @as("VALUE") #VALUE
]
type operator = [
  | @as("NO_OP") #NO_OP
  | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC
  | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE
  | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO
  | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL
  | @as("MASK_LAST_N") #MASK_LAST_N
  | @as("MASK_FIRST_N") #MASK_FIRST_N
  | @as("MASK_ALL") #MASK_ALL
  | @as("SUBTRACTION") #SUBTRACTION
  | @as("DIVISION") #DIVISION
  | @as("MULTIPLICATION") #MULTIPLICATION
  | @as("ADDITION") #ADDITION
  | @as("NOT_EQUAL_TO") #NOT_EQUAL_TO
  | @as("EQUAL_TO") #EQUAL_TO
  | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO
  | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO
  | @as("BETWEEN") #BETWEEN
  | @as("CONTAINS") #CONTAINS
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("LESS_THAN") #LESS_THAN
  | @as("PROJECTION") #PROJECTION
]
type objectTypeName = string
type object_ = string
type oauthScope = string
type nextToken = string
type name = string
type mostRecentExecutionMessage = string
type maxResults = int
@ocaml.doc("<p>
  The connector metadata specific to Marketo.
</p>")
type marketoMetadata = unit
type marketoConnectorOperator = [
  | @as("NO_OP") #NO_OP
  | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC
  | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE
  | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO
  | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL
  | @as("MASK_LAST_N") #MASK_LAST_N
  | @as("MASK_FIRST_N") #MASK_FIRST_N
  | @as("MASK_ALL") #MASK_ALL
  | @as("SUBTRACTION") #SUBTRACTION
  | @as("DIVISION") #DIVISION
  | @as("MULTIPLICATION") #MULTIPLICATION
  | @as("ADDITION") #ADDITION
  | @as("BETWEEN") #BETWEEN
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("LESS_THAN") #LESS_THAN
  | @as("PROJECTION") #PROJECTION
]
@ocaml.doc("<p>
      The properties that are applied when Amazon Lookout for Metrics is used as a destination.
    </p>")
type lookoutMetricsDestinationProperties = unit
type long = float
type label = string
type key = string
type kmsarn = string
type instanceUrl = string
@ocaml.doc("<p>
  The connector metadata specific to Infor Nexus.
</p>")
type inforNexusMetadata = unit
type inforNexusConnectorOperator = [
  | @as("NO_OP") #NO_OP
  | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC
  | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE
  | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO
  | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL
  | @as("MASK_LAST_N") #MASK_LAST_N
  | @as("MASK_FIRST_N") #MASK_FIRST_N
  | @as("MASK_ALL") #MASK_ALL
  | @as("SUBTRACTION") #SUBTRACTION
  | @as("DIVISION") #DIVISION
  | @as("MULTIPLICATION") #MULTIPLICATION
  | @as("ADDITION") #ADDITION
  | @as("EQUAL_TO") #EQUAL_TO
  | @as("BETWEEN") #BETWEEN
  | @as("PROJECTION") #PROJECTION
]
type identifier = string
@ocaml.doc("<p>
      The connector-specific properties required when using Amazon Honeycode.
    </p>")
type honeycodeConnectorProfileProperties = unit
type group = string
@ocaml.doc("<p>
  The connector-specific profile properties required by Google Analytics.
</p>")
type googleAnalyticsConnectorProfileProperties = unit
type googleAnalyticsConnectorOperator = [@as("BETWEEN") #BETWEEN | @as("PROJECTION") #PROJECTION]
type flowStatusMessage = string
type flowStatus = [
  | @as("Suspended") #Suspended
  | @as("Errored") #Errored
  | @as("Draft") #Draft
  | @as("Deleted") #Deleted
  | @as("Deprecated") #Deprecated
  | @as("Active") #Active
]
type flowName = string
type flowDescription = string
type flowArn = string
type fileType = [@as("PARQUET") #PARQUET | @as("JSON") #JSON | @as("CSV") #CSV]
type fieldType = string
type executionStatus = [
  | @as("Error") #Error
  | @as("Successful") #Successful
  | @as("InProgress") #InProgress
]
type executionMessage = string
type executionId = string
@ocaml.doc("<p>
      The connector metadata specific to Amazon EventBridge.
    </p>")
type eventBridgeMetadata = unit
type errorMessage = string
type entitiesPath = string
@ocaml.doc("<p>
  The connector metadata specific to Dynatrace.
</p>")
type dynatraceMetadata = unit
type dynatraceConnectorOperator = [
  | @as("NO_OP") #NO_OP
  | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC
  | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE
  | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO
  | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL
  | @as("MASK_LAST_N") #MASK_LAST_N
  | @as("MASK_FIRST_N") #MASK_FIRST_N
  | @as("MASK_ALL") #MASK_ALL
  | @as("SUBTRACTION") #SUBTRACTION
  | @as("DIVISION") #DIVISION
  | @as("MULTIPLICATION") #MULTIPLICATION
  | @as("ADDITION") #ADDITION
  | @as("EQUAL_TO") #EQUAL_TO
  | @as("BETWEEN") #BETWEEN
  | @as("PROJECTION") #PROJECTION
]
type domainName = string
type destinationField = string
type description = string
type datetimeTypeFieldName = string
type date = Js.Date.t
@ocaml.doc("<p>
  The connector metadata specific to Datadog.
</p>")
type datadogMetadata = unit
type datadogConnectorOperator = [
  | @as("NO_OP") #NO_OP
  | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC
  | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE
  | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO
  | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL
  | @as("MASK_LAST_N") #MASK_LAST_N
  | @as("MASK_FIRST_N") #MASK_FIRST_N
  | @as("MASK_ALL") #MASK_ALL
  | @as("SUBTRACTION") #SUBTRACTION
  | @as("DIVISION") #DIVISION
  | @as("MULTIPLICATION") #MULTIPLICATION
  | @as("ADDITION") #ADDITION
  | @as("EQUAL_TO") #EQUAL_TO
  | @as("BETWEEN") #BETWEEN
  | @as("PROJECTION") #PROJECTION
]
type databaseUrl = string
type dataPullMode = [@as("Complete") #Complete | @as("Incremental") #Incremental]
@ocaml.doc("<p>
      The connector metadata specific to Amazon Connect Customer Profiles.
    </p>")
type customerProfilesMetadata = unit
type createdBy = string
type connectorType = [
  | @as("CustomerProfiles") #CustomerProfiles
  | @as("Honeycode") #Honeycode
  | @as("Upsolver") #Upsolver
  | @as("LookoutMetrics") #LookoutMetrics
  | @as("EventBridge") #EventBridge
  | @as("Veeva") #Veeva
  | @as("Amplitude") #Amplitude
  | @as("Infornexus") #Infornexus
  | @as("Dynatrace") #Dynatrace
  | @as("Snowflake") #Snowflake
  | @as("Trendmicro") #Trendmicro
  | @as("Datadog") #Datadog
  | @as("Servicenow") #Servicenow
  | @as("Zendesk") #Zendesk
  | @as("Googleanalytics") #Googleanalytics
  | @as("Marketo") #Marketo
  | @as("S3") #S3
  | @as("Redshift") #Redshift
  | @as("Slack") #Slack
  | @as("Singular") #Singular
  | @as("Salesforce") #Salesforce
]
type connectorProfileName = string
type connectorProfileArn = string
type connectionMode = [@as("Private") #Private | @as("Public") #Public]
type clientSecret = string
type clientId = string
type clientCredentialsArn = string
type bucketPrefix = string
type bucketName = string
type boolean_ = bool
type authCode = string
type applicationKey = string
type apiToken = string
type apiSecretKey = string
type apiKey = string
@ocaml.doc("<p>
  The connector metadata specific to Amplitude.
</p>")
type amplitudeMetadata = unit
@ocaml.doc("<p>
  The connector-specific profile properties required when using Amplitude.
</p>")
type amplitudeConnectorProfileProperties = unit
type amplitudeConnectorOperator = [@as("BETWEEN") #BETWEEN]
type aggregationType = [@as("SingleFile") #SingleFile | @as("None") #None]
type accountName = string
type accessToken = string
type accessKeyId = string
type arn = string
@ocaml.doc("<p>
  The properties that are applied when using Zendesk as a flow source.
</p>")
type zendeskSourceProperties = {
  @ocaml.doc("<p>
  The object specified in the Zendesk flow source.
</p>")
  @as("object")
  object_: object_,
}
@ocaml.doc("<p>
  The connector-specific profile properties required when using Zendesk.
</p>")
type zendeskConnectorProfileProperties = {
  @ocaml.doc("<p>
  The location of the Zendesk resource.
</p>")
  instanceUrl: instanceUrl,
}
@ocaml.doc("<p>
  The properties that are applied when using Veeva as a flow source.
</p>")
type veevaSourceProperties = {
  @ocaml.doc("<p>
  The object specified in the Veeva flow source.
</p>")
  @as("object")
  object_: object_,
}
@ocaml.doc("<p>
  The connector-specific profile properties required when using Veeva.
</p>")
type veevaConnectorProfileProperties = {
  @ocaml.doc("<p>
  The location of the Veeva resource.
</p>")
  instanceUrl: instanceUrl,
}
@ocaml.doc("<p>
  The connector-specific profile credentials required when using Veeva.
</p>")
type veevaConnectorProfileCredentials = {
  @ocaml.doc("<p>
  The password that corresponds to the user name.
</p>")
  password: password,
  @ocaml.doc("<p>
  The name of the user.
</p>")
  username: username,
}
type triggerTypeList = array<triggerType>
@ocaml.doc("<p>
  The properties that are applied when using Trend Micro as a flow source.
</p>")
type trendmicroSourceProperties = {
  @ocaml.doc("<p>
  The object specified in the Trend Micro flow source.
</p>")
  @as("object")
  object_: object_,
}
@ocaml.doc("<p>
  The connector-specific profile credentials required when using Trend Micro.
</p>")
type trendmicroConnectorProfileCredentials = {
  @ocaml.doc("<p>
  The Secret Access Key portion of the credentials.
</p>")
  apiSecretKey: apiSecretKey,
}
type taskPropertiesMap = Js.Dict.t<property>
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type supportedWriteOperationList = array<writeOperationType>
type supportedValueList = array<value>
type sourceFields = array<string_>
@ocaml.doc("<p>
  The properties that can be applied to a field when the connector is being used as a source.
</p>")
type sourceFieldProperties = {
  @ocaml.doc("<p>
 Indicates if the field can be queried.
</p>")
  isQueryable: option<boolean_>,
  @ocaml.doc("<p>
Indicates whether the field can be returned in a search result. 
</p>")
  isRetrievable: option<boolean_>,
}
@ocaml.doc("<p>
  The connector-specific profile properties required when using Snowflake.
</p>")
type snowflakeConnectorProfileProperties = {
  @ocaml.doc("<p>
The AWS Region of the Snowflake account.
</p>")
  region: option<region>,
  @ocaml.doc("<p>
The name of the account.
</p>")
  accountName: option<accountName>,
  @ocaml.doc("<p>
The Snowflake Private Link service name to be used for private data transfers.
</p>")
  privateLinkServiceName: option<privateLinkServiceName>,
  @ocaml.doc("<p>
  The bucket path that refers to the Amazon S3 bucket associated with Snowflake.
</p>")
  bucketPrefix: option<bucketPrefix>,
  @ocaml.doc("<p>
  The name of the Amazon S3 bucket associated with Snowflake.
</p>")
  bucketName: bucketName,
  @ocaml.doc("<p>
  The name of the Amazon S3 stage that was created while setting up an Amazon S3 stage in the Snowflake account. This is written in the following format: < Database>< Schema><Stage Name>.
</p>")
  stage: stage,
  @ocaml.doc("<p>
The name of the Snowflake warehouse.
</p>")
  warehouse: warehouse,
}
@ocaml.doc("<p>
  The connector-specific profile credentials required when using Snowflake.
</p>")
type snowflakeConnectorProfileCredentials = {
  @ocaml.doc("<p>
The password that corresponds to the user name.
</p>")
  password: password,
  @ocaml.doc("<p>
  The name of the user.
</p>")
  username: username,
}
@ocaml.doc("<p>
  The properties that are applied when Slack is being used as a source.
</p>")
type slackSourceProperties = {
  @ocaml.doc("<p>
  The object specified in the Slack flow source.
</p>")
  @as("object")
  object_: object_,
}
@ocaml.doc("<p>
  The connector-specific profile properties required when using Slack.
</p>")
type slackConnectorProfileProperties = {
  @ocaml.doc("<p>
  The location of the Slack resource.
</p>")
  instanceUrl: instanceUrl,
}
@ocaml.doc("<p>
  The properties that are applied when Singular is being used as a source.
</p>")
type singularSourceProperties = {
  @ocaml.doc("<p>
  The object specified in the Singular flow source.
</p>")
  @as("object")
  object_: object_,
}
@ocaml.doc("<p>
  The connector-specific profile credentials required when using Singular.
</p>")
type singularConnectorProfileCredentials = {
  @ocaml.doc("<p>  A unique alphanumeric identifier used to authenticate a user, developer, or calling program to your API.
</p>")
  apiKey: apiKey,
}
@ocaml.doc("<p>
  The properties that are applied when ServiceNow is being used as a source.
</p>")
type serviceNowSourceProperties = {
  @ocaml.doc("<p>
  The object specified in the ServiceNow flow source.
</p>")
  @as("object")
  object_: object_,
}
@ocaml.doc("<p>
  The connector-specific profile properties required when using ServiceNow.
</p>")
type serviceNowConnectorProfileProperties = {
  @ocaml.doc("<p>
  The location of the ServiceNow resource.
</p>")
  instanceUrl: instanceUrl,
}
@ocaml.doc("<p>
  The connector-specific profile credentials required when using ServiceNow.
</p>")
type serviceNowConnectorProfileCredentials = {
  @ocaml.doc("<p>
  The password that corresponds to the user name.
</p>")
  password: password,
  @ocaml.doc("<p>
  The name of the user.
</p>")
  username: username,
}
type schedulingFrequencyTypeList = array<scheduleFrequencyType>
@ocaml.doc("<p>
  Specifies the configuration details of a schedule-triggered flow as defined by the user. Currently, these settings only apply to the <code>Scheduled</code> trigger type.
</p>")
type scheduledTriggerProperties = {
  @ocaml.doc("<p>
      Specifies the date range for the records to import from the connector in the first flow run.
    </p>")
  firstExecutionFrom: option<date>,
  @ocaml.doc("<p>
Specifies the optional offset that is added to the time interval for a schedule-triggered flow. 
</p>")
  scheduleOffset: option<scheduleOffset>,
  @ocaml.doc("<p>
  Specifies the time zone used when referring to the date and time of a scheduled-triggered flow, such as <code>America/New_York</code>.
</p>")
  timezone: option<timezone>,
  @ocaml.doc("<p>
 Specifies the scheduled end time for a schedule-triggered flow.
</p>")
  scheduleEndTime: option<date>,
  @ocaml.doc("<p>
Specifies the scheduled start time for a schedule-triggered flow.
</p>")
  scheduleStartTime: option<date>,
  @ocaml.doc("<p>
 Specifies whether a scheduled flow has an incremental data transfer or a complete data transfer for each flow run.
</p>")
  dataPullMode: option<dataPullMode>,
  @ocaml.doc("<p>
  The scheduling expression that determines the rate at which the schedule will run, for example <code>rate(5minutes)</code>.
</p>")
  scheduleExpression: scheduleExpression,
}
@ocaml.doc("<p>
  The properties that are applied when Salesforce is being used as a source.
</p>")
type salesforceSourceProperties = {
  @ocaml.doc("<p>
 Indicates whether Amazon AppFlow includes deleted files in the flow run.
    </p>")
  includeDeletedRecords: option<boolean_>,
  @ocaml.doc("<p>
The flag that enables dynamic fetching of new (recently added) fields in the Salesforce objects while running a flow.
     </p>")
  enableDynamicFieldUpdate: option<boolean_>,
  @ocaml.doc("<p>
  The object specified in the Salesforce flow source.
</p>")
  @as("object")
  object_: object_,
}
@ocaml.doc("<p>
  The connector-specific profile properties required when using Salesforce.
</p>")
type salesforceConnectorProfileProperties = {
  @ocaml.doc("<p>
 Indicates whether the connector profile applies to a sandbox or production environment. 
</p>")
  isSandboxEnvironment: option<boolean_>,
  @ocaml.doc("<p>
  The location of the Salesforce resource.
</p>")
  instanceUrl: option<instanceUrl>,
}
@ocaml.doc("<p>
  The properties that are applied when Amazon S3 is being used as the flow source.
</p>")
type s3SourceProperties = {
  @ocaml.doc("<p>
  The object key for the Amazon S3 bucket in which the source files are stored.
</p>")
  bucketPrefix: option<bucketPrefix>,
  @ocaml.doc("<p>
  The Amazon S3 bucket name where the source files are stored.  
</p>")
  bucketName: bucketName,
}
type regionList = array<region>
@ocaml.doc("<p>
  The connector-specific profile properties when using Amazon Redshift.
</p>")
type redshiftConnectorProfileProperties = {
  @ocaml.doc("<p>
  The Amazon Resource Name (ARN) of the IAM role.
</p>")
  roleArn: roleArn,
  @ocaml.doc("<p>
  The object key for the destination bucket in which Amazon AppFlow places the files.
</p>")
  bucketPrefix: option<bucketPrefix>,
  @ocaml.doc("<p>
  A name for the associated Amazon S3 bucket. 
</p>")
  bucketName: bucketName,
  @ocaml.doc("<p>
The JDBC URL of the Amazon Redshift cluster.
</p>")
  databaseUrl: databaseUrl,
}
@ocaml.doc("<p>
  The connector-specific profile credentials required when using Amazon Redshift.
</p>")
type redshiftConnectorProfileCredentials = {
  @ocaml.doc("<p>
  The password that corresponds to the user name.
</p>")
  password: password,
  @ocaml.doc("<p>
  The name of the user.
</p>")
  username: username,
}
@ocaml.doc("<p>
Determines the prefix that Amazon AppFlow applies to the destination folder name. You can name your destination folders according to the flow frequency and date.  
    </p>")
type prefixConfig = {
  @ocaml.doc("<p>
      Determines the level of granularity that's included in the prefix.
    </p>")
  prefixFormat: option<prefixFormat>,
  @ocaml.doc("<p>
      Determines the format of the prefix, and whether it applies to the file name, file path, or both. 
    </p>")
  prefixType: option<prefixType>,
}
type oauthScopeList = array<oauthScope>
@ocaml.doc("<p>
  The properties that are applied when Marketo is being used as a source.
</p>")
type marketoSourceProperties = {
  @ocaml.doc("<p>
  The object specified in the Marketo flow source.
</p>")
  @as("object")
  object_: object_,
}
@ocaml.doc("<p>
  The connector-specific profile properties required when using Marketo.
</p>")
type marketoConnectorProfileProperties = {
  @ocaml.doc("<p>
  The location of the Marketo resource.
</p>")
  instanceUrl: instanceUrl,
}
@ocaml.doc("<p>
  The properties that are applied when Infor Nexus is being used as a source.
</p>")
type inforNexusSourceProperties = {
  @ocaml.doc("<p>
  The object specified in the Infor Nexus flow source.
</p>")
  @as("object")
  object_: object_,
}
@ocaml.doc("<p>
  The connector-specific profile properties required by Infor Nexus.
</p>")
type inforNexusConnectorProfileProperties = {
  @ocaml.doc("<p>
  The location of the Infor Nexus resource.
</p>")
  instanceUrl: instanceUrl,
}
@ocaml.doc("<p>
  The connector-specific profile credentials required by Infor Nexus.
</p>")
type inforNexusConnectorProfileCredentials = {
  @ocaml.doc("<p>
  The encryption keys used to encrypt data.
</p>")
  datakey: key,
  @ocaml.doc("<p>
  The secret key used to sign requests.
</p>")
  secretAccessKey: key,
  @ocaml.doc("<p>
  The identifier for the user.
</p>")
  userId: username,
  @ocaml.doc("<p>
  The Access Key portion of the credentials.
</p>")
  accessKeyId: accessKeyId,
}
@ocaml.doc("<p>
Specifies the configuration used when importing incremental records from the source.
</p>")
type incrementalPullConfig = {
  @ocaml.doc("<p>
      A field that specifies the date time or timestamp field as the criteria to use when importing incremental records from the source.
    </p>")
  datetimeTypeFieldName: option<datetimeTypeFieldName>,
}
@ocaml.doc("<p>
      A list of field names that can be used as an ID field when performing a write operation.
    </p>")
type idFieldNameList = array<name>
@ocaml.doc("<p>
  The properties that are applied when Google Analytics is being used as a source.
</p>")
type googleAnalyticsSourceProperties = {
  @ocaml.doc("<p>
  The object specified in the Google Analytics flow source.
</p>")
  @as("object")
  object_: object_,
}
type filterOperatorList = array<operator>
@ocaml.doc("<p>
  Describes the details of the flow run, including the timestamp, status, and message.
</p>")
type executionDetails = {
  @ocaml.doc("<p>
  Specifies the status of the most recent flow run.
</p>")
  mostRecentExecutionStatus: option<executionStatus>,
  @ocaml.doc("<p>
  Specifies the time of the most recent flow run.
</p>")
  mostRecentExecutionTime: option<date>,
  @ocaml.doc("<p>
  Describes the details of the most recent flow run.
</p>")
  mostRecentExecutionMessage: option<mostRecentExecutionMessage>,
}
@ocaml.doc("<p>
Provides details in the event of a failed flow, including the failure count and the related error messages.
</p>")
type errorInfo = {
  @ocaml.doc("<p>
Specifies the error message that appears if a flow fails.
</p>")
  executionMessage: option<executionMessage>,
  @ocaml.doc("<p>
Specifies the failure count for the attempted flow.
</p>")
  putFailuresCount: option<long>,
}
@ocaml.doc("<p>
  The settings that determine how Amazon AppFlow handles an error when placing data in the destination. For example, this setting would determine if the flow should fail after one insertion error, or continue and attempt to insert every record regardless of the initial failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details.
  
</p>")
type errorHandlingConfig = {
  @ocaml.doc("<p>
Specifies the name of the Amazon S3 bucket.
</p>")
  bucketName: option<bucketName>,
  @ocaml.doc("<p>
Specifies the Amazon S3 bucket prefix.
</p>")
  bucketPrefix: option<bucketPrefix>,
  @ocaml.doc("<p>
Specifies if the flow should fail after the first instance of a failure when attempting to place data in the destination.
</p>")
  failOnFirstDestinationError: option<boolean_>,
}
@ocaml.doc("<p>
  The properties that are applied when Dynatrace is being used as a source.
</p>")
type dynatraceSourceProperties = {
  @ocaml.doc("<p>
  The object specified in the Dynatrace flow source.
</p>")
  @as("object")
  object_: object_,
}
@ocaml.doc("<p>
  The connector-specific profile properties required by Dynatrace.
</p>")
type dynatraceConnectorProfileProperties = {
  @ocaml.doc("<p>
  The location of the Dynatrace resource.
</p>")
  instanceUrl: instanceUrl,
}
@ocaml.doc("<p>
  The connector-specific profile credentials required by Dynatrace.
</p>")
type dynatraceConnectorProfileCredentials = {
  @ocaml.doc("<p>
  The API tokens used by Dynatrace API to authenticate various API calls. 
</p>")
  apiToken: apiToken,
}
@ocaml.doc("<p>
  The properties that are applied when Datadog is being used as a source.
</p>")
type datadogSourceProperties = {
  @ocaml.doc("<p>
  The object specified in the Datadog flow source.
</p>")
  @as("object")
  object_: object_,
}
@ocaml.doc("<p>
  The connector-specific profile properties required by Datadog.
</p>")
type datadogConnectorProfileProperties = {
  @ocaml.doc("<p>
 The location of the Datadog resource.
</p>")
  instanceUrl: instanceUrl,
}
@ocaml.doc("<p>
  The connector-specific credentials required by Datadog.
</p>")
type datadogConnectorProfileCredentials = {
  @ocaml.doc("<p>
  Application keys, in conjunction with your API key, give you full access to Datadog’s programmatic API. Application keys are associated with the user account that created them. The application key is used to log all requests made to the API. 
</p>")
  applicationKey: applicationKey,
  @ocaml.doc("<p>
  A unique alphanumeric identifier used to authenticate a user, developer, or calling program to your API.
</p>")
  apiKey: apiKey,
}
@ocaml.doc("<p>
      The properties that are applied when Amazon Connect Customer Profiles is used as a destination.
    </p>")
type customerProfilesDestinationProperties = {
  @ocaml.doc("<p>
      The object specified in the Amazon Connect Customer Profiles flow destination.
    </p>")
  objectTypeName: option<objectTypeName>,
  @ocaml.doc("<p>
      The unique name of the Amazon Connect Customer Profiles domain.
    </p>")
  domainName: domainName,
}
type connectorTypeList = array<connectorType>
type connectorProfileNameList = array<connectorProfileName>
@ocaml.doc("<p>
The operation to be performed on the provided source fields.
</p>")
type connectorOperator = {
  @ocaml.doc("<p>
  The operation to be performed on the provided Zendesk source fields.
</p>")
  @as("Zendesk")
  zendesk: option<zendeskConnectorOperator>,
  @ocaml.doc("<p>
  The operation to be performed on the provided Veeva source fields.
</p>")
  @as("Veeva")
  veeva: option<veevaConnectorOperator>,
  @ocaml.doc("<p>
  The operation to be performed on the provided Trend Micro source fields.
</p>")
  @as("Trendmicro")
  trendmicro: option<trendmicroConnectorOperator>,
  @ocaml.doc("<p>
  The operation to be performed on the provided Slack source fields.
</p>")
  @as("Slack")
  slack: option<slackConnectorOperator>,
  @ocaml.doc("<p>
  The operation to be performed on the provided Singular source fields.
</p>")
  @as("Singular")
  singular: option<singularConnectorOperator>,
  @ocaml.doc("<p>
  The operation to be performed on the provided ServiceNow source fields.
</p>")
  @as("ServiceNow")
  serviceNow: option<serviceNowConnectorOperator>,
  @ocaml.doc("<p>
  The operation to be performed on the provided Salesforce source fields.
</p>")
  @as("Salesforce")
  salesforce: option<salesforceConnectorOperator>,
  @ocaml.doc("<p>
  The operation to be performed on the provided Amazon S3 source fields.
</p>")
  @as("S3")
  s3: option<s3ConnectorOperator>,
  @ocaml.doc("<p>
  The operation to be performed on the provided Marketo source fields.
</p>")
  @as("Marketo")
  marketo: option<marketoConnectorOperator>,
  @ocaml.doc("<p>
  The operation to be performed on the provided Infor Nexus source fields.
</p>")
  @as("InforNexus")
  inforNexus: option<inforNexusConnectorOperator>,
  @ocaml.doc("<p>
  The operation to be performed on the provided Google Analytics source fields.
</p>")
  @as("GoogleAnalytics")
  googleAnalytics: option<googleAnalyticsConnectorOperator>,
  @ocaml.doc("<p>
  The operation to be performed on the provided Dynatrace source fields.
</p>")
  @as("Dynatrace")
  dynatrace: option<dynatraceConnectorOperator>,
  @ocaml.doc("<p>
  The operation to be performed on the provided Datadog source fields.
</p>")
  @as("Datadog")
  datadog: option<datadogConnectorOperator>,
  @ocaml.doc("<p>
      The operation to be performed on the provided Amplitude source fields.
    </p>")
  @as("Amplitude")
  amplitude: option<amplitudeConnectorOperator>,
}
@ocaml.doc("<p>
 Used by select connectors for which the OAuth workflow is supported, such as Salesforce, Google Analytics, Marketo, Zendesk, and Slack.
</p>")
type connectorOAuthRequest = {
  @ocaml.doc("<p>
      The URL to which the authentication server redirects the browser after authorization has been granted.
    </p>")
  redirectUri: option<redirectUri>,
  @ocaml.doc("<p>
 The code provided by the connector when it has been authenticated via the connected app.
</p>")
  authCode: option<authCode>,
}
@ocaml.doc("<p>
The high-level entity that can be queried in Amazon AppFlow. For example, a Salesforce entity might be an <i>Account</i> or <i>Opportunity</i>, whereas a ServiceNow entity might be an <i>Incident</i>.

</p>")
type connectorEntity = {
  @ocaml.doc("<p>
Specifies whether the connector entity is a parent or a category and has more entities nested underneath it. If another call is made with <code>entitiesPath = \"the_current_entity_name_with_hasNestedEntities_true\"</code>, then it returns the nested entities underneath it. This provides a way to retrieve all supported entities in a recursive fashion.
</p>")
  hasNestedEntities: option<boolean_>,
  @ocaml.doc("<p>
The label applied to the connector entity.
</p>")
  label: option<label>,
  @ocaml.doc("<p>
The name of the connector entity.
</p>")
  name: name,
}
@ocaml.doc("<p>
  The properties that are applied when Amplitude is being used as a source.
</p>")
type amplitudeSourceProperties = {
  @ocaml.doc("<p>
The object specified in the Amplitude flow source.
</p>")
  @as("object")
  object_: object_,
}
@ocaml.doc("<p>
  The connector-specific credentials required when using Amplitude.
</p>")
type amplitudeConnectorProfileCredentials = {
  @ocaml.doc("<p>
  The Secret Access Key portion of the credentials.
</p>")
  secretKey: secretKey,
  @ocaml.doc("<p>
  A unique alphanumeric identifier used to authenticate a user, developer, or calling program to your API.
</p>")
  apiKey: apiKey,
}
@ocaml.doc("<p>
The aggregation settings that you can use to customize the output format of your flow data. 
</p>")
type aggregationConfig = {
  @ocaml.doc("<p>
 Specifies whether Amazon AppFlow aggregates the flow records into a single file, or leave them unaggregated.  
</p>")
  aggregationType: option<aggregationType>,
}
@ocaml.doc("<p>
  The connector metadata specific to Zendesk.
</p>")
type zendeskMetadata = {
  @ocaml.doc("<p>
      The desired authorization scope for the Zendesk account.
    </p>")
  oAuthScopes: option<oauthScopeList>,
}
type zendeskDestinationProperties = {
  writeOperationType: option<writeOperationType>,
  errorHandlingConfig: option<errorHandlingConfig>,
  idFieldNames: option<idFieldNameList>,
  @as("object") object_: object_,
}
@ocaml.doc("<p>
  The connector-specific profile credentials required when using Zendesk.
</p>")
type zendeskConnectorProfileCredentials = {
  @ocaml.doc("<p>
 The OAuth requirement needed to request security tokens from the connector endpoint.
</p>")
  oAuthRequest: option<connectorOAuthRequest>,
  @ocaml.doc("<p>
  The credentials used to access protected Zendesk resources.
</p>")
  accessToken: option<accessToken>,
  @ocaml.doc("<p>
 The client secret used by the OAuth client to authenticate to the authorization server. 
</p>")
  clientSecret: clientSecret,
  @ocaml.doc("<p>
  The identifier for the desired client.
</p>")
  clientId: clientId,
}
@ocaml.doc("<p>
      The configuration that determines how Amazon AppFlow formats the flow output data when Upsolver is used as the destination.
    </p>")
type upsolverS3OutputFormatConfig = {
  aggregationConfig: option<aggregationConfig>,
  prefixConfig: prefixConfig,
  @ocaml.doc("<p>
      Indicates the file type that Amazon AppFlow places in the Upsolver Amazon S3 bucket.
    </p>")
  fileType: option<fileType>,
}
@ocaml.doc("<p>
  Specifies the configuration details that control the trigger for a flow. Currently, these settings only apply to the <code>Scheduled</code> trigger type.
</p>")
type triggerProperties = {
  @ocaml.doc("<p>
  Specifies the configuration details of a schedule-triggered flow as defined by the user. 
</p>")
  @as("Scheduled")
  scheduled: option<scheduledTriggerProperties>,
}
@ocaml.doc("<p>
  A class for modeling different type of tasks. Task implementation varies based on the <code>TaskType</code>.
</p>")
type task = {
  @ocaml.doc("<p>
 A map used to store task-related information. The execution service looks for particular information based on the <code>TaskType</code>.
</p>")
  taskProperties: option<taskPropertiesMap>,
  @ocaml.doc("<p>
Specifies the particular task implementation that Amazon AppFlow performs.
</p>")
  taskType: taskType,
  @ocaml.doc("<p>
  A field in a destination connector, or a field value against which Amazon AppFlow validates a source field.
</p>")
  destinationField: option<destinationField>,
  @ocaml.doc("<p>
The operation to be performed on the provided source fields.
</p>")
  connectorOperator: option<connectorOperator>,
  @ocaml.doc("<p>
The source fields to which a particular task is applied.
</p>")
  sourceFields: sourceFields,
}
@ocaml.doc("<p>
 Specifies the information that is required to query a particular connector.
</p>")
type sourceConnectorProperties = {
  @ocaml.doc("<p>
  Specifies the information that is required for querying Zendesk.
</p>")
  @as("Zendesk")
  zendesk: option<zendeskSourceProperties>,
  @ocaml.doc("<p>
  Specifies the information that is required for querying Veeva.
</p>")
  @as("Veeva")
  veeva: option<veevaSourceProperties>,
  @ocaml.doc("<p>
  Specifies the information that is required for querying Trend Micro.
</p>")
  @as("Trendmicro")
  trendmicro: option<trendmicroSourceProperties>,
  @ocaml.doc("<p>
  Specifies the information that is required for querying Slack.
</p>")
  @as("Slack")
  slack: option<slackSourceProperties>,
  @ocaml.doc("<p>
  Specifies the information that is required for querying Singular.
</p>")
  @as("Singular")
  singular: option<singularSourceProperties>,
  @ocaml.doc("<p>
  Specifies the information that is required for querying ServiceNow.
</p>")
  @as("ServiceNow")
  serviceNow: option<serviceNowSourceProperties>,
  @ocaml.doc("<p>
  Specifies the information that is required for querying Salesforce.
</p>")
  @as("Salesforce")
  salesforce: option<salesforceSourceProperties>,
  @ocaml.doc("<p>
  Specifies the information that is required for querying Amazon S3.
</p>")
  @as("S3")
  s3: option<s3SourceProperties>,
  @ocaml.doc("<p>
  Specifies the information that is required for querying Marketo.
</p>")
  @as("Marketo")
  marketo: option<marketoSourceProperties>,
  @ocaml.doc("<p>
  Specifies the information that is required for querying Infor Nexus.
</p>")
  @as("InforNexus")
  inforNexus: option<inforNexusSourceProperties>,
  @ocaml.doc("<p>
  Specifies the information that is required for querying Google Analytics.
</p>")
  @as("GoogleAnalytics")
  googleAnalytics: option<googleAnalyticsSourceProperties>,
  @ocaml.doc("<p>
  Specifies the information that is required for querying Dynatrace.
</p>")
  @as("Dynatrace")
  dynatrace: option<dynatraceSourceProperties>,
  @ocaml.doc("<p>
  Specifies the information that is required for querying Datadog.
</p>")
  @as("Datadog")
  datadog: option<datadogSourceProperties>,
  @ocaml.doc("<p>
  Specifies the information that is required for querying Amplitude.
</p>")
  @as("Amplitude")
  amplitude: option<amplitudeSourceProperties>,
}
@ocaml.doc("<p>
  The connector metadata specific to Snowflake.
</p>")
type snowflakeMetadata = {
  @ocaml.doc("<p>
Specifies the supported AWS Regions when using Snowflake.
</p>")
  supportedRegions: option<regionList>,
}
@ocaml.doc("<p>
  The properties that are applied when Snowflake is being used as a destination.
</p>")
type snowflakeDestinationProperties = {
  @ocaml.doc("<p>
  The settings that determine how Amazon AppFlow handles an error when placing data in the Snowflake destination. For example, this setting would determine if the flow should fail after one insertion error, or continue and attempt to insert every record regardless of the initial failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details.
</p>")
  errorHandlingConfig: option<errorHandlingConfig>,
  @ocaml.doc("<p>
  The object key for the destination bucket in which Amazon AppFlow places the files.
</p>")
  bucketPrefix: option<bucketPrefix>,
  @ocaml.doc("<p>
 The intermediate bucket that Amazon AppFlow uses when moving data into Snowflake.
</p>")
  intermediateBucketName: bucketName,
  @ocaml.doc("<p>
  The object specified in the Snowflake flow destination.
</p>")
  @as("object")
  object_: object_,
}
@ocaml.doc("<p>
  The connector metadata specific to Slack.
</p>")
type slackMetadata = {
  @ocaml.doc("<p>
The desired authorization scope for the Slack account.
</p>")
  oAuthScopes: option<oauthScopeList>,
}
@ocaml.doc("<p>
  The connector-specific profile credentials required when using Slack.
</p>")
type slackConnectorProfileCredentials = {
  @ocaml.doc("<p>
  The OAuth requirement needed to request security tokens from the connector endpoint.
</p>")
  oAuthRequest: option<connectorOAuthRequest>,
  @ocaml.doc("<p>
  The credentials used to access protected Slack resources.
</p>")
  accessToken: option<accessToken>,
  @ocaml.doc("<p>
  The client secret used by the OAuth client to authenticate to the authorization server. 
</p>")
  clientSecret: clientSecret,
  @ocaml.doc("<p>
  The identifier for the client.
</p>")
  clientId: clientId,
}
@ocaml.doc("<p>
  The connector metadata specific to Salesforce.
</p>")
type salesforceMetadata = {
  @ocaml.doc("<p>
    The desired authorization scope for the Salesforce account.
</p>")
  oAuthScopes: option<oauthScopeList>,
}
@ocaml.doc("<p>
  The properties that are applied when Salesforce is being used as a destination.
</p>")
type salesforceDestinationProperties = {
  @ocaml.doc("<p>
      This specifies the type of write operation to be performed in Salesforce. When the value is <code>UPSERT</code>, then <code>idFieldNames</code> is required.
    </p>")
  writeOperationType: option<writeOperationType>,
  @ocaml.doc("<p>
  The settings that determine how Amazon AppFlow handles an error when placing data in the Salesforce destination. For example, this setting would determine if the flow should fail after one insertion error, or continue and attempt to insert every record regardless of the initial failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details.
</p>")
  errorHandlingConfig: option<errorHandlingConfig>,
  @ocaml.doc("<p>
      The name of the field that Amazon AppFlow uses as an ID when performing a write operation such as update or delete.
    </p>")
  idFieldNames: option<idFieldNameList>,
  @ocaml.doc("<p>
  The object specified in the Salesforce flow destination.
</p>")
  @as("object")
  object_: object_,
}
@ocaml.doc("<p>
  The connector-specific profile credentials required when using Salesforce.
</p>")
type salesforceConnectorProfileCredentials = {
  @ocaml.doc("<p>
      The secret manager ARN, which contains the client ID and client secret of the connected app. 
    </p>")
  clientCredentialsArn: option<clientCredentialsArn>,
  @ocaml.doc("<p>
  The OAuth requirement needed to request security tokens from the connector endpoint.
</p>")
  oAuthRequest: option<connectorOAuthRequest>,
  @ocaml.doc("<p>
  The credentials used to acquire new access tokens. 
</p>")
  refreshToken: option<refreshToken>,
  @ocaml.doc("<p>
  The credentials used to access protected Salesforce resources.
</p>")
  accessToken: option<accessToken>,
}
@ocaml.doc("<p>
The configuration that determines how Amazon AppFlow should format the flow output data when Amazon S3 is used as the destination.
    </p>")
type s3OutputFormatConfig = {
  aggregationConfig: option<aggregationConfig>,
  @ocaml.doc("<p>
      Determines the prefix that Amazon AppFlow applies to the folder name in the Amazon S3 bucket. You can name folders according to the flow frequency and date. 
    </p>")
  prefixConfig: option<prefixConfig>,
  @ocaml.doc("<p>
Indicates the file type that Amazon AppFlow places in the Amazon S3 bucket.
    </p>")
  fileType: option<fileType>,
}
@ocaml.doc("<p>
  The properties that are applied when Amazon Redshift is being used as a destination.
</p>")
type redshiftDestinationProperties = {
  @ocaml.doc("<p>
  The settings that determine how Amazon AppFlow handles an error when placing data in the Amazon Redshift destination. For example, this setting would determine if the flow should fail after one insertion error, or continue and attempt to insert every record regardless of the initial failure. <code>ErrorHandlingConfig</code> is a part of the destination connector details.
</p>")
  errorHandlingConfig: option<errorHandlingConfig>,
  @ocaml.doc("<p>
  The object key for the bucket in which Amazon AppFlow places the destination files.
</p>")
  bucketPrefix: option<bucketPrefix>,
  @ocaml.doc("<p>
 The intermediate bucket that Amazon AppFlow uses when moving data into Amazon Redshift.
</p>")
  intermediateBucketName: bucketName,
  @ocaml.doc("<p>
  The object specified in the Amazon Redshift flow destination.
</p>")
  @as("object")
  object_: object_,
}
@ocaml.doc("<p>
  The connector-specific profile credentials required by Marketo.
</p>")
type marketoConnectorProfileCredentials = {
  @ocaml.doc("<p>
  The OAuth requirement needed to request security tokens from the connector endpoint.
</p>")
  oAuthRequest: option<connectorOAuthRequest>,
  @ocaml.doc("<p>
  The credentials used to access protected Marketo resources.
</p>")
  accessToken: option<accessToken>,
  @ocaml.doc("<p>
  The client secret used by the OAuth client to authenticate to the authorization server. 
</p>")
  clientSecret: clientSecret,
  @ocaml.doc("<p>
  The identifier for the desired client.
</p>")
  clientId: clientId,
}
@ocaml.doc("<p>
      The connector metadata specific to Amazon Honeycode.
    </p>")
type honeycodeMetadata = {
  @ocaml.doc("<p>
      The desired authorization scope for the Amazon Honeycode account.
    </p>")
  oAuthScopes: option<oauthScopeList>,
}
@ocaml.doc("<p>
      The properties that are applied when Amazon Honeycode is used as a destination.
    </p>")
type honeycodeDestinationProperties = {
  errorHandlingConfig: option<errorHandlingConfig>,
  @ocaml.doc("<p>
      The object specified in the Amazon Honeycode flow destination.
    </p>")
  @as("object")
  object_: object_,
}
@ocaml.doc("<p>
      The connector-specific credentials required when using Amazon Honeycode.
    </p>")
type honeycodeConnectorProfileCredentials = {
  oAuthRequest: option<connectorOAuthRequest>,
  @ocaml.doc("<p>
      The credentials used to acquire new access tokens. 
    </p>")
  refreshToken: option<refreshToken>,
  @ocaml.doc("<p>
      The credentials used to access protected Amazon Honeycode resources.
    </p>")
  accessToken: option<accessToken>,
}
@ocaml.doc("<p>
  The connector metadata specific to Google Analytics.
</p>")
type googleAnalyticsMetadata = {
  @ocaml.doc("<p>
  The desired authorization scope for the Google Analytics account.
</p>")
  oAuthScopes: option<oauthScopeList>,
}
@ocaml.doc("<p>
  The connector-specific profile credentials required by Google Analytics.
</p>")
type googleAnalyticsConnectorProfileCredentials = {
  @ocaml.doc("<p>
  The OAuth requirement needed to request security tokens from the connector endpoint.
</p>")
  oAuthRequest: option<connectorOAuthRequest>,
  @ocaml.doc("<p>
  The credentials used to acquire new access tokens. This is required only for OAuth2 access tokens, and is not required for OAuth1 access tokens.
</p>")
  refreshToken: option<refreshToken>,
  @ocaml.doc("<p>
The credentials used to access protected Google Analytics resources.
</p>")
  accessToken: option<accessToken>,
  @ocaml.doc("<p>
  The client secret used by the OAuth client to authenticate to the authorization server. 
</p>")
  clientSecret: clientSecret,
  @ocaml.doc("<p>
  The identifier for the desired client.
</p>")
  clientId: clientId,
}
@ocaml.doc("<p>
The properties of the flow, such as its source, destination, trigger type, and so on.
</p>")
type flowDefinition = {
  @ocaml.doc("<p>
  Describes the details of the most recent flow run.
</p>")
  lastRunExecutionDetails: option<executionDetails>,
  @ocaml.doc("<p>
The tags used to organize, track, or control access for your flow. 
</p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>
  Specifies the account user name that most recently updated the flow. 
</p>")
  lastUpdatedBy: option<updatedBy>,
  @ocaml.doc("<p>
  The ARN of the user who created the flow.
</p>")
  createdBy: option<createdBy>,
  @ocaml.doc("<p>
  Specifies when the flow was last updated.
</p>")
  lastUpdatedAt: option<date>,
  @ocaml.doc("<p>
  Specifies when the flow was created.
</p>")
  createdAt: option<date>,
  @ocaml.doc("<p>
  Specifies the type of flow trigger. This can be <code>OnDemand</code>, <code>Scheduled</code>, or <code>Event</code>.
</p>")
  triggerType: option<triggerType>,
  @ocaml.doc("<p>
  Specifies the destination connector type, such as Salesforce, Amazon S3, Amplitude, and so on.
</p>")
  destinationConnectorType: option<connectorType>,
  @ocaml.doc("<p>
  Specifies the source connector type, such as Salesforce, Amazon S3, Amplitude, and so on.
</p>")
  sourceConnectorType: option<connectorType>,
  @ocaml.doc("<p>
  Indicates the current status of the flow.
</p>")
  flowStatus: option<flowStatus>,
  @ocaml.doc("<p>
  The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only.
</p>")
  flowName: option<flowName>,
  @ocaml.doc("<p>
  A user-entered description of the flow.
</p>")
  description: option<flowDescription>,
  @ocaml.doc("<p>
  The flow's Amazon Resource Name (ARN).
</p>")
  flowArn: option<flowArn>,
}
@ocaml.doc("<p>
 Contains details regarding the supported field type and the operators that can be applied for filtering.
</p>")
type fieldTypeDetails = {
  @ocaml.doc("<p>
 The list of values that a field can contain. For example, a Boolean <code>fieldType</code> can have two values: \"true\" and \"false\". 
</p>")
  supportedValues: option<supportedValueList>,
  @ocaml.doc("<p>
The list of operators supported by a field.
</p>")
  filterOperators: filterOperatorList,
  @ocaml.doc("<p>
The type of field, such as string, integer, date, and so on.
</p>")
  fieldType: fieldType,
}
@ocaml.doc("<p>
Specifies the end result of the flow run.
</p>")
type executionResult = {
  @ocaml.doc("<p>
The number of records processed in the flow run.
</p>")
  recordsProcessed: option<long>,
  @ocaml.doc("<p>
  The total number of bytes written as a result of the flow run.
</p>")
  bytesWritten: option<long>,
  @ocaml.doc("<p>
  The total number of bytes processed by the flow run.
</p>")
  bytesProcessed: option<long>,
  @ocaml.doc("<p>
Provides any error message information related to the flow run.
</p>")
  errorInfo: option<errorInfo>,
}
@ocaml.doc("<p>
      The properties that are applied when Amazon EventBridge is being used as a destination.
    </p>")
type eventBridgeDestinationProperties = {
  errorHandlingConfig: option<errorHandlingConfig>,
  @ocaml.doc("<p>
      The object specified in the Amazon EventBridge flow destination.
    </p>")
  @as("object")
  object_: object_,
}
@ocaml.doc("<p>
  The properties that can be applied to a field when connector is being used as a destination.
</p>")
type destinationFieldProperties = {
  @ocaml.doc("<p>
      A list of supported write operations. For each write operation listed, this field can be used in <code>idFieldNames</code> when that write operation is present as a destination option. 
    </p>")
  supportedWriteOperations: option<supportedWriteOperationList>,
  @ocaml.doc("<p>
      Specifies whether the field can be updated during an <code>UPDATE</code> or <code>UPSERT</code> write operation.
    </p>")
  isUpdatable: option<boolean_>,
  @ocaml.doc("<p>
      Specifies if the flow run can either insert new rows in the destination field if they do not already exist, or update them if they do.
    </p>")
  isUpsertable: option<boolean_>,
  @ocaml.doc("<p>
  Specifies if the destination field can have a null value.
</p>")
  isNullable: option<boolean_>,
  @ocaml.doc("<p>
  Specifies if the destination field can be created by the current user.
</p>")
  isCreatable: option<boolean_>,
}
@ocaml.doc("<p>
  The connector-specific profile properties required by each connector.
</p>")
type connectorProfileProperties = {
  @ocaml.doc("<p>
  The connector-specific properties required by Zendesk.
</p>")
  @as("Zendesk")
  zendesk: option<zendeskConnectorProfileProperties>,
  @ocaml.doc("<p>
  The connector-specific properties required by Veeva.
</p>")
  @as("Veeva")
  veeva: option<veevaConnectorProfileProperties>,
  @ocaml.doc("<p>
  The connector-specific properties required by Trend Micro.
</p>")
  @as("Trendmicro")
  trendmicro: option<trendmicroConnectorProfileProperties>,
  @ocaml.doc("<p>
The connector-specific properties required by Snowflake.
</p>")
  @as("Snowflake")
  snowflake: option<snowflakeConnectorProfileProperties>,
  @ocaml.doc("<p>
  The connector-specific properties required by Slack.
</p>")
  @as("Slack")
  slack: option<slackConnectorProfileProperties>,
  @ocaml.doc("<p>
  The connector-specific properties required by Singular.
</p>")
  @as("Singular")
  singular: option<singularConnectorProfileProperties>,
  @ocaml.doc("<p>
  The connector-specific properties required by serviceNow.
</p>")
  @as("ServiceNow")
  serviceNow: option<serviceNowConnectorProfileProperties>,
  @ocaml.doc("<p>
  The connector-specific properties required by Salesforce.
</p>")
  @as("Salesforce")
  salesforce: option<salesforceConnectorProfileProperties>,
  @ocaml.doc("<p>
  The connector-specific properties required by Amazon Redshift.
</p>")
  @as("Redshift")
  redshift: option<redshiftConnectorProfileProperties>,
  @ocaml.doc("<p>
  The connector-specific properties required by Marketo.
</p>")
  @as("Marketo")
  marketo: option<marketoConnectorProfileProperties>,
  @ocaml.doc("<p>
  The connector-specific properties required by Infor Nexus.
</p>")
  @as("InforNexus")
  inforNexus: option<inforNexusConnectorProfileProperties>,
  @ocaml.doc("<p>
      The connector-specific properties required by Amazon Honeycode.
    </p>")
  @as("Honeycode")
  honeycode: option<honeycodeConnectorProfileProperties>,
  @ocaml.doc("<p>
  The connector-specific properties required Google Analytics.
</p>")
  @as("GoogleAnalytics")
  googleAnalytics: option<googleAnalyticsConnectorProfileProperties>,
  @ocaml.doc("<p>
  The connector-specific properties required by Dynatrace.
</p>")
  @as("Dynatrace")
  dynatrace: option<dynatraceConnectorProfileProperties>,
  @ocaml.doc("<p>
  The connector-specific properties required by Datadog.
</p>")
  @as("Datadog")
  datadog: option<datadogConnectorProfileProperties>,
  @ocaml.doc("<p>
  The connector-specific properties required by Amplitude.
</p>")
  @as("Amplitude")
  amplitude: option<amplitudeConnectorProfileProperties>,
}
type connectorEntityList = array<connectorEntity>
@ocaml.doc("<p>
      The properties that are applied when Upsolver is used as a destination.
    </p>")
type upsolverDestinationProperties = {
  @ocaml.doc("<p>
      The configuration that determines how data is formatted when Upsolver is used as the flow destination.
    </p>")
  s3OutputFormatConfig: upsolverS3OutputFormatConfig,
  @ocaml.doc("<p>
      The object key for the destination Upsolver Amazon S3 bucket in which Amazon AppFlow places the files.
    </p>")
  bucketPrefix: option<bucketPrefix>,
  @ocaml.doc("<p>
      The Upsolver Amazon S3 bucket name in which Amazon AppFlow places the transferred data.
    </p>")
  bucketName: upsolverBucketName,
}
@ocaml.doc("<p>
  The trigger settings that determine how and when Amazon AppFlow runs the specified flow.

  
</p>")
type triggerConfig = {
  @ocaml.doc("<p>
  Specifies the configuration details of a schedule-triggered flow as defined by the user. Currently, these settings only apply to the <code>Scheduled</code> trigger type.
</p>")
  triggerProperties: option<triggerProperties>,
  @ocaml.doc("<p>
  Specifies the type of flow trigger. This can be <code>OnDemand</code>, <code>Scheduled</code>, or <code>Event</code>.
</p>")
  triggerType: triggerType,
}
type tasks = array<task>
@ocaml.doc("<p>
 Contains details regarding all the supported <code>FieldTypes</code> and their corresponding <code>filterOperators</code> and <code>supportedValues</code>.
</p>")
type supportedFieldTypeDetails = {
  @ocaml.doc("<p>
 The initial supported version for <code>fieldType</code>. If this is later changed to a different version, v2 will be introduced.
</p>")
  v1: fieldTypeDetails,
}
@ocaml.doc("<p>
 Contains information about the configuration of the source connector used in the flow.  
</p>")
type sourceFlowConfig = {
  @ocaml.doc("<p>
      Defines the configuration for a scheduled incremental data pull. If a valid configuration is provided, the fields specified in the configuration are used when querying for the incremental data pull.
    </p>")
  incrementalPullConfig: option<incrementalPullConfig>,
  @ocaml.doc("<p>
  Specifies the information that is required to query a particular source connector.
</p>")
  sourceConnectorProperties: sourceConnectorProperties,
  @ocaml.doc("<p>
  The name of the connector profile. This name must be unique for each connector profile in the AWS account.
</p>")
  connectorProfileName: option<connectorProfileName>,
  @ocaml.doc("<p>
  The type of connector, such as Salesforce, Amplitude, and so on.
</p>")
  connectorType: connectorType,
}
@ocaml.doc("<p>
  The properties that are applied when Amazon S3 is used as a destination.
</p>")
type s3DestinationProperties = {
  s3OutputFormatConfig: option<s3OutputFormatConfig>,
  @ocaml.doc("<p>
  The object key for the destination bucket in which Amazon AppFlow places the files.
</p>")
  bucketPrefix: option<bucketPrefix>,
  @ocaml.doc("<p>
  The Amazon S3 bucket name in which Amazon AppFlow places the transferred data.
</p>")
  bucketName: bucketName,
}
type flowList = array<flowDefinition>
@ocaml.doc("<p>
Specifies information about the past flow run instances for a given flow.
</p>")
type executionRecord = {
  @ocaml.doc("<p>
The timestamp that indicates the last new or updated record to be transferred in the flow run.
</p>")
  dataPullEndTime: option<date>,
  @ocaml.doc("<p>
The timestamp that determines the first new or updated record to be transferred in the flow run. 
</p>")
  dataPullStartTime: option<date>,
  @ocaml.doc("<p>
  Specifies the time of the most recent update.
</p>")
  lastUpdatedAt: option<date>,
  @ocaml.doc("<p>
Specifies the start time of the flow run.
</p>")
  startedAt: option<date>,
  @ocaml.doc("<p>
Describes the result of the given flow run.
</p>")
  executionResult: option<executionResult>,
  @ocaml.doc("<p>
Specifies the flow run status and whether it is in progress, has completed successfully, or has failed.
</p>")
  executionStatus: option<executionStatus>,
  @ocaml.doc("<p>
Specifies the identifier of the given flow run.
</p>")
  executionId: option<executionId>,
}
@ocaml.doc("<p>
 The connector-specific credentials required by a connector.
</p>")
type connectorProfileCredentials = {
  @ocaml.doc("<p>
  The connector-specific credentials required when using Zendesk.
</p>")
  @as("Zendesk")
  zendesk: option<zendeskConnectorProfileCredentials>,
  @ocaml.doc("<p>
  The connector-specific credentials required when using Veeva.
</p>")
  @as("Veeva")
  veeva: option<veevaConnectorProfileCredentials>,
  @ocaml.doc("<p>
  The connector-specific credentials required when using Trend Micro.
</p>")
  @as("Trendmicro")
  trendmicro: option<trendmicroConnectorProfileCredentials>,
  @ocaml.doc("<p>
  The connector-specific credentials required when using Snowflake.
</p>")
  @as("Snowflake")
  snowflake: option<snowflakeConnectorProfileCredentials>,
  @ocaml.doc("<p>
  The connector-specific credentials required when using Slack.
</p>")
  @as("Slack")
  slack: option<slackConnectorProfileCredentials>,
  @ocaml.doc("<p>
  The connector-specific credentials required when using Singular.
</p>")
  @as("Singular")
  singular: option<singularConnectorProfileCredentials>,
  @ocaml.doc("<p>
  The connector-specific credentials required when using ServiceNow.
</p>")
  @as("ServiceNow")
  serviceNow: option<serviceNowConnectorProfileCredentials>,
  @ocaml.doc("<p>
  The connector-specific credentials required when using Salesforce.
</p>")
  @as("Salesforce")
  salesforce: option<salesforceConnectorProfileCredentials>,
  @ocaml.doc("<p>
  The connector-specific credentials required when using Amazon Redshift.
</p>")
  @as("Redshift")
  redshift: option<redshiftConnectorProfileCredentials>,
  @ocaml.doc("<p>
  The connector-specific credentials required when using Marketo.
</p>")
  @as("Marketo")
  marketo: option<marketoConnectorProfileCredentials>,
  @ocaml.doc("<p>
  The connector-specific credentials required when using Infor Nexus.
</p>")
  @as("InforNexus")
  inforNexus: option<inforNexusConnectorProfileCredentials>,
  @ocaml.doc("<p>
      The connector-specific credentials required when using Amazon Honeycode.
    </p>")
  @as("Honeycode")
  honeycode: option<honeycodeConnectorProfileCredentials>,
  @ocaml.doc("<p>
  The connector-specific credentials required when using Google Analytics.
</p>")
  @as("GoogleAnalytics")
  googleAnalytics: option<googleAnalyticsConnectorProfileCredentials>,
  @ocaml.doc("<p>
  The connector-specific credentials required when using Dynatrace.
</p>")
  @as("Dynatrace")
  dynatrace: option<dynatraceConnectorProfileCredentials>,
  @ocaml.doc("<p>
  The connector-specific credentials required when using Datadog.
</p>")
  @as("Datadog")
  datadog: option<datadogConnectorProfileCredentials>,
  @ocaml.doc("<p>
  The connector-specific credentials required when using Amplitude.
</p>")
  @as("Amplitude")
  amplitude: option<amplitudeConnectorProfileCredentials>,
}
@ocaml.doc("<p>
  Describes an instance of a connector. This includes the provided name, credentials ARN, connection-mode, and so on. To keep the API intuitive and extensible, the fields that are common to all types of connector profiles are explicitly specified at the top level. The rest of the connector-specific properties are available via  the <code>connectorProfileProperties</code> field.
</p>")
type connectorProfile = {
  @ocaml.doc("<p>
  Specifies when the connector profile was last updated.
</p>")
  lastUpdatedAt: option<date>,
  @ocaml.doc("<p>
  Specifies when the connector profile was created.
</p>")
  createdAt: option<date>,
  @ocaml.doc("<p>
The connector-specific properties of the profile configuration.
</p>")
  connectorProfileProperties: option<connectorProfileProperties>,
  @ocaml.doc("<p>
  The Amazon Resource Name (ARN) of the connector profile credentials.
</p>")
  credentialsArn: option<arn>,
  @ocaml.doc("<p>
  Indicates the connection mode and if it is public or private.
</p>")
  connectionMode: option<connectionMode>,
  @ocaml.doc("<p>
  The type of connector, such as Salesforce, Amplitude, and so on.
</p>")
  connectorType: option<connectorType>,
  @ocaml.doc("<p>
  The name of the connector profile. The name is unique for each <code>ConnectorProfile</code> in the AWS account.
</p>")
  connectorProfileName: option<connectorProfileName>,
  @ocaml.doc("<p>
The Amazon Resource Name (ARN) of the connector profile.
</p>")
  connectorProfileArn: option<connectorProfileArn>,
}
@ocaml.doc("<p>
  A structure to specify connector-specific metadata such as <code>oAuthScopes</code>, <code>supportedRegions</code>, <code>privateLinkServiceUrl</code>, and so on.
</p>")
type connectorMetadata = {
  @ocaml.doc("<p>
      The connector metadata specific to Amazon Honeycode.
    </p>")
  @as("Honeycode")
  honeycode: option<honeycodeMetadata>,
  @ocaml.doc("<p>
      The connector metadata specific to Amazon Connect Customer Profiles.
    </p>")
  @as("CustomerProfiles")
  customerProfiles: option<customerProfilesMetadata>,
  @ocaml.doc("<p>
      The connector metadata specific to Upsolver.
    </p>")
  @as("Upsolver")
  upsolver: option<upsolverMetadata>,
  @ocaml.doc("<p>
      The connector metadata specific to Amazon EventBridge.
    </p>")
  @as("EventBridge")
  eventBridge: option<eventBridgeMetadata>,
  @ocaml.doc("<p>
  The connector metadata specific to Zendesk.
</p>")
  @as("Zendesk")
  zendesk: option<zendeskMetadata>,
  @ocaml.doc("<p>
  The connector metadata specific to Veeva.
</p>")
  @as("Veeva")
  veeva: option<veevaMetadata>,
  @ocaml.doc("<p>
  The connector metadata specific to Trend Micro.
</p>")
  @as("Trendmicro")
  trendmicro: option<trendmicroMetadata>,
  @ocaml.doc("<p>
  The connector metadata specific to Snowflake.
</p>")
  @as("Snowflake")
  snowflake: option<snowflakeMetadata>,
  @ocaml.doc("<p>
  The connector metadata specific to Slack.
</p>")
  @as("Slack")
  slack: option<slackMetadata>,
  @ocaml.doc("<p>
  The connector metadata specific to Singular.
</p>")
  @as("Singular")
  singular: option<singularMetadata>,
  @ocaml.doc("<p>
  The connector metadata specific to ServiceNow.
</p>")
  @as("ServiceNow")
  serviceNow: option<serviceNowMetadata>,
  @ocaml.doc("<p>
  The connector metadata specific to Salesforce.
</p>")
  @as("Salesforce")
  salesforce: option<salesforceMetadata>,
  @ocaml.doc("<p>
  The connector metadata specific to Amazon S3.
</p>")
  @as("S3")
  s3: option<s3Metadata>,
  @ocaml.doc("<p>
  The connector metadata specific to Amazon Redshift.
</p>")
  @as("Redshift")
  redshift: option<redshiftMetadata>,
  @ocaml.doc("<p>
  The connector metadata specific to Marketo.
</p>")
  @as("Marketo")
  marketo: option<marketoMetadata>,
  @ocaml.doc("<p>
  The connector metadata specific to Infor Nexus.
</p>")
  @as("InforNexus")
  inforNexus: option<inforNexusMetadata>,
  @ocaml.doc("<p>
  The connector metadata specific to Google Analytics.
</p>")
  @as("GoogleAnalytics")
  googleAnalytics: option<googleAnalyticsMetadata>,
  @ocaml.doc("<p>
  The connector metadata specific to Dynatrace.
</p>")
  @as("Dynatrace")
  dynatrace: option<dynatraceMetadata>,
  @ocaml.doc("<p>
  The connector metadata specific to Datadog.
</p>")
  @as("Datadog")
  datadog: option<datadogMetadata>,
  @ocaml.doc("<p>
 The connector metadata specific to Amplitude.
</p>")
  @as("Amplitude")
  amplitude: option<amplitudeMetadata>,
}
type connectorEntityMap = Js.Dict.t<connectorEntityList>
type flowExecutionList = array<executionRecord>
@ocaml.doc("<p>
  This stores the information that is required to query a particular connector.
</p>")
type destinationConnectorProperties = {
  @as("Zendesk") zendesk: option<zendeskDestinationProperties>,
  @ocaml.doc("<p>
      The properties required to query Amazon Connect Customer Profiles.
    </p>")
  @as("CustomerProfiles")
  customerProfiles: option<customerProfilesDestinationProperties>,
  @ocaml.doc("<p>
      The properties required to query Amazon Honeycode.
    </p>")
  @as("Honeycode")
  honeycode: option<honeycodeDestinationProperties>,
  @ocaml.doc("<p>
      The properties required to query Upsolver.
    </p>")
  @as("Upsolver")
  upsolver: option<upsolverDestinationProperties>,
  @ocaml.doc("<p>
      The properties required to query Amazon Lookout for Metrics.
    </p>")
  @as("LookoutMetrics")
  lookoutMetrics: option<lookoutMetricsDestinationProperties>,
  @ocaml.doc("<p>
      The properties required to query Amazon EventBridge.
    </p>")
  @as("EventBridge")
  eventBridge: option<eventBridgeDestinationProperties>,
  @ocaml.doc("<p>
  The properties required to query Snowflake.
</p>")
  @as("Snowflake")
  snowflake: option<snowflakeDestinationProperties>,
  @ocaml.doc("<p>
  The properties required to query Salesforce.
</p>")
  @as("Salesforce")
  salesforce: option<salesforceDestinationProperties>,
  @ocaml.doc("<p>
  The properties required to query Amazon S3.
</p>")
  @as("S3")
  s3: option<s3DestinationProperties>,
  @ocaml.doc("<p>
  The properties required to query Amazon Redshift.
</p>")
  @as("Redshift")
  redshift: option<redshiftDestinationProperties>,
}
type connectorProfileDetailList = array<connectorProfile>
@ocaml.doc("<p>
  Defines the connector-specific configuration and credentials for the connector profile.
</p>")
type connectorProfileConfig = {
  @ocaml.doc("<p>
 The connector-specific credentials required by each connector.
</p>")
  connectorProfileCredentials: connectorProfileCredentials,
  @ocaml.doc("<p>
  The connector-specific properties of the profile configuration.
</p>")
  connectorProfileProperties: connectorProfileProperties,
}
@ocaml.doc("<p>
Describes the data model of a connector field. For example, for an <i>account</i> entity, the fields would be <i>account name</i>, <i>account ID</i>, and so on.
</p>")
type connectorEntityField = {
  @ocaml.doc("<p>
  The properties applied to a field when the connector is being used as a destination.
</p>")
  destinationProperties: option<destinationFieldProperties>,
  @ocaml.doc("<p>
  The properties that can be applied to a field when the connector is being used as a source.
</p>")
  sourceProperties: option<sourceFieldProperties>,
  @ocaml.doc("<p>
  A description of the connector entity field.
</p>")
  description: option<description>,
  @ocaml.doc("<p>
 Contains details regarding the supported <code>FieldType</code>, including the corresponding <code>filterOperators</code> and <code>supportedValues</code>.
</p>")
  supportedFieldTypeDetails: option<supportedFieldTypeDetails>,
  @ocaml.doc("<p>
The label applied to a connector entity field.
</p>")
  label: option<label>,
  @ocaml.doc("<p>
The unique identifier of the connector field.
</p>")
  identifier: identifier,
}
@ocaml.doc("<p>
The configuration settings related to a given connector.
</p>")
type connectorConfiguration = {
  @ocaml.doc("<p>
Specifies connector-specific metadata such as <code>oAuthScopes</code>, <code>supportedRegions</code>, <code>privateLinkServiceUrl</code>, and so on.
</p>")
  connectorMetadata: option<connectorMetadata>,
  @ocaml.doc("<p>
Specifies the supported trigger types for the flow. 
</p>")
  supportedTriggerTypes: option<triggerTypeList>,
  @ocaml.doc("<p>
Specifies if a PrivateLink endpoint URL is required.
</p>")
  isPrivateLinkEndpointUrlRequired: option<boolean_>,
  @ocaml.doc("<p>
Specifies if PrivateLink is enabled for that connector.
</p>")
  isPrivateLinkEnabled: option<boolean_>,
  @ocaml.doc("<p>
    Specifies the supported flow frequency for that connector.
    </p>")
  supportedSchedulingFrequencies: option<schedulingFrequencyTypeList>,
  @ocaml.doc("<p>
Lists the connectors that are available for use as destinations.
</p>")
  supportedDestinationConnectors: option<connectorTypeList>,
  @ocaml.doc("<p>
Specifies whether the connector can be used as a destination.
</p>")
  canUseAsDestination: option<boolean_>,
  @ocaml.doc("<p>
  Specifies whether the connector can be used as a source.
</p>")
  canUseAsSource: option<boolean_>,
}
@ocaml.doc("<p>
  Contains information about the configuration of destination connectors present in the flow.  
</p>")
type destinationFlowConfig = {
  @ocaml.doc("<p>
  This stores the information that is required to query a particular connector.
</p>")
  destinationConnectorProperties: destinationConnectorProperties,
  @ocaml.doc("<p>
  The name of the connector profile. This name must be unique for each connector profile in the AWS account.
</p>")
  connectorProfileName: option<connectorProfileName>,
  @ocaml.doc("<p>
  The type of connector, such as Salesforce, Amplitude, and so on.
</p>")
  connectorType: connectorType,
}
type connectorEntityFieldList = array<connectorEntityField>
type connectorConfigurationsMap = Js.Dict.t<connectorConfiguration>
type destinationFlowConfigList = array<destinationFlowConfig>
@ocaml.doc("<p>Welcome to the Amazon AppFlow API reference. This guide is for developers who need detailed information about the Amazon AppFlow API operations, data types, and errors. </p>
    
         <p>Amazon AppFlow is a fully managed integration service that enables you to securely transfer data between software as a service (SaaS) applications like Salesforce, Marketo, Slack, and ServiceNow, and AWS services like Amazon S3 and Amazon Redshift. </p>
    

    
         <p>Use the following links to get started on the Amazon AppFlow API:</p>
    
         <ul>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Operations.html\">Actions</a>: An alphabetical list of all Amazon AppFlow API operations.</p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Types.html\">Data types</a>: An alphabetical list of all Amazon AppFlow data types.</p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonParameters.html\">Common parameters</a>: Parameters that all Query operations can use.</p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonErrors.html\">Common errors</a>: Client and server errors that all operations can return.</p>
            </li>
         </ul>
    
         <p>If you're new to Amazon AppFlow, we recommend that you review the <a href=\"https://docs.aws.amazon.com/appflow/latest/userguide/what-is-appflow.html\">Amazon AppFlow User Guide</a>.</p>
         <p>Amazon AppFlow API users can use vendor-specific mechanisms for OAuth, and include applicable OAuth attributes (such as <code>auth-code</code> and <code>redirecturi</code>) with the connector-specific <code>ConnectorProfileProperties</code> when creating a new connector profile using Amazon AppFlow API operations. For example, Salesforce users can refer to the <a href=\"https://help.salesforce.com/articleView?id=remoteaccess_authenticate.htm\">
               <i>Authorize Apps with OAuth</i>
            </a> documentation.</p>")
module StopFlow = {
  type t
  type request = {
    @ocaml.doc("<p>
  The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only.
</p>")
    flowName: flowName,
  }
  type response = {
    @ocaml.doc("<p>
  Indicates the current status of the flow.
</p>")
    flowStatus: option<flowStatus>,
    @ocaml.doc("<p>
  The flow's Amazon Resource Name (ARN).
</p>")
    flowArn: option<flowArn>,
  }
  @module("@aws-sdk/client-appflow") @new external new: request => t = "StopFlowCommand"
  let make = (~flowName, ()) => new({flowName: flowName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartFlow = {
  type t
  type request = {
    @ocaml.doc("<p>
  The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only.
</p>")
    flowName: flowName,
  }
  type response = {
    @ocaml.doc("<p>
      Returns the internal execution ID of an on-demand flow when the flow is started. For scheduled or event-triggered flows, this value is null.
    </p>")
    executionId: option<executionId>,
    @ocaml.doc("<p>
  Indicates the current status of the flow.
  
</p>")
    flowStatus: option<flowStatus>,
    @ocaml.doc("<p>
  The flow's Amazon Resource Name (ARN).
</p>")
    flowArn: option<flowArn>,
  }
  @module("@aws-sdk/client-appflow") @new external new: request => t = "StartFlowCommand"
  let make = (~flowName, ()) => new({flowName: flowName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFlow = {
  type t
  type request = {
    @ocaml.doc("<p>
  Indicates whether Amazon AppFlow should delete the flow, even if it is currently in use.
</p>")
    forceDelete: option<boolean_>,
    @ocaml.doc("<p>
  The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only.
</p>")
    flowName: flowName,
  }

  @module("@aws-sdk/client-appflow") @new external new: request => t = "DeleteFlowCommand"
  let make = (~flowName, ~forceDelete=?, ()) => new({forceDelete: forceDelete, flowName: flowName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteConnectorProfile = {
  type t
  type request = {
    @ocaml.doc("<p>
Indicates whether Amazon AppFlow should delete the profile, even if it is currently in use in one or more flows.
</p>")
    forceDelete: option<boolean_>,
    @ocaml.doc("<p>
  The name of the connector profile. The name is unique for each <code>ConnectorProfile</code> in your account.
</p>")
    connectorProfileName: connectorProfileName,
  }

  @module("@aws-sdk/client-appflow") @new
  external new: request => t = "DeleteConnectorProfileCommand"
  let make = (~connectorProfileName, ~forceDelete=?, ()) =>
    new({forceDelete: forceDelete, connectorProfileName: connectorProfileName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>
The tag keys associated with the tag that you want to remove from your flow.
</p>")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>
  The Amazon Resource Name (ARN) of the flow that you want to untag.
</p>")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-appflow") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>
  The tags used to organize, track, or control access for your flow. 
</p>")
    tags: tagMap,
    @ocaml.doc("<p>
  The Amazon Resource Name (ARN) of the flow that you want to tag.
</p>")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-appflow") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>
  The Amazon Resource Name (ARN) of the specified flow. 
</p>")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>
 The tags used to organize, track, or control access for your flow. 
</p>")
    tags: option<tagMap>,
  }
  @module("@aws-sdk/client-appflow") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFlows = {
  type t
  type request = {
    @ocaml.doc("<p>
 The pagination token for next page of data.
</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
      Specifies the maximum number of items that should be returned in the result set.
    </p>")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>
The pagination token for next page of data.
</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
The list of flows associated with your account.
</p>")
    flows: option<flowList>,
  }
  @module("@aws-sdk/client-appflow") @new external new: request => t = "ListFlowsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListConnectorEntities = {
  type t
  type request = {
    @ocaml.doc("<p>
  This optional parameter is specific to connector implementation. Some connectors support multiple levels or categories of entities. You can find out the list of roots for such providers by sending a request without the <code>entitiesPath</code> parameter. If the connector supports entities at different roots, this initial request returns the list of roots. Otherwise, this request returns all entities supported by the provider.
</p>")
    entitiesPath: option<entitiesPath>,
    @ocaml.doc("<p>
  The type of connector, such as Salesforce, Amplitude, and so on.
</p>")
    connectorType: option<connectorType>,
    @ocaml.doc("<p>
  The name of the connector profile. The name is unique for each <code>ConnectorProfile</code> in the AWS account, and is used to query the downstream connector.
</p>")
    connectorProfileName: option<connectorProfileName>,
  }
  type response = {
    @ocaml.doc("<p>
 The response of <code>ListConnectorEntities</code> lists entities grouped by category. This map's key represents the group name, and its value contains the list of entities belonging to that group.
</p>")
    connectorEntityMap: connectorEntityMap,
  }
  @module("@aws-sdk/client-appflow") @new
  external new: request => t = "ListConnectorEntitiesCommand"
  let make = (~entitiesPath=?, ~connectorType=?, ~connectorProfileName=?, ()) =>
    new({
      entitiesPath: entitiesPath,
      connectorType: connectorType,
      connectorProfileName: connectorProfileName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateConnectorProfile = {
  type t
  type request = {
    @ocaml.doc("<p>
  Defines the connector-specific profile configuration and credentials.
</p>")
    connectorProfileConfig: connectorProfileConfig,
    @ocaml.doc("<p>
  Indicates the connection mode and if it is public or private.
</p>")
    connectionMode: connectionMode,
    @ocaml.doc("<p>
  The name of the connector profile and is unique for each <code>ConnectorProfile</code> in the AWS Account.
</p>")
    connectorProfileName: connectorProfileName,
  }
  type response = {
    @ocaml.doc("<p>
  The Amazon Resource Name (ARN) of the connector profile.
</p>")
    connectorProfileArn: option<connectorProfileArn>,
  }
  @module("@aws-sdk/client-appflow") @new
  external new: request => t = "UpdateConnectorProfileCommand"
  let make = (~connectorProfileConfig, ~connectionMode, ~connectorProfileName, ()) =>
    new({
      connectorProfileConfig: connectorProfileConfig,
      connectionMode: connectionMode,
      connectorProfileName: connectorProfileName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFlowExecutionRecords = {
  type t
  type request = {
    @ocaml.doc("<p>
The pagination token for the next page of data.
</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
    Specifies the maximum number of items that should be returned in the result set. The default for <code>maxResults</code> is 20 (for all paginated API operations).
  </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
  The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only.
</p>")
    flowName: flowName,
  }
  type response = {
    @ocaml.doc("<p>
 The pagination token for the next page of data.
</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
Returns a list of all instances when this flow was run.
</p>")
    flowExecutions: option<flowExecutionList>,
  }
  @module("@aws-sdk/client-appflow") @new
  external new: request => t = "DescribeFlowExecutionRecordsCommand"
  let make = (~flowName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, flowName: flowName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConnectorProfiles = {
  type t
  type request = {
    @ocaml.doc("<p>
The pagination token for the next page of data.
</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
       Specifies the maximum number of items that should be returned in the result set. The default for <code>maxResults</code> is 20 (for all paginated API operations).
    </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
  The type of connector, such as Salesforce, Amplitude, and so on.
</p>")
    connectorType: option<connectorType>,
    @ocaml.doc("<p>
  The name of the connector profile. The name is unique for each <code>ConnectorProfile</code> in the AWS account.
</p>")
    connectorProfileNames: option<connectorProfileNameList>,
  }
  type response = {
    @ocaml.doc("<p>
  The pagination token for the next page of data. If <code>nextToken=null</code>, this means that all records have been fetched.
</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
Returns information about the connector profiles associated with the flow.
</p>")
    connectorProfileDetails: option<connectorProfileDetailList>,
  }
  @module("@aws-sdk/client-appflow") @new
  external new: request => t = "DescribeConnectorProfilesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~connectorType=?, ~connectorProfileNames=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      connectorType: connectorType,
      connectorProfileNames: connectorProfileNames,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateConnectorProfile = {
  type t
  type request = {
    @ocaml.doc("<p>
Defines the connector-specific configuration and credentials.
</p>")
    connectorProfileConfig: connectorProfileConfig,
    @ocaml.doc("<p>
  Indicates the connection mode and specifies whether it is public or private. Private flows use AWS PrivateLink to route data over AWS infrastructure without exposing it to the public internet.
</p>")
    connectionMode: connectionMode,
    @ocaml.doc("<p>
The type of connector, such as Salesforce, Amplitude, and so on.
</p>")
    connectorType: connectorType,
    @ocaml.doc("<p>
  The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
</p>")
    kmsArn: option<kmsarn>,
    @ocaml.doc("<p>
  The name of the connector profile. The name is unique for each <code>ConnectorProfile</code> in your AWS account.
</p>")
    connectorProfileName: connectorProfileName,
  }
  type response = {
    @ocaml.doc("<p>
  The Amazon Resource Name (ARN) of the connector profile.
</p>")
    connectorProfileArn: option<connectorProfileArn>,
  }
  @module("@aws-sdk/client-appflow") @new
  external new: request => t = "CreateConnectorProfileCommand"
  let make = (
    ~connectorProfileConfig,
    ~connectionMode,
    ~connectorType,
    ~connectorProfileName,
    ~kmsArn=?,
    (),
  ) =>
    new({
      connectorProfileConfig: connectorProfileConfig,
      connectionMode: connectionMode,
      connectorType: connectorType,
      kmsArn: kmsArn,
      connectorProfileName: connectorProfileName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConnectors = {
  type t
  type request = {
    @ocaml.doc("<p>
The pagination token for the next page of data.
</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
  The type of connector, such as Salesforce, Amplitude, and so on.
</p>")
    connectorTypes: option<connectorTypeList>,
  }
  type response = {
    @ocaml.doc("<p>
The pagination token for the next page of data.
</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
  The configuration that is applied to the connectors used in the flow.
</p>")
    connectorConfigurations: option<connectorConfigurationsMap>,
  }
  @module("@aws-sdk/client-appflow") @new external new: request => t = "DescribeConnectorsCommand"
  let make = (~nextToken=?, ~connectorTypes=?, ()) =>
    new({nextToken: nextToken, connectorTypes: connectorTypes})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConnectorEntity = {
  type t
  type request = {
    @ocaml.doc("<p>
  The name of the connector profile. The name is unique for each <code>ConnectorProfile</code> in the AWS account.
</p>")
    connectorProfileName: option<connectorProfileName>,
    @ocaml.doc("<p>
  The type of connector application, such as Salesforce, Amplitude, and so on.
</p>")
    connectorType: option<connectorType>,
    @ocaml.doc("<p>
 The entity name for that connector.
</p>")
    connectorEntityName: name,
  }
  type response = {
    @ocaml.doc("<p>
  Describes the fields for that connector entity. For example, for an <i>account</i> entity, the fields would be <i>account name</i>, <i>account ID</i>, and so on.
</p>")
    connectorEntityFields: connectorEntityFieldList,
  }
  @module("@aws-sdk/client-appflow") @new
  external new: request => t = "DescribeConnectorEntityCommand"
  let make = (~connectorEntityName, ~connectorProfileName=?, ~connectorType=?, ()) =>
    new({
      connectorProfileName: connectorProfileName,
      connectorType: connectorType,
      connectorEntityName: connectorEntityName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFlow = {
  type t
  type request = {
    @ocaml.doc("<p>
  A list of tasks that Amazon AppFlow performs while transferring the data in the flow run.
</p>")
    tasks: tasks,
    @ocaml.doc("<p>
  The configuration that controls how Amazon AppFlow transfers data to the destination connector.
</p>")
    destinationFlowConfigList: destinationFlowConfigList,
    sourceFlowConfig: option<sourceFlowConfig>,
    @ocaml.doc("<p>
  The trigger settings that determine how and when the flow runs.
</p>")
    triggerConfig: triggerConfig,
    @ocaml.doc("<p>
  A description of the flow.
</p>")
    description: option<flowDescription>,
    @ocaml.doc("<p>
  The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only.
</p>")
    flowName: flowName,
  }
  type response = {
    @ocaml.doc("<p>Indicates the current status of the flow.
</p>")
    flowStatus: option<flowStatus>,
  }
  @module("@aws-sdk/client-appflow") @new external new: request => t = "UpdateFlowCommand"
  let make = (
    ~tasks,
    ~destinationFlowConfigList,
    ~triggerConfig,
    ~flowName,
    ~sourceFlowConfig=?,
    ~description=?,
    (),
  ) =>
    new({
      tasks: tasks,
      destinationFlowConfigList: destinationFlowConfigList,
      sourceFlowConfig: sourceFlowConfig,
      triggerConfig: triggerConfig,
      description: description,
      flowName: flowName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFlow = {
  type t
  type request = {
    @ocaml.doc("<p>
  The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only.
</p>")
    flowName: flowName,
  }
  type response = {
    @ocaml.doc("<p>
  The tags used to organize, track, or control access for your flow. 
</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>
Specifies the user name of the account that performed the most recent update. 
</p>")
    lastUpdatedBy: option<updatedBy>,
    @ocaml.doc("<p>
  The ARN of the user who created the flow.
</p>")
    createdBy: option<createdBy>,
    @ocaml.doc("<p>
  Specifies when the flow was last updated.
</p>")
    lastUpdatedAt: option<date>,
    @ocaml.doc("<p>
Specifies when the flow was created.
</p>")
    createdAt: option<date>,
    @ocaml.doc("<p>
  A list of tasks that Amazon AppFlow performs while transferring the data in the flow run.
</p>")
    tasks: option<tasks>,
    @ocaml.doc("<p>
  The trigger settings that determine how and when the flow runs.
</p>")
    triggerConfig: option<triggerConfig>,
    @ocaml.doc("<p>
Describes the details of the most recent flow run.
</p>")
    lastRunExecutionDetails: option<executionDetails>,
    @ocaml.doc("<p>
  The configuration that controls how Amazon AppFlow transfers data to the destination connector.
</p>")
    destinationFlowConfigList: option<destinationFlowConfigList>,
    @ocaml.doc("<p>
  The configuration that controls how Amazon AppFlow retrieves data from the source connector.
</p>")
    sourceFlowConfig: option<sourceFlowConfig>,
    @ocaml.doc("<p>
      Contains an error message if the flow status is in a suspended or error state. This applies only to scheduled or event-triggered flows.   
    </p>")
    flowStatusMessage: option<flowStatusMessage>,
    @ocaml.doc("<p>
      Indicates the current status of the flow.
    </p>")
    flowStatus: option<flowStatus>,
    @ocaml.doc("<p>
  The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
</p>")
    kmsArn: option<kmsarn>,
    @ocaml.doc("<p>
  The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only.
</p>")
    flowName: option<flowName>,
    @ocaml.doc("<p>
  A description of the flow.
</p>")
    description: option<flowDescription>,
    @ocaml.doc("<p>
  The flow's Amazon Resource Name (ARN).
</p>")
    flowArn: option<flowArn>,
  }
  @module("@aws-sdk/client-appflow") @new external new: request => t = "DescribeFlowCommand"
  let make = (~flowName, ()) => new({flowName: flowName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFlow = {
  type t
  type request = {
    @ocaml.doc("<p>
The tags used to organize, track, or control access for your flow. 
</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>
 A list of tasks that Amazon AppFlow performs while transferring the data in the flow run.
</p>")
    tasks: tasks,
    @ocaml.doc("<p>
The configuration that controls how Amazon AppFlow places data in the destination connector.
</p>")
    destinationFlowConfigList: destinationFlowConfigList,
    @ocaml.doc("<p>
The configuration that controls how Amazon AppFlow retrieves data from the source connector.
</p>")
    sourceFlowConfig: sourceFlowConfig,
    @ocaml.doc("<p>
 The trigger settings that determine how and when the flow runs.
</p>")
    triggerConfig: triggerConfig,
    @ocaml.doc("<p>
  The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
</p>")
    kmsArn: option<kmsarn>,
    @ocaml.doc("<p>
 A description of the flow you want to create. 
</p>")
    description: option<flowDescription>,
    @ocaml.doc("<p>
The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens (-) only.
</p>")
    flowName: flowName,
  }
  type response = {
    @ocaml.doc("<p>
      Indicates the current status of the flow.
    </p>")
    flowStatus: option<flowStatus>,
    @ocaml.doc("<p>
The flow's Amazon Resource Name (ARN).
</p>")
    flowArn: option<flowArn>,
  }
  @module("@aws-sdk/client-appflow") @new external new: request => t = "CreateFlowCommand"
  let make = (
    ~tasks,
    ~destinationFlowConfigList,
    ~sourceFlowConfig,
    ~triggerConfig,
    ~flowName,
    ~tags=?,
    ~kmsArn=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      tasks: tasks,
      destinationFlowConfigList: destinationFlowConfigList,
      sourceFlowConfig: sourceFlowConfig,
      triggerConfig: triggerConfig,
      kmsArn: kmsArn,
      description: description,
      flowName: flowName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
