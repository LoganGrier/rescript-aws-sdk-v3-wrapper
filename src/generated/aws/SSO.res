type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-awsssoportal") @new
external createClient: unit => awsServiceClient = "SSOClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type sessionTokenType = string
type secretAccessKeyType = string
type roleNameType = string
type nextTokenType = string
type maxResultType = int
type expirationTimestampType = float
type errorDescription = string
type emailAddressType = string
type accountNameType = string
type accountIdType = string
type accessTokenType = string
type accessKeyType = string
type roleInfo = {
  accountId: option<accountIdType>,
  roleName: option<roleNameType>,
}
type roleCredentials = {
  expiration: option<expirationTimestampType>,
  sessionToken: option<sessionTokenType>,
  secretAccessKey: option<secretAccessKeyType>,
  accessKeyId: option<accessKeyType>,
}
type accountInfo = {
  emailAddress: option<emailAddressType>,
  accountName: option<accountNameType>,
  accountId: option<accountIdType>,
}
type roleListType = array<roleInfo>
type accountListType = array<accountInfo>

module Logout = {
  type t
  type request = {accessToken: accessTokenType}

  @module("@aws-sdk/client-awsssoportal") @new external new: request => t = "LogoutCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetRoleCredentials = {
  type t
  type request = {
    accessToken: accessTokenType,
    accountId: accountIdType,
    roleName: roleNameType,
  }
  type response = {roleCredentials: option<roleCredentials>}
  @module("@aws-sdk/client-awsssoportal") @new
  external new: request => t = "GetRoleCredentialsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccounts = {
  type t
  type request = {
    accessToken: accessTokenType,
    maxResults: option<maxResultType>,
    nextToken: option<nextTokenType>,
  }
  type response = {
    accountList: option<accountListType>,
    nextToken: option<nextTokenType>,
  }
  @module("@aws-sdk/client-awsssoportal") @new external new: request => t = "ListAccountsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccountRoles = {
  type t
  type request = {
    accountId: accountIdType,
    accessToken: accessTokenType,
    maxResults: option<maxResultType>,
    nextToken: option<nextTokenType>,
  }
  type response = {
    roleList: option<roleListType>,
    nextToken: option<nextTokenType>,
  }
  @module("@aws-sdk/client-awsssoportal") @new
  external new: request => t = "ListAccountRolesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
