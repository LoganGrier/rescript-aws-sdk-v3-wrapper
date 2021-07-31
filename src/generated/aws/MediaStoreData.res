type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-mediastore") @new
external createClient: unit => awsServiceClient = "MediaStoreDataClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type statusCode = int
type uploadAvailability = [@as("STREAMING") #STREAMING | @as("STANDARD") #STANDARD]
type timeStamp = Js.Date.t
type stringPrimitive = string
type storageClass = [@as("TEMPORAL") #TEMPORAL]
type sha256Hash = string
type rangePattern = string
type payloadBlob = NodeJs.Buffer.t
type pathNaming = string
type paginationToken = string
type nonNegativeLong = float
type listPathNaming = string
type listLimit = int
type itemType = [@as("FOLDER") #FOLDER | @as("OBJECT") #OBJECT]
type itemName = string
type errorMessage = string
type etag = string
type contentType = string
type contentRangePattern = string
type item = {
  @as("ContentLength") contentLength: option<nonNegativeLong>,
  @as("ContentType") contentType: option<contentType>,
  @as("LastModified") lastModified: option<timeStamp>,
  @as("ETag") etag: option<etag>,
  @as("Type") type_: option<itemType>,
  @as("Name") name: option<itemName>,
}
type itemList = array<item>

module PutObject = {
  type t
  type request = {
    @as("UploadAvailability") uploadAvailability: option<uploadAvailability>,
    @as("StorageClass") storageClass: option<storageClass>,
    @as("CacheControl") cacheControl: option<stringPrimitive>,
    @as("ContentType") contentType: option<contentType>,
    @as("Path") path: pathNaming,
    @as("Body") body: payloadBlob,
  }
  type response = {
    @as("StorageClass") storageClass: option<storageClass>,
    @as("ETag") etag: option<etag>,
    @as("ContentSHA256") contentSHA256: option<sha256Hash>,
  }
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "PutObjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetObject = {
  type t
  type request = {
    @as("Range") range: option<rangePattern>,
    @as("Path") path: pathNaming,
  }
  type response = {
    @as("StatusCode") statusCode: statusCode,
    @as("LastModified") lastModified: option<timeStamp>,
    @as("ETag") etag: option<etag>,
    @as("ContentType") contentType: option<contentType>,
    @as("ContentLength") contentLength: option<nonNegativeLong>,
    @as("ContentRange") contentRange: option<contentRangePattern>,
    @as("CacheControl") cacheControl: option<stringPrimitive>,
    @as("Body") body: option<payloadBlob>,
  }
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "GetObjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeObject = {
  type t
  type request = {@as("Path") path: pathNaming}
  type response = {
    @as("LastModified") lastModified: option<timeStamp>,
    @as("CacheControl") cacheControl: option<stringPrimitive>,
    @as("ContentLength") contentLength: option<nonNegativeLong>,
    @as("ContentType") contentType: option<contentType>,
    @as("ETag") etag: option<etag>,
  }
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "DescribeObjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteObject = {
  type t
  type request = {@as("Path") path: pathNaming}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "DeleteObjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListItems = {
  type t
  type request = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("MaxResults") maxResults: option<listLimit>,
    @as("Path") path: option<listPathNaming>,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("Items") items: option<itemList>,
  }
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "ListItemsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
