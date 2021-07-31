type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-application-cost-profiler") @new
external createClient: unit => awsServiceClient = "ApplicationCostProfilerClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type token = string
type timestamp_ = Js.Date.t
type s3Prefix = string
type s3Key = string
type s3BucketRegion = [
  | @as("af-south-1") #Af_South_1
  | @as("eu-south-1") #Eu_South_1
  | @as("me-south-1") #Me_South_1
  | @as("ap-east-1") #Ap_East_1
]
type s3Bucket = string
type reportId = string
type reportFrequency = [@as("ALL") #ALL | @as("DAILY") #DAILY | @as("MONTHLY") #MONTHLY]
type reportDescription = string
type integer_ = int
type importId = string
type format = [@as("PARQUET") #PARQUET | @as("CSV") #CSV]
type errorMessage = string
type sourceS3Location = {
  region: option<s3BucketRegion>,
  key: s3Key,
  bucket: s3Bucket,
}
type s3Location = {
  prefix: s3Prefix,
  bucket: s3Bucket,
}
type reportDefinition = {
  lastUpdatedAt: option<timestamp_>,
  createdAt: option<timestamp_>,
  destinationS3Location: option<s3Location>,
  format: option<format>,
  reportFrequency: option<reportFrequency>,
  reportDescription: option<reportDescription>,
  reportId: option<reportId>,
}
type reportDefinitionList = array<reportDefinition>

module DeleteReportDefinition = {
  type t
  type request = {reportId: reportId}
  type response = {reportId: option<reportId>}
  @module("@aws-sdk/client-application-cost-profiler") @new
  external new: request => t = "DeleteReportDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateReportDefinition = {
  type t
  type request = {
    destinationS3Location: s3Location,
    format: format,
    reportFrequency: reportFrequency,
    reportDescription: reportDescription,
    reportId: reportId,
  }
  type response = {reportId: option<reportId>}
  @module("@aws-sdk/client-application-cost-profiler") @new
  external new: request => t = "UpdateReportDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutReportDefinition = {
  type t
  type request = {
    destinationS3Location: s3Location,
    format: format,
    reportFrequency: reportFrequency,
    reportDescription: reportDescription,
    reportId: reportId,
  }
  type response = {reportId: option<reportId>}
  @module("@aws-sdk/client-application-cost-profiler") @new
  external new: request => t = "PutReportDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportApplicationUsage = {
  type t
  type request = {sourceS3Location: sourceS3Location}
  type response = {importId: importId}
  @module("@aws-sdk/client-application-cost-profiler") @new
  external new: request => t = "ImportApplicationUsageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetReportDefinition = {
  type t
  type request = {reportId: reportId}
  type response = {
    lastUpdated: timestamp_,
    createdAt: timestamp_,
    destinationS3Location: s3Location,
    format: format,
    reportFrequency: reportFrequency,
    reportDescription: reportDescription,
    reportId: reportId,
  }
  @module("@aws-sdk/client-application-cost-profiler") @new
  external new: request => t = "GetReportDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListReportDefinitions = {
  type t
  type request = {
    maxResults: option<integer_>,
    nextToken: option<token>,
  }
  type response = {
    nextToken: option<token>,
    reportDefinitions: option<reportDefinitionList>,
  }
  @module("@aws-sdk/client-application-cost-profiler") @new
  external new: request => t = "ListReportDefinitionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
