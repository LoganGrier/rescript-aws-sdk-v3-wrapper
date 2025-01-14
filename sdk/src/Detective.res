type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-detective") @new
external createClient: unit => awsServiceClient = "DetectiveClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type unprocessedReason = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type percentage = float
type paginationToken = string
type memberStatus = [
  | @as("ACCEPTED_BUT_DISABLED") #ACCEPTED_BUT_DISABLED
  | @as("ENABLED") #ENABLED
  | @as("VERIFICATION_FAILED") #VERIFICATION_FAILED
  | @as("VERIFICATION_IN_PROGRESS") #VERIFICATION_IN_PROGRESS
  | @as("INVITED") #INVITED
]
type memberResultsLimit = int
type memberDisabledReason = [
  | @as("VOLUME_UNKNOWN") #VOLUME_UNKNOWN
  | @as("VOLUME_TOO_HIGH") #VOLUME_TOO_HIGH
]
type graphArn = string
type errorMessage = string
type emailMessage = string
type emailAddress = string
type byteValue = float
type boolean_ = bool
type accountId = string
@ocaml.doc("<p>A member account that was included in a request but for which the request could not be
         processed.</p>")
type unprocessedAccount = {
  @ocaml.doc("<p>The reason that the member account request could not be processed.</p>")
  @as("Reason")
  reason: option<unprocessedReason>,
  @ocaml.doc("<p>The AWS account identifier of the member account that was not processed.</p>")
  @as("AccountId")
  accountId: option<accountId>,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Details about a member account that was invited to contribute to a behavior
         graph.</p>")
type memberDetail = {
  @ocaml.doc("<p>The date and time when the graph utilization percentage was last updated.</p>")
  @as("PercentOfGraphUtilizationUpdatedTime")
  percentOfGraphUtilizationUpdatedTime: option<timestamp_>,
  @ocaml.doc("<p>The member account data volume as a percentage of the maximum allowed data volume. 0
         indicates 0 percent, and 100 indicates 100 percent.</p>
         <p>Note that this is not the percentage of the behavior graph data volume.</p>
         <p>For example, the data volume for the behavior graph is 80 GB per day. The maximum data
         volume is 160 GB per day. If the data volume for the member account is 40 GB per day, then
            <code>PercentOfGraphUtilization</code> is 25. It represents 25% of the maximum allowed
         data volume. </p>")
  @as("PercentOfGraphUtilization")
  percentOfGraphUtilization: option<percentage>,
  @ocaml.doc("<p>The data and time when the member account data volume was last updated.</p>")
  @as("VolumeUsageUpdatedTime")
  volumeUsageUpdatedTime: option<timestamp_>,
  @ocaml.doc("<p>The data volume in bytes per day for the member account.</p>")
  @as("VolumeUsageInBytes")
  volumeUsageInBytes: option<byteValue>,
  @ocaml.doc("<p>The date and time that the member account was last updated. The value is in milliseconds
         since the epoch.</p>")
  @as("UpdatedTime")
  updatedTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time that Detective sent the invitation to the member account. The value is in
         milliseconds since the epoch.</p>")
  @as("InvitedTime")
  invitedTime: option<timestamp_>,
  @ocaml.doc("<p>For member accounts with a status of <code>ACCEPTED_BUT_DISABLED</code>, the reason that
         the member account is not enabled.</p>
         <p>The reason can have one of the following values:</p>
         <ul>
            <li>
               <p>
                  <code>VOLUME_TOO_HIGH</code> - Indicates that adding the member account would
               cause the data volume for the behavior graph to be too high.</p>
            </li>
            <li>
               <p>
                  <code>VOLUME_UNKNOWN</code> - Indicates that Detective is unable to verify the data
               volume for the member account. This is usually because the member account is not
               enrolled in Amazon GuardDuty. </p>
            </li>
         </ul>")
  @as("DisabledReason")
  disabledReason: option<memberDisabledReason>,
  @ocaml.doc("<p>The current membership status of the member account. The status can have one of the
         following values:</p>
         <ul>
            <li>
               <p>
                  <code>INVITED</code> - Indicates that the member was sent an invitation but has
               not yet responded.</p>
            </li>
            <li>
               <p>
                  <code>VERIFICATION_IN_PROGRESS</code> - Indicates that Detective is verifying that the
               account identifier and email address provided for the member account match. If they
               do match, then Detective sends the invitation. If the email address and account
               identifier don't match, then the member cannot be added to the behavior graph.</p>
            </li>
            <li>
               <p>
                  <code>VERIFICATION_FAILED</code> - Indicates that the account and email address
               provided for the member account do not match, and Detective did not send an invitation to
               the account.</p>
            </li>
            <li>
               <p>
                  <code>ENABLED</code> - Indicates that the member account accepted the invitation
               to contribute to the behavior graph.</p>
            </li>
            <li>
               <p>
                  <code>ACCEPTED_BUT_DISABLED</code> - Indicates that the member account accepted
               the invitation but is prevented from contributing data to the behavior graph.
                  <code>DisabledReason</code> provides the reason why the member account is not
               enabled.</p>
            </li>
         </ul>
         <p>Member accounts that declined an invitation or that were removed from the behavior graph
         are not included.</p>")
  @as("Status")
  status: option<memberStatus>,
  @ocaml.doc(
    "<p>The AWS account identifier of the administrator account for the behavior graph.</p>"
  )
  @as("AdministratorId")
  administratorId: option<accountId>,
  @ocaml.doc(
    "<p>The AWS account identifier of the administrator account for the behavior graph.</p>"
  )
  @as("MasterId")
  masterId: option<accountId>,
  @ocaml.doc("<p>The ARN of the behavior graph that the member account was invited to.</p>")
  @as("GraphArn")
  graphArn: option<graphArn>,
  @ocaml.doc("<p>The AWS account root user email address for the member account.</p>")
  @as("EmailAddress")
  emailAddress: option<emailAddress>,
  @ocaml.doc("<p>The AWS account identifier for the member account.</p>") @as("AccountId")
  accountId: option<accountId>,
}
@ocaml.doc("<p>A behavior graph in Detective.</p>")
type graph = {
  @ocaml.doc("<p>The date and time that the behavior graph was created. The value is in milliseconds
         since the epoch.</p>")
  @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The ARN of the behavior graph.</p>") @as("Arn") arn: option<graphArn>,
}
type accountIdList = array<accountId>
@ocaml.doc("<p>An AWS account that is the administrator account of or a member of a behavior
         graph.</p>")
type account = {
  @ocaml.doc("<p>The AWS account root user email address for the AWS account.</p>")
  @as("EmailAddress")
  emailAddress: emailAddress,
  @ocaml.doc("<p>The account identifier of the AWS account.</p>") @as("AccountId")
  accountId: accountId,
}
type unprocessedAccountList = array<unprocessedAccount>
type memberDetailList = array<memberDetail>
type graphList = array<graph>
type accountList = array<account>
@ocaml.doc("<p>Detective uses machine learning and purpose-built visualizations to help you analyze and
         investigate security issues across your Amazon Web Services (AWS) workloads. Detective automatically
         extracts time-based events such as login attempts, API calls, and network traffic from
         AWS CloudTrail and Amazon Virtual Private Cloud (Amazon VPC) flow logs. It also extracts findings detected by
         Amazon GuardDuty.</p>
         <p>The Detective API primarily supports the creation and management of behavior graphs. A
         behavior graph contains the extracted data from a set of member accounts, and is created
         and managed by an administrator account.</p>
         <p>Every behavior graph is specific to a Region. You can only use the API to manage graphs
         that belong to the Region that is associated with the currently selected endpoint.</p>
         <p>A Detective administrator account can use the Detective API to do the following:</p>
         <ul>
            <li>
               <p>Enable and disable Detective. Enabling Detective creates a new behavior graph.</p>
            </li>
            <li>
               <p>View the list of member accounts in a behavior graph.</p>
            </li>
            <li>
               <p>Add member accounts to a behavior graph.</p>
            </li>
            <li>
               <p>Remove member accounts from a behavior graph.</p>
            </li>
         </ul>
         <p>A member account can use the Detective API to do the following:</p>
         <ul>
            <li>
               <p>View the list of behavior graphs that they are invited to.</p>
            </li>
            <li>
               <p>Accept an invitation to contribute to a behavior graph.</p>
            </li>
            <li>
               <p>Decline an invitation to contribute to a behavior graph.</p>
            </li>
            <li>
               <p>Remove their account from a behavior graph.</p>
            </li>
         </ul>
         <p>All API actions are logged as CloudTrail events. See <a href=\"https://docs.aws.amazon.com/detective/latest/adminguide/logging-using-cloudtrail.html\">Logging Detective API Calls with CloudTrail</a>.</p>
         <note>
            <p>We replaced the term \"master account\" with the term \"administrator account.\" An
            administrator account is used to centrally manage multiple accounts. In the case of
            Detective, the administrator account manages the accounts in their behavior graph.</p>
         </note>")
module StartMonitoringMember = {
  type t
  type request = {
    @ocaml.doc("<p>The account ID of the member account to try to enable.</p>
         <p>The account must be an invited member account with a status of
            <code>ACCEPTED_BUT_DISABLED</code>. </p>")
    @as("AccountId")
    accountId: accountId,
    @ocaml.doc("<p>The ARN of the behavior graph.</p>") @as("GraphArn") graphArn: graphArn,
  }

  @module("@aws-sdk/client-detective") @new
  external new: request => t = "StartMonitoringMemberCommand"
  let make = (~accountId, ~graphArn, ()) => new({accountId: accountId, graphArn: graphArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RejectInvitation = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the behavior graph to reject the invitation to.</p>
         <p>The member account's current member status in the behavior graph must be
            <code>INVITED</code>.</p>")
    @as("GraphArn")
    graphArn: graphArn,
  }

  @module("@aws-sdk/client-detective") @new external new: request => t = "RejectInvitationCommand"
  let make = (~graphArn, ()) => new({graphArn: graphArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateMembership = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the behavior graph to remove the member account from.</p>
         <p>The member account's member status in the behavior graph must be
         <code>ENABLED</code>.</p>")
    @as("GraphArn")
    graphArn: graphArn,
  }

  @module("@aws-sdk/client-detective") @new
  external new: request => t = "DisassociateMembershipCommand"
  let make = (~graphArn, ()) => new({graphArn: graphArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteGraph = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the behavior graph to disable.</p>") @as("GraphArn")
    graphArn: graphArn,
  }

  @module("@aws-sdk/client-detective") @new external new: request => t = "DeleteGraphCommand"
  let make = (~graphArn, ()) => new({graphArn: graphArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AcceptInvitation = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the behavior graph that the member account is accepting the invitation
         for.</p>
         <p>The member account status in the behavior graph must be <code>INVITED</code>.</p>")
    @as("GraphArn")
    graphArn: graphArn,
  }

  @module("@aws-sdk/client-detective") @new external new: request => t = "AcceptInvitationCommand"
  let make = (~graphArn, ()) => new({graphArn: graphArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys of the tags to remove from the behavior graph. You can remove up to 50 tags
         at a time.</p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of the behavior graph to remove the tags from.</p>") @as("ResourceArn")
    resourceArn: graphArn,
  }

  @module("@aws-sdk/client-detective") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to assign to the behavior graph. You can add up to 50 tags. For each tag, you
         provide the tag key and the tag value. Each tag key can contain up to 128 characters. Each
         tag value can contain up to 256 characters.</p>")
    @as("Tags")
    tags: tagMap,
    @ocaml.doc("<p>The ARN of the behavior graph to assign the tags to.</p>") @as("ResourceArn")
    resourceArn: graphArn,
  }

  @module("@aws-sdk/client-detective") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the behavior graph for which to retrieve the tag values.</p>")
    @as("ResourceArn")
    resourceArn: graphArn,
  }
  type response = {
    @ocaml.doc("<p>The tag values that are assigned to the behavior graph. The request returns up to 50 tag
         values.</p>")
    @as("Tags")
    tags: option<tagMap>,
  }
  @module("@aws-sdk/client-detective") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGraph = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to assign to the new behavior graph. You can add up to 50 tags. For each tag,
         you provide the tag key and the tag value. Each tag key can contain up to 128 characters.
         Each tag value can contain up to 256 characters.</p>")
    @as("Tags")
    tags: option<tagMap>,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the new behavior graph.</p>") @as("GraphArn")
    graphArn: option<graphArn>,
  }
  @module("@aws-sdk/client-detective") @new external new: request => t = "CreateGraphCommand"
  let make = (~tags=?, ()) => new({tags: tags})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMembers = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of member accounts to include in the response. The total must be less
         than the overall limit on the number of results to return, which is currently 200.</p>")
    @as("MaxResults")
    maxResults: option<memberResultsLimit>,
    @ocaml.doc("<p>For requests to retrieve the next page of member account results, the pagination token
         that was returned with the previous page of results. The initial request does not include a
         pagination token.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>The ARN of the behavior graph for which to retrieve the list of member accounts.</p>"
    )
    @as("GraphArn")
    graphArn: graphArn,
  }
  type response = {
    @ocaml.doc("<p>If there are more member accounts remaining in the results, then this is the pagination
         token to use to request the next page of member accounts.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of member accounts in the behavior graph.</p>
         <p>The results include member accounts that did not pass verification and member accounts
         that have not yet accepted the invitation to the behavior graph. The results do not include
         member accounts that were removed from the behavior graph.</p>")
    @as("MemberDetails")
    memberDetails: option<memberDetailList>,
  }
  @module("@aws-sdk/client-detective") @new external new: request => t = "ListMembersCommand"
  let make = (~graphArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, graphArn: graphArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInvitations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of behavior graph invitations to return in the response. The total
         must be less than the overall limit on the number of results to return, which is currently
         200.</p>")
    @as("MaxResults")
    maxResults: option<memberResultsLimit>,
    @ocaml.doc("<p>For requests to retrieve the next page of results, the pagination token that was
         returned with the previous page of results. The initial request does not include a
         pagination token.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>If there are more behavior graphs remaining in the results, then this is the pagination
         token to use to request the next page of behavior graphs.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of behavior graphs for which the member account has open or accepted
         invitations.</p>")
    @as("Invitations")
    invitations: option<memberDetailList>,
  }
  @module("@aws-sdk/client-detective") @new external new: request => t = "ListInvitationsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGraphs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of graphs to return at a time. The total must be less than the
         overall limit on the number of results to return, which is currently 200.</p>")
    @as("MaxResults")
    maxResults: option<memberResultsLimit>,
    @ocaml.doc("<p>For requests to get the next page of results, the pagination token that was returned
         with the previous set of results. The initial request does not include a pagination
         token.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>If there are more behavior graphs remaining in the results, then this is the pagination
         token to use to request the next page of behavior graphs.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of behavior graphs that the account is an administrator account for.</p>")
    @as("GraphList")
    graphList: option<graphList>,
  }
  @module("@aws-sdk/client-detective") @new external new: request => t = "ListGraphsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMembers = {
  type t
  type request = {
    @ocaml.doc("<p>The list of AWS account identifiers for the member account for which to return member
         details. You can request details for up to 50 member accounts at a time.</p>
         <p>You cannot use <code>GetMembers</code> to retrieve information about member accounts
         that were removed from the behavior graph.</p>")
    @as("AccountIds")
    accountIds: accountIdList,
    @ocaml.doc("<p>The ARN of the behavior graph for which to request the member details.</p>")
    @as("GraphArn")
    graphArn: graphArn,
  }
  type response = {
    @ocaml.doc("<p>The requested member accounts for which Detective was unable to return member
         details.</p>
         <p>For each account, provides the reason why the request could not be processed.</p>")
    @as("UnprocessedAccounts")
    unprocessedAccounts: option<unprocessedAccountList>,
    @ocaml.doc(
      "<p>The member account details that Detective is returning in response to the request.</p>"
    )
    @as("MemberDetails")
    memberDetails: option<memberDetailList>,
  }
  @module("@aws-sdk/client-detective") @new external new: request => t = "GetMembersCommand"
  let make = (~accountIds, ~graphArn, ()) => new({accountIds: accountIds, graphArn: graphArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMembers = {
  type t
  type request = {
    @ocaml.doc("<p>The list of AWS account identifiers for the member accounts to delete from the
         behavior graph. You can delete up to 50 member accounts at a time.</p>")
    @as("AccountIds")
    accountIds: accountIdList,
    @ocaml.doc("<p>The ARN of the behavior graph to delete members from.</p>") @as("GraphArn")
    graphArn: graphArn,
  }
  type response = {
    @ocaml.doc("<p>The list of member accounts that Detective was not able to delete from the behavior graph.
         For each member account, provides the reason that the deletion could not be
         processed.</p>")
    @as("UnprocessedAccounts")
    unprocessedAccounts: option<unprocessedAccountList>,
    @ocaml.doc("<p>The list of AWS account identifiers for the member accounts that Detective successfully
         deleted from the behavior graph.</p>")
    @as("AccountIds")
    accountIds: option<accountIdList>,
  }
  @module("@aws-sdk/client-detective") @new external new: request => t = "DeleteMembersCommand"
  let make = (~accountIds, ~graphArn, ()) => new({accountIds: accountIds, graphArn: graphArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMembers = {
  type t
  type request = {
    @ocaml.doc("<p>The list of AWS accounts to invite to become member accounts in the behavior graph.
         You can invite up to 50 accounts at a time. For each invited account, the account list
         contains the account identifier and the AWS account root user email address.</p>")
    @as("Accounts")
    accounts: accountList,
    @ocaml.doc("<p>if set to <code>true</code>, then the member accounts do not receive email
         notifications. By default, this is set to <code>false</code>, and the member accounts
         receive email notifications.</p>")
    @as("DisableEmailNotification")
    disableEmailNotification: option<boolean_>,
    @ocaml.doc("<p>Customized message text to include in the invitation email message to the invited member
         accounts.</p>")
    @as("Message")
    message: option<emailMessage>,
    @ocaml.doc("<p>The ARN of the behavior graph to invite the member accounts to contribute their data
         to.</p>")
    @as("GraphArn")
    graphArn: graphArn,
  }
  type response = {
    @ocaml.doc("<p>The list of accounts for which Detective was unable to process the invitation request. For
         each account, the list provides the reason why the request could not be processed. The list
         includes accounts that are already member accounts in the behavior graph.</p>")
    @as("UnprocessedAccounts")
    unprocessedAccounts: option<unprocessedAccountList>,
    @ocaml.doc("<p>The set of member account invitation requests that Detective was able to process. This
         includes accounts that are being verified, that failed verification, and that passed
         verification and are being sent an invitation.</p>")
    @as("Members")
    members: option<memberDetailList>,
  }
  @module("@aws-sdk/client-detective") @new external new: request => t = "CreateMembersCommand"
  let make = (~accounts, ~graphArn, ~disableEmailNotification=?, ~message=?, ()) =>
    new({
      accounts: accounts,
      disableEmailNotification: disableEmailNotification,
      message: message,
      graphArn: graphArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
