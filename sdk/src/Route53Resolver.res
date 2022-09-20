type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-route53resolver") @new
external createClient: unit => awsServiceClient = "Route53ResolverClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type validation = [@as("DISABLE") #DISABLE | @as("ENABLE") #ENABLE]
type unsigned = int
type tagValue = string
type tagKey = string
type subnetId = string
type string_ = string
type statusMessage = string
type sortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type sortByKey = string
type shareStatus = [
  | @as("SHARED_BY_ME") #SHARED_BY_ME
  | @as("SHARED_WITH_ME") #SHARED_WITH_ME
  | @as("NOT_SHARED") #NOT_SHARED
]
type servicePrinciple = string
type ruleTypeOption = [
  | @as("RECURSIVE") #RECURSIVE
  | @as("SYSTEM") #SYSTEM
  | @as("FORWARD") #FORWARD
]
type rfc3339TimeString = string
type resourceId = string
type resolverRuleStatus = [
  | @as("FAILED") #FAILED
  | @as("UPDATING") #UPDATING
  | @as("DELETING") #DELETING
  | @as("COMPLETE") #COMPLETE
]
type resolverRulePolicy = string
type resolverRuleAssociationStatus = [
  | @as("OVERRIDDEN") #OVERRIDDEN
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("COMPLETE") #COMPLETE
  | @as("CREATING") #CREATING
]
type resolverQueryLogConfigStatus = [
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("CREATED") #CREATED
  | @as("CREATING") #CREATING
]
type resolverQueryLogConfigPolicy = string
type resolverQueryLogConfigName = string
type resolverQueryLogConfigAssociationStatus = [
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("ACTION_NEEDED") #ACTION_NEEDED
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type resolverQueryLogConfigAssociationErrorMessage = string
type resolverQueryLogConfigAssociationError = [
  | @as("INTERNAL_SERVICE_ERROR") #INTERNAL_SERVICE_ERROR
  | @as("ACCESS_DENIED") #ACCESS_DENIED
  | @as("DESTINATION_NOT_FOUND") #DESTINATION_NOT_FOUND
  | @as("NONE") #NONE
]
type resolverEndpointStatus = [
  | @as("DELETING") #DELETING
  | @as("ACTION_NEEDED") #ACTION_NEEDED
  | @as("AUTO_RECOVERING") #AUTO_RECOVERING
  | @as("UPDATING") #UPDATING
  | @as("OPERATIONAL") #OPERATIONAL
  | @as("CREATING") #CREATING
]
type resolverEndpointDirection = [@as("OUTBOUND") #OUTBOUND | @as("INBOUND") #INBOUND]
type resolverDNSSECValidationStatus = [
  | @as("DISABLED") #DISABLED
  | @as("DISABLING") #DISABLING
  | @as("ENABLED") #ENABLED
  | @as("ENABLING") #ENABLING
]
type resolverAutodefinedReverseStatus = [
  | @as("DISABLED") #DISABLED
  | @as("DISABLING") #DISABLING
  | @as("ENABLED") #ENABLED
  | @as("ENABLING") #ENABLING
]
type priority = int
type port = int
type nextToken = string
type name = string
type mutationProtectionStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type maxResults = int
type listResolverConfigsMaxResult = int
type listFirewallConfigsMaxResult = int
type listDomainMaxResults = int
type ipAddressStatus = [
  | @as("DELETE_FAILED_FAS_EXPIRED") #DELETE_FAILED_FAS_EXPIRED
  | @as("DELETING") #DELETING
  | @as("FAILED_RESOURCE_GONE") #FAILED_RESOURCE_GONE
  | @as("DETACHING") #DETACHING
  | @as("REMAP_ATTACHING") #REMAP_ATTACHING
  | @as("REMAP_DETACHING") #REMAP_DETACHING
  | @as("ATTACHED") #ATTACHED
  | @as("ATTACHING") #ATTACHING
  | @as("FAILED_CREATION") #FAILED_CREATION
  | @as("CREATING") #CREATING
]
type ipAddressCount = int
type ip = string
type firewallRuleGroupStatus = [
  | @as("UPDATING") #UPDATING
  | @as("DELETING") #DELETING
  | @as("COMPLETE") #COMPLETE
]
type firewallRuleGroupPolicy = string
type firewallRuleGroupAssociationStatus = [
  | @as("UPDATING") #UPDATING
  | @as("DELETING") #DELETING
  | @as("COMPLETE") #COMPLETE
]
type firewallFailOpenStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type firewallDomainUpdateOperation = [
  | @as("REPLACE") #REPLACE
  | @as("REMOVE") #REMOVE
  | @as("ADD") #ADD
]
type firewallDomainName = string
type firewallDomainListStatus = [
  | @as("UPDATING") #UPDATING
  | @as("DELETING") #DELETING
  | @as("IMPORTING") #IMPORTING
  | @as("COMPLETE_IMPORT_FAILED") #COMPLETE_IMPORT_FAILED
  | @as("COMPLETE") #COMPLETE
]
type firewallDomainImportOperation = [@as("REPLACE") #REPLACE]
type filterValue = string
type filterName = string
type exceptionMessage = string
type domainName = string
type domainListFileUrl = string
type destinationArn = string
type creatorRequestId = string
type count = int
type boolean_ = bool
type blockResponse = [@as("OVERRIDE") #OVERRIDE | @as("NXDOMAIN") #NXDOMAIN | @as("NODATA") #NODATA]
type blockOverrideTtl = int
type blockOverrideDomain = string
type blockOverrideDnsType = [@as("CNAME") #CNAME]
type autodefinedReverseFlag = [@as("DISABLE") #DISABLE | @as("ENABLE") #ENABLE]
type arn = string
type action = [@as("ALERT") #ALERT | @as("BLOCK") #BLOCK | @as("ALLOW") #ALLOW]
type accountId = string
@ocaml.doc("<p>In a 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverRule.html\">CreateResolverRule</a>
			request, an array of the IPs that you want to forward DNS queries to.</p>")
type targetAddress = {
  @ocaml.doc("<p>The port at <code>Ip</code> that you want to forward DNS queries to.</p>")
  @as("Port")
  port: option<port>,
  @ocaml.doc(
    "<p>One IP address that you want to forward DNS queries to. You can specify only IPv4 addresses.</p>"
  )
  @as("Ip")
  ip: ip,
}
type tagKeyList = array<tagKey>
@ocaml.doc(
  "<p>One tag that you want to add to the specified resource. A tag consists of a <code>Key</code> (a name for the tag) and a <code>Value</code>.</p>"
)
type tag = {
  @ocaml.doc("<p>The value for the tag. For example, if <code>Key</code> is <code>account-id</code>, then <code>Value</code> might be the ID of the 
			customer account that you're creating the resource for.</p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>The name for the tag. For example, if you want to associate Resolver resources with the account IDs of your customers for billing purposes, 
			the value of <code>Key</code> might be <code>account-id</code>.</p>")
  @as("Key")
  key: tagKey,
}
type securityGroupIds = array<resourceId>
@ocaml.doc("<p>In the response to an 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverRule.html\">AssociateResolverRule</a>, 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverRule.html\">DisassociateResolverRule</a>, 
			or 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html\">ListResolverRuleAssociations</a> 
			request, provides information about an association between a Resolver rule and a VPC. 
			The association determines which DNS queries that originate in the VPC are forwarded to your network. </p>")
type resolverRuleAssociation = {
  @ocaml.doc(
    "<p>A detailed description of the status of the association between a Resolver rule and a VPC.</p>"
  )
  @as("StatusMessage")
  statusMessage: option<statusMessage>,
  @ocaml.doc(
    "<p>A code that specifies the current status of the association between a Resolver rule and a VPC.</p>"
  )
  @as("Status")
  status: option<resolverRuleAssociationStatus>,
  @ocaml.doc("<p>The ID of the VPC that you associated the Resolver rule with.</p>") @as("VPCId")
  vpcid: option<resourceId>,
  @ocaml.doc("<p>The name of an association between a Resolver rule and a VPC.</p>") @as("Name")
  name: option<name>,
  @ocaml.doc(
    "<p>The ID of the Resolver rule that you associated with the VPC that is specified by <code>VPCId</code>.</p>"
  )
  @as("ResolverRuleId")
  resolverRuleId: option<resourceId>,
  @ocaml.doc("<p>The ID of the association between a Resolver rule and a VPC. Resolver assigns this value when you submit an 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverRule.html\">AssociateResolverRule</a> 
			request.</p>")
  @as("Id")
  id: option<resourceId>,
}
@ocaml.doc("<p>In the response to an 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverQueryLogConfig.html\">AssociateResolverQueryLogConfig</a>, 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html\">DisassociateResolverQueryLogConfig</a>, 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverQueryLogConfigAssociation.html\">GetResolverQueryLogConfigAssociation</a>, 
			or 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigAssociations.html\">ListResolverQueryLogConfigAssociations</a>,
			request, a complex type that contains settings for a specified association between an Amazon VPC and a query logging configuration.</p>")
type resolverQueryLogConfigAssociation = {
  @ocaml.doc(
    "<p>The date and time that the VPC was associated with the query logging configuration, in Unix time format and Coordinated Universal Time (UTC).</p>"
  )
  @as("CreationTime")
  creationTime: option<rfc3339TimeString>,
  @ocaml.doc(
    "<p>Contains additional information about the error. If the value or <code>Error</code> is null, the value of <code>ErrorMessage</code> also is null.</p>"
  )
  @as("ErrorMessage")
  errorMessage: option<resolverQueryLogConfigAssociationErrorMessage>,
  @ocaml.doc("<p>If the value of <code>Status</code> is <code>FAILED</code>, the value of <code>Error</code> indicates the cause:</p>
		       <ul>
            <li>
               <p>
                  <code>DESTINATION_NOT_FOUND</code>: The specified destination (for example, an Amazon S3 bucket) was deleted.</p>
            </li>
            <li>
               <p>
                  <code>ACCESS_DENIED</code>: Permissions don't allow sending logs to the destination.</p>
            </li>
         </ul>
		       <p>If the value of <code>Status</code> is a value other than <code>FAILED</code>, <code>Error</code> is null. </p>")
  @as("Error")
  error: option<resolverQueryLogConfigAssociationError>,
  @ocaml.doc("<p>The status of the specified query logging association. Valid values include the following:</p>
		       <ul>
            <li>
               <p>
                  <code>CREATING</code>: Resolver is creating an association between an Amazon VPC and a query logging configuration.</p>
            </li>
            <li>
               <p>
                  <code>CREATED</code>: The association between an Amazon VPC and a query logging configuration 
				was successfully created. Resolver is logging queries that originate in the specified VPC.</p>
            </li>
            <li>
               <p>
                  <code>DELETING</code>: Resolver is deleting this query logging association.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code>: Resolver either couldn't create or couldn't delete the query logging association.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<resolverQueryLogConfigAssociationStatus>,
  @ocaml.doc(
    "<p>The ID of the Amazon VPC that is associated with the query logging configuration.</p>"
  )
  @as("ResourceId")
  resourceId: option<resourceId>,
  @ocaml.doc("<p>The ID of the query logging configuration that a VPC is associated with.</p>")
  @as("ResolverQueryLogConfigId")
  resolverQueryLogConfigId: option<resourceId>,
  @ocaml.doc("<p>The ID of the query logging association.</p>") @as("Id") id: option<resourceId>,
}
@ocaml.doc("<p>In the response to a 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverQueryLogConfig.html\">CreateResolverQueryLogConfig</a>, 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DeleteResolverQueryLogConfig.html\">DeleteResolverQueryLogConfig</a>, 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverQueryLogConfig.html\">GetResolverQueryLogConfig</a>, 
			or 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigs.html\">ListResolverQueryLogConfigs</a> 
			request, a complex type that contains settings for one query logging configuration.</p>")
type resolverQueryLogConfig = {
  @ocaml.doc(
    "<p>The date and time that the query logging configuration was created, in Unix time format and Coordinated Universal Time (UTC).</p>"
  )
  @as("CreationTime")
  creationTime: option<rfc3339TimeString>,
  @ocaml.doc("<p>A unique string that identifies the request that created the query logging configuration.
			The <code>CreatorRequestId</code> allows failed requests to be retried without the risk
			of running the operation twice.</p>")
  @as("CreatorRequestId")
  creatorRequestId: option<creatorRequestId>,
  @ocaml.doc("<p>The ARN of the resource that you want Resolver to send query logs: an Amazon S3 bucket, a CloudWatch Logs log group, or 
			a Kinesis Data Firehose delivery stream.</p>")
  @as("DestinationArn")
  destinationArn: option<destinationArn>,
  @ocaml.doc("<p>The name of the query logging configuration. </p>") @as("Name")
  name: option<resolverQueryLogConfigName>,
  @ocaml.doc("<p>The ARN for the query logging configuration.</p>") @as("Arn") arn: option<arn>,
  @ocaml.doc("<p>The number of VPCs that are associated with the query logging configuration.</p>")
  @as("AssociationCount")
  associationCount: option<count>,
  @ocaml.doc("<p>An indication of whether the query logging configuration is shared with other Amazon Web Services accounts, or was shared with the current account by another 
			Amazon Web Services account. Sharing is configured through Resource Access Manager (RAM).</p>")
  @as("ShareStatus")
  shareStatus: option<shareStatus>,
  @ocaml.doc("<p>The status of the specified query logging configuration. Valid values include the following:</p>
		       <ul>
            <li>
               <p>
                  <code>CREATING</code>: Resolver is creating the query logging configuration.</p>
            </li>
            <li>
               <p>
                  <code>CREATED</code>: The query logging configuration was successfully created. 
				Resolver is logging queries that originate in the specified VPC.</p>
            </li>
            <li>
               <p>
                  <code>DELETING</code>: Resolver is deleting this query logging configuration.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code>: Resolver can't deliver logs to the location that is specified in the query logging configuration. 
				Here are two common causes:</p>
				           <ul>
                  <li>
                     <p>The specified destination (for example, an Amazon S3 bucket) was deleted.</p>
                  </li>
                  <li>
                     <p>Permissions don't allow sending logs to the destination.</p>
                  </li>
               </ul>
			         </li>
         </ul>")
  @as("Status")
  status: option<resolverQueryLogConfigStatus>,
  @ocaml.doc(
    "<p>The Amazon Web Services account ID for the account that created the query logging configuration. </p>"
  )
  @as("OwnerId")
  ownerId: option<accountId>,
  @ocaml.doc("<p>The ID for the query logging configuration.</p>") @as("Id") id: option<resourceId>,
}
@ocaml.doc(
  "<p>A complex type that contains information about a configuration for DNSSEC validation.</p>"
)
type resolverDnssecConfig = {
  @ocaml.doc("<p>The validation status for a DNSSEC configuration. The status can be one of the following:</p>
		       <ul>
            <li>
               <p>
                  <b>ENABLING:</b> DNSSEC validation is being enabled but is not complete.</p>
            </li>
            <li>
               <p>
                  <b>ENABLED:</b> DNSSEC validation is enabled.</p>
            </li>
            <li>
               <p>
                  <b>DISABLING:</b> DNSSEC validation is being disabled but is not complete.</p>
            </li>
            <li>
               <p>
                  <b>DISABLED</b> DNSSEC validation is disabled.</p>
            </li>
         </ul>")
  @as("ValidationStatus")
  validationStatus: option<resolverDNSSECValidationStatus>,
  @ocaml.doc(
    "<p>The ID of the virtual private cloud (VPC) that you're configuring the DNSSEC validation status for.</p>"
  )
  @as("ResourceId")
  resourceId: option<resourceId>,
  @ocaml.doc(
    "<p>The owner account ID of the virtual private cloud (VPC) for a configuration for DNSSEC validation.</p>"
  )
  @as("OwnerId")
  ownerId: option<accountId>,
  @ocaml.doc("<p>The ID for a configuration for DNSSEC validation.</p>") @as("Id")
  id: option<resourceId>,
}
@ocaml.doc(
  "<p>A complex type that contains information about a Resolver configuration for a VPC.</p>"
)
type resolverConfig = {
  @ocaml.doc("<p> The status of whether or not the Resolver will create autodefined rules for reverse DNS
			lookups. This is enabled by default. The status can be one of following:</p>
		       <p> Status of the rules generated by VPCs based on CIDR/Region for reverse DNS resolution. The
			status can be one of following:</p>

		       <ul>
            <li>
               <p>
                  <b>ENABLING:</b> Autodefined rules for reverse DNS lookups are being
					enabled but are not complete.</p>
            </li>
            <li>
               <p>
                  <b>ENABLED:</b> Autodefined rules for reverse DNS lookups are
					enabled.</p>
            </li>
            <li>
               <p>
                  <b>DISABLING:</b> Autodefined rules for reverse DNS lookups are
					being disabled but are not complete.</p>
            </li>
            <li>
               <p>
                  <b>DISABLED:</b> Autodefined rules for reverse DNS lookups are
					disabled.</p>
            </li>
         </ul>")
  @as("AutodefinedReverse")
  autodefinedReverse: option<resolverAutodefinedReverseStatus>,
  @ocaml.doc("<p>The owner account ID of the Amazon Virtual Private Cloud VPC.</p>") @as("OwnerId")
  ownerId: option<accountId>,
  @ocaml.doc(
    "<p>The ID of the Amazon Virtual Private Cloud VPC that you're configuring Resolver for.</p>"
  )
  @as("ResourceId")
  resourceId: option<resourceId>,
  @ocaml.doc("<p>ID for the Resolver configuration.</p>") @as("Id") id: option<resourceId>,
}
@ocaml.doc("<p>In an 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_UpdateResolverEndpoint.html\">UpdateResolverEndpoint</a> 
			request, information about an IP address to update.</p>")
type ipAddressUpdate = {
  @ocaml.doc("<p>The new IP address.</p>") @as("Ip") ip: option<ip>,
  @ocaml.doc("<p>The ID of the subnet that includes the IP address that you want to update. To get this ID, use 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html\">GetResolverEndpoint</a>.</p>")
  @as("SubnetId")
  subnetId: option<subnetId>,
  @ocaml.doc("<p>
            <i>Only when removing an IP address from a Resolver endpoint</i>: The ID of the IP address that you want to remove. 
			To get this ID, use 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html\">GetResolverEndpoint</a>.</p>")
  @as("IpId")
  ipId: option<resourceId>,
}
@ocaml.doc("<p>In the response to a 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html\">GetResolverEndpoint</a>
			request, information about the IP addresses that the Resolver endpoint uses for DNS queries.</p>")
type ipAddressResponse = {
  @ocaml.doc(
    "<p>The date and time that the IP address was last modified, in Unix time format and Coordinated Universal Time (UTC).</p>"
  )
  @as("ModificationTime")
  modificationTime: option<rfc3339TimeString>,
  @ocaml.doc(
    "<p>The date and time that the IP address was created, in Unix time format and Coordinated Universal Time (UTC).</p>"
  )
  @as("CreationTime")
  creationTime: option<rfc3339TimeString>,
  @ocaml.doc(
    "<p>A message that provides additional information about the status of the request.</p>"
  )
  @as("StatusMessage")
  statusMessage: option<statusMessage>,
  @ocaml.doc("<p>A status code that gives the current status of the request.</p>") @as("Status")
  status: option<ipAddressStatus>,
  @ocaml.doc("<p>One IP address that the Resolver endpoint uses for DNS queries.</p>") @as("Ip")
  ip: option<ip>,
  @ocaml.doc("<p>The ID of one subnet.</p>") @as("SubnetId") subnetId: option<subnetId>,
  @ocaml.doc("<p>The ID of one IP address.</p>") @as("IpId") ipId: option<resourceId>,
}
@ocaml.doc("<p>In a 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html\">CreateResolverEndpoint</a> 
			request, the IP address that DNS queries originate from (for outbound endpoints) or that you forward DNS queries to (for inbound endpoints). 
			<code>IpAddressRequest</code> also includes the ID of the subnet that contains the IP address.</p>")
type ipAddressRequest = {
  @ocaml.doc("<p>The IP address that you want to use for DNS queries.</p>") @as("Ip")
  ip: option<ip>,
  @ocaml.doc("<p>The ID of the subnet that contains the IP address. </p>") @as("SubnetId")
  subnetId: subnetId,
}
@ocaml.doc("<p>Minimal high-level information for a firewall rule group. The action <a>ListFirewallRuleGroups</a> returns an array of these objects. </p>
         <p>To retrieve full information for a firewall rule group, call <a>GetFirewallRuleGroup</a> and <a>ListFirewallRules</a>.</p>")
type firewallRuleGroupMetadata = {
  @ocaml.doc("<p>Whether the rule group is shared with other Amazon Web Services accounts, or was shared with the current account by another 
              Amazon Web Services account. Sharing is configured through Resource Access Manager (RAM).</p>")
  @as("ShareStatus")
  shareStatus: option<shareStatus>,
  @ocaml.doc("<p>A unique string defined by you to identify the request. This allows you to retry failed
			requests without the risk of running the operation twice. This can be any unique string,
			for example, a timestamp. </p>")
  @as("CreatorRequestId")
  creatorRequestId: option<creatorRequestId>,
  @ocaml.doc("<p>The Amazon Web Services account ID for the account that created the rule group. When a rule group is shared with your account,
       this is the account that has shared the rule group with you.  </p>")
  @as("OwnerId")
  ownerId: option<accountId>,
  @ocaml.doc("<p>The name of the rule group.</p>") @as("Name") name: option<name>,
  @ocaml.doc("<p>The ARN (Amazon Resource Name) of the rule group.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The ID of the rule group. </p>") @as("Id") id: option<resourceId>,
}
@ocaml.doc("<p>An association between a firewall rule group and a VPC, which enables DNS filtering for
			the VPC. </p>")
type firewallRuleGroupAssociation = {
  @ocaml.doc(
    "<p>The date and time that the association was last modified, in Unix time format and Coordinated Universal Time (UTC).</p>"
  )
  @as("ModificationTime")
  modificationTime: option<rfc3339TimeString>,
  @ocaml.doc(
    "<p>The date and time that the association was created, in Unix time format and Coordinated Universal Time (UTC). </p>"
  )
  @as("CreationTime")
  creationTime: option<rfc3339TimeString>,
  @ocaml.doc("<p>A unique string defined by you to identify the request. This allows you to retry failed
			requests without the risk of running the operation twice. This can be any unique string,
			for example, a timestamp. </p>")
  @as("CreatorRequestId")
  creatorRequestId: option<creatorRequestId>,
  @ocaml.doc("<p>Additional information about the status of the response, if available.</p>")
  @as("StatusMessage")
  statusMessage: option<statusMessage>,
  @ocaml.doc("<p>The current status of the association.</p>") @as("Status")
  status: option<firewallRuleGroupAssociationStatus>,
  @ocaml.doc("<p>The owner of the association, used only for associations that are not managed by you. If you use Firewall Manager to 
   manage your DNS Firewalls, then this reports Firewall Manager as the managed owner.</p>")
  @as("ManagedOwnerName")
  managedOwnerName: option<servicePrinciple>,
  @ocaml.doc(
    "<p>If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. </p>"
  )
  @as("MutationProtection")
  mutationProtection: option<mutationProtectionStatus>,
  @ocaml.doc("<p>The setting that determines the processing order of the rule group among the rule groups that are associated with a single VPC. DNS Firewall 
           filters VPC traffic starting from rule group with the lowest numeric priority setting. </p>")
  @as("Priority")
  priority: option<priority>,
  @ocaml.doc("<p>The name of the association.</p>") @as("Name") name: option<name>,
  @ocaml.doc("<p>The unique identifier of the VPC that is associated with the rule group. </p>")
  @as("VpcId")
  vpcId: option<resourceId>,
  @ocaml.doc("<p>The unique identifier of the firewall rule group. </p>") @as("FirewallRuleGroupId")
  firewallRuleGroupId: option<resourceId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall rule group association.</p>")
  @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The identifier for the association.</p>") @as("Id") id: option<resourceId>,
}
@ocaml.doc(
  "<p>High-level information for a firewall rule group. A firewall rule group is a collection of rules that DNS Firewall uses to filter DNS network traffic for a VPC. To retrieve the rules for the rule group, call <a>ListFirewallRules</a>.</p>"
)
type firewallRuleGroup = {
  @ocaml.doc(
    "<p>The date and time that the rule group was last modified, in Unix time format and Coordinated Universal Time (UTC).</p>"
  )
  @as("ModificationTime")
  modificationTime: option<rfc3339TimeString>,
  @ocaml.doc(
    "<p>The date and time that the rule group was created, in Unix time format and Coordinated Universal Time (UTC). </p>"
  )
  @as("CreationTime")
  creationTime: option<rfc3339TimeString>,
  @ocaml.doc("<p>Whether the rule group is shared with other Amazon Web Services accounts, or was shared with the current account by another 
              Amazon Web Services account. Sharing is configured through Resource Access Manager (RAM).</p>")
  @as("ShareStatus")
  shareStatus: option<shareStatus>,
  @ocaml.doc("<p>A unique string defined by you to identify the request. This allows you to retry failed
			requests without the risk of running the operation twice. This can be any unique string,
			for example, a timestamp. </p>")
  @as("CreatorRequestId")
  creatorRequestId: option<creatorRequestId>,
  @ocaml.doc("<p>The Amazon Web Services account ID for the account that created the rule group. When a rule group is shared with your account,
       this is the account that has shared the rule group with you.  </p>")
  @as("OwnerId")
  ownerId: option<accountId>,
  @ocaml.doc("<p>Additional information about the status of the rule group, if available.</p>")
  @as("StatusMessage")
  statusMessage: option<statusMessage>,
  @ocaml.doc("<p>The status of the domain list.  </p>") @as("Status")
  status: option<firewallRuleGroupStatus>,
  @ocaml.doc("<p>The number of rules in the rule group.</p>") @as("RuleCount")
  ruleCount: option<unsigned>,
  @ocaml.doc("<p>The name of the rule group.</p>") @as("Name") name: option<name>,
  @ocaml.doc("<p>The ARN (Amazon Resource Name) of the rule group.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The ID of the rule group. </p>") @as("Id") id: option<resourceId>,
}
@ocaml.doc("<p>A single firewall rule in a rule group.</p>")
type firewallRule = {
  @ocaml.doc(
    "<p>The date and time that the rule was last modified, in Unix time format and Coordinated Universal Time (UTC).</p>"
  )
  @as("ModificationTime")
  modificationTime: option<rfc3339TimeString>,
  @ocaml.doc(
    "<p>The date and time that the rule was created, in Unix time format and Coordinated Universal Time (UTC). </p>"
  )
  @as("CreationTime")
  creationTime: option<rfc3339TimeString>,
  @ocaml.doc("<p>A unique string defined by you to identify the request. This allows you to retry failed requests 
           without the risk of executing the operation twice. This can be any unique string, for example, a timestamp. </p>")
  @as("CreatorRequestId")
  creatorRequestId: option<creatorRequestId>,
  @ocaml.doc(
    "<p>The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>"
  )
  @as("BlockOverrideTtl")
  blockOverrideTtl: option<unsigned>,
  @ocaml.doc(
    "<p>The DNS record's type. This determines the format of the record value that you provided in <code>BlockOverrideDomain</code>. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>"
  )
  @as("BlockOverrideDnsType")
  blockOverrideDnsType: option<blockOverrideDnsType>,
  @ocaml.doc(
    "<p>The custom DNS record to send back in response to the query. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>"
  )
  @as("BlockOverrideDomain")
  blockOverrideDomain: option<blockOverrideDomain>,
  @ocaml.doc("<p>The way that you want DNS Firewall to block the request. Used for the rule action setting <code>BLOCK</code>.</p>
         <ul>
            <li>
               <p>
                  <code>NODATA</code> - Respond indicating that the query was successful, but no response is available for it.</p> 
            </li>
            <li>
               <p>
                  <code>NXDOMAIN</code> - Respond indicating that the domain name that's in the query doesn't exist.</p> 
            </li>
            <li>
               <p>
                  <code>OVERRIDE</code> - Provide a custom override in the response. This option requires custom handling details in the rule's <code>BlockOverride*</code> settings. </p> 
            </li>
         </ul>")
  @as("BlockResponse")
  blockResponse: option<blockResponse>,
  @ocaml.doc("<p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list:</p>
         <ul>
            <li>
               <p>
                  <code>ALLOW</code> - Permit the request to go through.</p> 
            </li>
            <li>
               <p>
                  <code>ALERT</code> - Permit the request to go through but send an alert to the logs.</p> 
            </li>
            <li>
               <p>
                  <code>BLOCK</code> - Disallow the request. If this is specified, additional handling details are provided in the rule's <code>BlockResponse</code> setting. </p> 
            </li>
         </ul>")
  @as("Action")
  action: option<action>,
  @ocaml.doc(
    "<p>The priority of the rule in the rule group. This value must be unique within the rule group. DNS Firewall processes the rules in a rule group by order of priority, starting from the lowest setting.</p>"
  )
  @as("Priority")
  priority: option<priority>,
  @ocaml.doc("<p>The name of the rule. </p>") @as("Name") name: option<name>,
  @ocaml.doc("<p>The ID of the domain list that's used in the rule. </p>")
  @as("FirewallDomainListId")
  firewallDomainListId: option<resourceId>,
  @ocaml.doc("<p>The unique identifier of the firewall rule group of the rule. </p>")
  @as("FirewallRuleGroupId")
  firewallRuleGroupId: option<resourceId>,
}
type firewallDomains = array<firewallDomainName>
@ocaml.doc("<p>Minimal high-level information for a firewall domain list. The action <a>ListFirewallDomainLists</a> returns an array of these objects. </p>
         <p>To retrieve full information for a firewall domain list, call  <a>GetFirewallDomainList</a> and <a>ListFirewallDomains</a>.</p>")
type firewallDomainListMetadata = {
  @ocaml.doc(
    "<p>The owner of the list, used only for lists that are not managed by you. For example, the managed domain list <code>AWSManagedDomainsMalwareDomainList</code> has the managed owner name <code>Route 53 Resolver DNS Firewall</code>.</p>"
  )
  @as("ManagedOwnerName")
  managedOwnerName: option<servicePrinciple>,
  @ocaml.doc("<p>A unique string defined by you to identify the request. This allows you to retry failed
			requests without the risk of running the operation twice. This can be any unique string,
			for example, a timestamp. </p>")
  @as("CreatorRequestId")
  creatorRequestId: option<creatorRequestId>,
  @ocaml.doc("<p>The name of the domain list. </p>") @as("Name") name: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall domain list metadata.</p>")
  @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The ID of the domain list. </p>") @as("Id") id: option<resourceId>,
}
@ocaml.doc("<p>High-level information about a list of firewall domains for use in a <a>FirewallRule</a>. This is returned by <a>GetFirewallDomainList</a>.</p>
         <p>To retrieve the domains that are defined for this domain list, call <a>ListFirewallDomains</a>.</p>")
type firewallDomainList = {
  @ocaml.doc(
    "<p>The date and time that the domain list was last modified, in Unix time format and Coordinated Universal Time (UTC). </p>"
  )
  @as("ModificationTime")
  modificationTime: option<rfc3339TimeString>,
  @ocaml.doc(
    "<p>The date and time that the domain list was created, in Unix time format and Coordinated Universal Time (UTC). </p>"
  )
  @as("CreationTime")
  creationTime: option<rfc3339TimeString>,
  @ocaml.doc("<p>A unique string defined by you to identify the request. This allows you to retry failed
			requests without the risk of running the operation twice. This can be any unique string,
			for example, a timestamp. </p>")
  @as("CreatorRequestId")
  creatorRequestId: option<creatorRequestId>,
  @ocaml.doc(
    "<p>The owner of the list, used only for lists that are not managed by you. For example, the managed domain list <code>AWSManagedDomainsMalwareDomainList</code> has the managed owner name <code>Route 53 Resolver DNS Firewall</code>.</p>"
  )
  @as("ManagedOwnerName")
  managedOwnerName: option<servicePrinciple>,
  @ocaml.doc("<p>Additional information about the status of the list, if available.</p>")
  @as("StatusMessage")
  statusMessage: option<statusMessage>,
  @ocaml.doc("<p>The status of the domain list.  </p>") @as("Status")
  status: option<firewallDomainListStatus>,
  @ocaml.doc("<p>The number of domain names that are specified in the domain list.</p>")
  @as("DomainCount")
  domainCount: option<unsigned>,
  @ocaml.doc("<p>The name of the domain list. </p>") @as("Name") name: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall domain list.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The ID of the domain list. </p>") @as("Id") id: option<resourceId>,
}
@ocaml.doc("<p>Configuration of the firewall behavior provided by DNS Firewall for a single VPC from
			Amazon Virtual Private Cloud (Amazon VPC). </p>")
type firewallConfig = {
  @ocaml.doc("<p>Determines how DNS Firewall operates during failures, for example when all traffic that is sent to DNS Firewall fails to receive a reply. </p>
         <ul>
            <li>
               <p>By default, fail open is disabled, which means the failure mode is closed. This approach favors security over availability. DNS Firewall returns
           a failure error when it is unable to properly evaluate a query. </p>
            </li>
            <li>
               <p>If you enable this option, the failure mode is open. This approach favors availability over security. DNS Firewall allows queries to proceed if it 
       is unable to properly evaluate them. </p>
            </li>
         </ul>
         <p>This behavior is only enforced for VPCs that have at least one DNS Firewall rule group association. </p>")
  @as("FirewallFailOpen")
  firewallFailOpen: option<firewallFailOpenStatus>,
  @ocaml.doc(
    "<p>The Amazon Web Services account ID of the owner of the VPC that this firewall configuration applies to.</p>"
  )
  @as("OwnerId")
  ownerId: option<accountId>,
  @ocaml.doc("<p>The ID of the VPC that this firewall configuration applies to.</p>")
  @as("ResourceId")
  resourceId: option<resourceId>,
  @ocaml.doc("<p>The ID of the firewall configuration.</p>") @as("Id") id: option<resourceId>,
}
type filterValues = array<filterValue>
type targetList = array<targetAddress>
type tagList_ = array<tag>
type resolverRuleAssociations = array<resolverRuleAssociation>
type resolverQueryLogConfigList = array<resolverQueryLogConfig>
type resolverQueryLogConfigAssociationList = array<resolverQueryLogConfigAssociation>
@ocaml.doc("<p>In the response to a 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html\">CreateResolverEndpoint</a>, 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DeleteResolverEndpoint.html\">DeleteResolverEndpoint</a>, 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html\">GetResolverEndpoint</a>, 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html\">ListResolverEndpoints</a>, 
			or 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_UpdateResolverEndpoint.html\">UpdateResolverEndpoint</a> 
			request, a complex type that contains settings for an existing inbound or outbound Resolver endpoint.</p>")
type resolverEndpoint = {
  @ocaml.doc(
    "<p>The date and time that the endpoint was last modified, in Unix time format and Coordinated Universal Time (UTC).</p>"
  )
  @as("ModificationTime")
  modificationTime: option<rfc3339TimeString>,
  @ocaml.doc(
    "<p>The date and time that the endpoint was created, in Unix time format and Coordinated Universal Time (UTC).</p>"
  )
  @as("CreationTime")
  creationTime: option<rfc3339TimeString>,
  @ocaml.doc("<p>A detailed description of the status of the Resolver endpoint.</p>")
  @as("StatusMessage")
  statusMessage: option<statusMessage>,
  @ocaml.doc("<p>A code that specifies the current status of the Resolver endpoint. Valid values include the following:</p>
		       <ul>
            <li>
               <p>
                  <code>CREATING</code>: Resolver is creating and configuring one or more Amazon VPC network interfaces 
				for this endpoint.</p>
            </li>
            <li>
               <p>
                  <code>OPERATIONAL</code>: The Amazon VPC network interfaces for this endpoint are correctly configured and 
				able to pass inbound or outbound DNS queries between your network and Resolver.</p>
            </li>
            <li>
               <p>
                  <code>UPDATING</code>: Resolver is associating or disassociating one or more network interfaces 
				with this endpoint.</p>
            </li>
            <li>
               <p>
                  <code>AUTO_RECOVERING</code>: Resolver is trying to recover one or more of the network interfaces 
				that are associated with this endpoint. During the recovery process, the endpoint functions with limited capacity because of the 
				limit on the number of DNS queries per IP address (per network interface). For the current limit, see 
				<a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities-resolver\">Limits on Route 53 Resolver</a>.</p>
            </li>
            <li>
               <p>
                  <code>ACTION_NEEDED</code>: This endpoint is unhealthy, and Resolver can't automatically recover it. 
				To resolve the problem, we recommend that you check each IP address that you associated with the endpoint. For each IP address 
				that isn't available, add another IP address and then delete the IP address that isn't available. (An endpoint must always include 
				at least two IP addresses.) A status of <code>ACTION_NEEDED</code> can have a variety of causes. Here are two common causes:</p>
				           <ul>
                  <li>
                     <p>One or more of the network interfaces that are associated with the endpoint were deleted using Amazon VPC.</p>
                  </li>
                  <li>
                     <p>The network interface couldn't be created for some reason that's outside the control of Resolver.</p>
                  </li>
               </ul>
			         </li>
            <li>
               <p>
                  <code>DELETING</code>: Resolver is deleting this endpoint and the associated network interfaces.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<resolverEndpointStatus>,
  @ocaml.doc("<p>The ID of the VPC that you want to create the Resolver endpoint in.</p>")
  @as("HostVPCId")
  hostVPCId: option<resourceId>,
  @ocaml.doc(
    "<p>The number of IP addresses that the Resolver endpoint can use for DNS queries.</p>"
  )
  @as("IpAddressCount")
  ipAddressCount: option<ipAddressCount>,
  @ocaml.doc("<p>Indicates whether the Resolver endpoint allows inbound or outbound DNS queries:</p>
		       <ul>
            <li>
               <p>
                  <code>INBOUND</code>: allows DNS queries to your VPC from your network</p>
            </li>
            <li>
               <p>
                  <code>OUTBOUND</code>: allows DNS queries from your VPC to your network</p>
            </li>
         </ul>")
  @as("Direction")
  direction: option<resolverEndpointDirection>,
  @ocaml.doc("<p>The ID of one or more security groups that control access to this VPC. The security group must include one or more inbound rules 
			(for inbound endpoints) or outbound rules (for outbound endpoints). Inbound and outbound rules must allow TCP and UDP access. 
			For inbound access, open port 53. For outbound access, open the port that you're using for DNS queries on your network.</p>")
  @as("SecurityGroupIds")
  securityGroupIds: option<securityGroupIds>,
  @ocaml.doc("<p>The name that you assigned to the Resolver endpoint when you submitted a 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html\">CreateResolverEndpoint</a> 
			request.</p>")
  @as("Name")
  name: option<name>,
  @ocaml.doc("<p>The ARN (Amazon Resource Name) for the Resolver endpoint.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>A unique string that identifies the request that created the Resolver endpoint. The
				<code>CreatorRequestId</code> allows failed requests to be retried without the risk
			of running the operation twice.</p>")
  @as("CreatorRequestId")
  creatorRequestId: option<creatorRequestId>,
  @ocaml.doc("<p>The ID of the Resolver endpoint.</p>") @as("Id") id: option<resourceId>,
}
type resolverDnssecConfigList = array<resolverDnssecConfig>
type resolverConfigList = array<resolverConfig>
type ipAddressesResponse = array<ipAddressResponse>
type ipAddressesRequest = array<ipAddressRequest>
type firewallRules = array<firewallRule>
type firewallRuleGroupMetadataList = array<firewallRuleGroupMetadata>
type firewallRuleGroupAssociations = array<firewallRuleGroupAssociation>
type firewallDomainListMetadataList = array<firewallDomainListMetadata>
type firewallConfigList = array<firewallConfig>
@ocaml.doc("<p>For Resolver list operations 
			(<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html\">ListResolverEndpoints</a>, 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html\">ListResolverRules</a>, 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html\">ListResolverRuleAssociations</a>, 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigs.html\">ListResolverQueryLogConfigs</a>,
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigAssociations.html\">ListResolverQueryLogConfigAssociations</a>),
			and
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverDnssecConfigs.html\">ListResolverDnssecConfigs</a>), 
			an optional specification to return a subset of objects.</p>
		       <p>To filter objects, such as Resolver endpoints or Resolver rules, you specify <code>Name</code> and <code>Values</code>. For example, 
			to list only inbound Resolver endpoints, specify <code>Direction</code> for <code>Name</code> and specify <code>INBOUND</code> for <code>Values</code>. </p>")
type filter = {
  @ocaml.doc("<p>When you're using a <code>List</code> operation and you want the operation to return a subset of objects, such as Resolver endpoints or Resolver rules,
			the value of the parameter that you want to use to filter objects. For example, to list only inbound Resolver endpoints, specify <code>Direction</code> for 
			<code>Name</code> and specify <code>INBOUND</code> for <code>Values</code>.</p>")
  @as("Values")
  values: option<filterValues>,
  @ocaml.doc("<p>The name of the parameter that you want to use to filter objects.</p>
		       <p>The valid values for <code>Name</code> depend on the action that you're including the filter in, 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html\">ListResolverEndpoints</a>, 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html\">ListResolverRules</a>, 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html\">ListResolverRuleAssociations</a>, 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigs.html\">ListResolverQueryLogConfigs</a>,
			or 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigAssociations.html\">ListResolverQueryLogConfigAssociations</a>.</p>
		
		       <note>
			         <p>In early versions of Resolver, values for <code>Name</code> were listed as uppercase, with underscore (_) delimiters. For example, 
				<code>CreatorRequestId</code> was originally listed as <code>CREATOR_REQUEST_ID</code>. Uppercase values for <code>Name</code> are still supported.</p>
		       </note>
		
		       <p>
            <b>ListResolverEndpoints</b>
         </p>
		       <p>Valid values for <code>Name</code> include the following:</p>
		       <ul>
            <li>
               <p>
                  <code>CreatorRequestId</code>: The value that you specified when you created the Resolver endpoint.</p>
            </li>
            <li>
               <p>
                  <code>Direction</code>: Whether you want to return inbound or outbound Resolver endpoints. If you specify <code>DIRECTION</code> 
				for <code>Name</code>, specify <code>INBOUND</code> or <code>OUTBOUND</code> for <code>Values</code>.</p>
            </li>
            <li>
               <p>
                  <code>HostVPCId</code>: The ID of the VPC that inbound DNS queries pass through on the way from your network to your VPCs in a region, or 
				the VPC that outbound queries pass through on the way from your VPCs to your network. In a 
				<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html\">CreateResolverEndpoint</a>
				request, <code>SubnetId</code> indirectly identifies the VPC. In a 
				<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html\">GetResolverEndpoint</a>
				request, the VPC ID for a Resolver endpoint 
				is returned in the <code>HostVPCId</code> element. </p>
            </li>
            <li>
               <p>
                  <code>IpAddressCount</code>: The number of IP addresses that you have associated with the Resolver endpoint.</p>
            </li>
            <li>
               <p>
                  <code>Name</code>: The name of the Resolver endpoint.</p>
            </li>
            <li>
               <p>
                  <code>SecurityGroupIds</code>: The IDs of the VPC security groups that you specified when you created the 
				Resolver endpoint.</p>
            </li>
            <li>
               <p>
                  <code>Status</code>: The status of the Resolver endpoint. If you specify <code>Status</code> for <code>Name</code>, 
				specify one of the following status codes for <code>Values</code>: <code>CREATING</code>, <code>OPERATIONAL</code>, <code>UPDATING</code>,
				<code>AUTO_RECOVERING</code>, <code>ACTION_NEEDED</code>, or <code>DELETING</code>. For more information, see <code>Status</code> in
				<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverEndpoint.html\">ResolverEndpoint</a>.</p>
            </li>
         </ul>
		
		       <p>
            <b>ListResolverRules</b>
         </p>
		       <p>Valid values for <code>Name</code> include the following:</p>
		       <ul>
            <li>
               <p>
                  <code>CreatorRequestId</code>: The value that you specified when you created the Resolver rule.</p>
            </li>
            <li>
               <p>
                  <code>DomainName</code>: The domain name for which Resolver is forwarding DNS queries to your network. In the value that 
				you specify for <code>Values</code>, include a trailing dot (.) after the domain name. For example, if the domain name is example.com, 
				specify the following value. Note the \".\" after <code>com</code>:</p>
				           <p>
                  <code>example.com.</code>
               </p>
			         </li>
            <li>
               <p>
                  <code>Name</code>: The name of the Resolver rule.</p>
            </li>
            <li>
               <p>
                  <code>ResolverEndpointId</code>: The ID of the Resolver endpoint that the Resolver rule is associated with.</p>
				           <note>
                  <p>You can filter on the Resolver endpoint only for rules that have a value of <code>FORWARD</code> for 
					<code>RuleType</code>.</p>
               </note>
			         </li>
            <li>
               <p>
                  <code>Status</code>: The status of the Resolver rule. If you specify <code>Status</code> for <code>Name</code>, 
				specify one of the following status codes for <code>Values</code>: <code>COMPLETE</code>, <code>DELETING</code>, <code>UPDATING</code>, 
				or <code>FAILED</code>.</p>
            </li>
            <li>
               <p>
                  <code>Type</code>: The type of the Resolver rule. If you specify <code>TYPE</code> 
				for <code>Name</code>, specify <code>FORWARD</code> or <code>SYSTEM</code> for <code>Values</code>.</p>
            </li>
         </ul>
		
		       <p>
            <b>ListResolverRuleAssociations</b>
         </p>
		       <p>Valid values for <code>Name</code> include the following:</p>
		       <ul>
            <li>
               <p>
                  <code>Name</code>: The name of the Resolver rule association.</p>
            </li>
            <li>
               <p>
                  <code>ResolverRuleId</code>: The ID of the Resolver rule that is associated with one or more VPCs.</p>
            </li>
            <li>
               <p>
                  <code>Status</code>: The status of the Resolver rule association. If you specify <code>Status</code> for <code>Name</code>, 
				specify one of the following status codes for <code>Values</code>: <code>CREATING</code>, <code>COMPLETE</code>, <code>DELETING</code>, or 
				<code>FAILED</code>.</p>
			         </li>
            <li>
               <p>
                  <code>VPCId</code>: The ID of the VPC that the Resolver rule is associated with.</p>
            </li>
         </ul>

		       <p>
            <b>ListResolverQueryLogConfigs</b>
         </p>
		       <p>Valid values for <code>Name</code> include the following:</p>
		       <ul>
            <li>
               <p>
                  <code>Arn</code>: The ARN for the query logging configuration.</p>
            </li>
            <li>
               <p>
                  <code>AssociationCount</code>: The number of VPCs that are associated with the query logging configuration.</p>
            </li>
            <li>
               <p>
                  <code>CreationTime</code>: The date and time that the query logging configuration was created, in Unix time format and 
				Coordinated Universal Time (UTC). </p>
            </li>
            <li>
               <p>
                  <code>CreatorRequestId</code>: A unique string that identifies the request that created the query logging configuration.</p>
            </li>
            <li>
               <p>
                  <code>Destination</code>: The Amazon Web Services service that you want to forward query logs to. Valid values include the following:</p>
				           <ul>
                  <li>
                     <p>
                        <code>S3</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>CloudWatchLogs</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>KinesisFirehose</code>
                     </p>
                  </li>
               </ul>
			         </li>
            <li>
               <p>
                  <code>DestinationArn</code>: The ARN of the location that Resolver is sending query logs to. This value can be the ARN for an 
				S3 bucket, a CloudWatch Logs log group, or a Kinesis Data Firehose delivery stream.</p>
            </li>
            <li>
               <p>
                  <code>Id</code>: The ID of the query logging configuration</p>
            </li>
            <li>
               <p>
                  <code>Name</code>: The name of the query logging configuration</p>
            </li>
            <li>
               <p>
                  <code>OwnerId</code>: The Amazon Web Services account ID for the account that created the query logging configuration.</p>
            </li>
            <li>
               <p>
                  <code>ShareStatus</code>: An indication of whether the query logging configuration is shared with other Amazon Web Services accounts, 
				or was shared with the current account by another Amazon Web Services account. Valid values include: <code>NOT_SHARED</code>, <code>SHARED_WITH_ME</code>, 
				or <code>SHARED_BY_ME</code>.</p>
            </li>
            <li>
               <p>
                  <code>Status</code>: The status of the query logging configuration. If you specify <code>Status</code> for <code>Name</code>, 
				specify the applicable status code for <code>Values</code>: <code>CREATING</code>, <code>CREATED</code>, 
				<code>DELETING</code>, or <code>FAILED</code>. For more information, see 
				<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverQueryLogConfig.html#Route53Resolver-Type-route53resolver_ResolverQueryLogConfig-Status\">Status</a>.
				</p>
			         </li>
         </ul>
		
		       <p>
            <b>ListResolverQueryLogConfigAssociations</b>
         </p>
		       <p>Valid values for <code>Name</code> include the following:</p>
		       <ul>
            <li>
               <p>
                  <code>CreationTime</code>: The date and time that the VPC was associated with the query logging configuration, in Unix time format and 
				Coordinated Universal Time (UTC).</p>
            </li>
            <li>
               <p>
                  <code>Error</code>: If the value of <code>Status</code> is <code>FAILED</code>, specify the cause: 
				<code>DESTINATION_NOT_FOUND</code> or <code>ACCESS_DENIED</code>.</p>
            </li>
            <li>
               <p>
                  <code>Id</code>: The ID of the query logging association.</p>
            </li>
            <li>
               <p>
                  <code>ResolverQueryLogConfigId</code>: The ID of the query logging configuration that a VPC is associated with.</p>
            </li>
            <li>
               <p>
                  <code>ResourceId</code>: The ID of the Amazon VPC that is associated with the query logging configuration.</p>
            </li>
            <li>
               <p>
                  <code>Status</code>: The status of the query logging association. If you specify <code>Status</code> for <code>Name</code>, 
				specify the applicable status code for <code>Values</code>: <code>CREATING</code>, <code>CREATED</code>, 
				<code>DELETING</code>, or <code>FAILED</code>. For more information, see 
			    <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverQueryLogConfigAssociation.html#Route53Resolver-Type-route53resolver_ResolverQueryLogConfigAssociation-Status\">Status</a>.
				</p>
			         </li>
         </ul>")
  @as("Name")
  name: option<filterName>,
}
@ocaml.doc("<p>In an 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_UpdateResolverRule.html\">UpdateResolverRule</a>
			request, information about the changes that you want to make.</p>")
type resolverRuleConfig = {
  @ocaml.doc("<p>The ID of the new outbound Resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify in 
			<code>TargetIps</code>.</p>")
  @as("ResolverEndpointId")
  resolverEndpointId: option<resourceId>,
  @ocaml.doc(
    "<p>For DNS queries that originate in your VPC, the new IP addresses that you want to route outbound DNS queries to.</p>"
  )
  @as("TargetIps")
  targetIps: option<targetList>,
  @ocaml.doc(
    "<p>The new name for the Resolver rule. The name that you specify appears in the Resolver dashboard in the Route 53 console. </p>"
  )
  @as("Name")
  name: option<name>,
}
@ocaml.doc("<p>For queries that originate in your VPC, detailed information about a Resolver rule, which specifies how to route DNS queries 
			out of the VPC. The <code>ResolverRule</code> parameter appears in the response to a 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverRule.html\">CreateResolverRule</a>, 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DeleteResolverRule.html\">DeleteResolverRule</a>, 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRule.html\">GetResolverRule</a>, 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html\">ListResolverRules</a>, 
			or 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_UpdateResolverRule.html\">UpdateResolverRule</a> request.</p>")
type resolverRule = {
  @ocaml.doc(
    "<p>The date and time that the Resolver rule was last updated, in Unix time format and Coordinated Universal Time (UTC).</p>"
  )
  @as("ModificationTime")
  modificationTime: option<rfc3339TimeString>,
  @ocaml.doc(
    "<p>The date and time that the Resolver rule was created, in Unix time format and Coordinated Universal Time (UTC).</p>"
  )
  @as("CreationTime")
  creationTime: option<rfc3339TimeString>,
  @ocaml.doc("<p>Whether the rule is shared and, if so, whether the current account is sharing the rule with
			another account, or another account is sharing the rule with the current account.</p>")
  @as("ShareStatus")
  shareStatus: option<shareStatus>,
  @ocaml.doc(
    "<p>When a rule is shared with another Amazon Web Services account, the account ID of the account that the rule is shared with.</p>"
  )
  @as("OwnerId")
  ownerId: option<accountId>,
  @ocaml.doc("<p>The ID of the endpoint that the rule is associated with.</p>")
  @as("ResolverEndpointId")
  resolverEndpointId: option<resourceId>,
  @ocaml.doc("<p>An array that contains the IP addresses and ports that an outbound endpoint forwards DNS queries to. Typically, 
			these are the IP addresses of DNS resolvers on your network. Specify IPv4 addresses. IPv6 is not supported.</p>")
  @as("TargetIps")
  targetIps: option<targetList>,
  @ocaml.doc(
    "<p>The name for the Resolver rule, which you specified when you created the Resolver rule.</p>"
  )
  @as("Name")
  name: option<name>,
  @ocaml.doc("<p>When you want to forward DNS queries for specified domain name to resolvers on your network, specify <code>FORWARD</code>.</p>
		       <p>When you have a forwarding rule to forward DNS queries for a domain to your network and you want Resolver to process queries for 
			a subdomain of that domain, specify <code>SYSTEM</code>.</p>
		       <p>For example, to forward DNS queries for example.com to resolvers on your network, you create a rule and specify <code>FORWARD</code> 
			for <code>RuleType</code>. To then have Resolver process queries for apex.example.com, you create a rule and specify 
			<code>SYSTEM</code> for <code>RuleType</code>.</p>
		       <p>Currently, only Resolver can create rules that have a value of <code>RECURSIVE</code> for <code>RuleType</code>.</p>")
  @as("RuleType")
  ruleType: option<ruleTypeOption>,
  @ocaml.doc("<p>A detailed description of the status of a Resolver rule.</p>") @as("StatusMessage")
  statusMessage: option<statusMessage>,
  @ocaml.doc("<p>A code that specifies the current status of the Resolver rule.</p>") @as("Status")
  status: option<resolverRuleStatus>,
  @ocaml.doc("<p>DNS queries for this domain name are forwarded to the IP addresses that are specified in <code>TargetIps</code>. If a query matches 
			multiple Resolver rules (example.com and www.example.com), the query is routed using the Resolver rule that contains the most specific domain name 
			(www.example.com).</p>")
  @as("DomainName")
  domainName: option<domainName>,
  @ocaml.doc(
    "<p>The ARN (Amazon Resource Name) for the Resolver rule specified by <code>Id</code>.</p>"
  )
  @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>A unique string that you specified when you created the Resolver rule.
				<code>CreatorRequestId</code> identifies the request and allows failed requests to
			be retried without the risk of running the operation twice. </p>")
  @as("CreatorRequestId")
  creatorRequestId: option<creatorRequestId>,
  @ocaml.doc("<p>The ID that Resolver assigned to the Resolver rule when you created it.</p>")
  @as("Id")
  id: option<resourceId>,
}
type resolverEndpoints = array<resolverEndpoint>
type filters = array<filter>
type resolverRules = array<resolverRule>
@ocaml.doc("<p>When you create a VPC using Amazon VPC, you automatically get DNS resolution within the VPC
			from Route 53 Resolver. By default, Resolver answers DNS queries for VPC domain names
			such as domain names for EC2 instances or Elastic Load Balancing load balancers.
			Resolver performs recursive lookups against public name servers for all other domain
			names.</p>

		       <p>You can also configure DNS resolution between your VPC and your network over a Direct Connect or VPN connection:</p>

		       <p>
            <b>Forward DNS queries from resolvers on your network to Route 53 Resolver</b>
         </p>

		       <p>DNS resolvers on your network can forward DNS queries to Resolver in a specified VPC. This allows your DNS resolvers 
			to easily resolve domain names for Amazon Web Services resources such as EC2 instances or records in a Route 53 private hosted zone. 
			For more information, see 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-network-to-vpc\">How DNS Resolvers 
			on Your Network Forward DNS Queries to Route 53 Resolver</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
		
		       <p>
            <b>Conditionally forward queries from a VPC to resolvers on your network</b>
         </p>

		       <p>You can configure Resolver to forward queries that it receives from EC2 instances in your VPCs to DNS resolvers on your network. 
			To forward selected queries, you create Resolver rules that specify the domain names for the DNS queries that you want to forward 
			(such as example.com), and the IP addresses of the DNS resolvers on your network that you want to forward the queries to. 
			If a query matches multiple rules (example.com, acme.example.com), Resolver chooses the rule with the most specific match 
			(acme.example.com) and forwards the query to the IP addresses that you specified in that rule. For more information, see 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-vpc-to-network\">How Route 53 Resolver 
			Forwards DNS Queries from Your VPCs to Your Network</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>

		       <p>Like Amazon VPC, Resolver is Regional. In each Region where you have VPCs, you can choose
			whether to forward queries from your VPCs to your network (outbound queries), from your
			network to your VPCs (inbound queries), or both.</p>")
module PutResolverRulePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>An Identity and Access Management policy statement that lists the rules that you want to share with another Amazon Web Services account and the operations that you want the account 
			to be able to perform. You can specify the following operations in the <code>Action</code> section of the statement:</p>
			      <ul>
            <li>
               <p>
                  <code>route53resolver:GetResolverRule</code>
               </p>
            </li>
            <li>
               <p>
                  <code>route53resolver:AssociateResolverRule</code>
               </p>
            </li>
            <li>
               <p>
                  <code>route53resolver:DisassociateResolverRule</code>
               </p>
            </li>
            <li>
               <p>
                  <code>route53resolver:ListResolverRules</code>
               </p>
            </li>
            <li>
               <p>
                  <code>route53resolver:ListResolverRuleAssociations</code>
               </p>
            </li>
         </ul>
		
		       <p>In the <code>Resource</code> section of the statement, specify the ARN for the rule that you want to share with another account. Specify the same ARN 
			that you specified in <code>Arn</code>.</p>")
    @as("ResolverRulePolicy")
    resolverRulePolicy: resolverRulePolicy,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the rule that you want to share with another account.</p>"
    )
    @as("Arn")
    arn: arn,
  }
  @ocaml.doc("<p>The response to a <code>PutResolverRulePolicy</code> request.</p>")
  type response = {
    @ocaml.doc("<p>Whether the <code>PutResolverRulePolicy</code> request was successful.</p>")
    @as("ReturnValue")
    returnValue: option<boolean_>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "PutResolverRulePolicyCommand"
  let make = (~resolverRulePolicy, ~arn, ()) => new({resolverRulePolicy, arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutResolverQueryLogConfigPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>An Identity and Access Management policy statement that lists the query logging configurations that you want to share with another Amazon Web Services account 
			and the operations that you want the account to be able to perform. You can specify the following operations in the <code>Actions</code> section 
			of the statement:</p>
		       <ul>
            <li>
               <p>
                  <code>route53resolver:AssociateResolverQueryLogConfig</code>
               </p>
            </li>
            <li>
               <p>
                  <code>route53resolver:DisassociateResolverQueryLogConfig</code>
               </p>
            </li>
            <li>
               <p>
                  <code>route53resolver:ListResolverQueryLogConfigAssociations</code>
               </p>
            </li>
            <li>
               <p>
                  <code>route53resolver:ListResolverQueryLogConfigs</code>
               </p>
            </li>
         </ul>
		
		       <p>In the <code>Resource</code> section of the statement, you specify the ARNs for the query logging configurations that you want to share 
			with the account that you specified in <code>Arn</code>. </p>")
    @as("ResolverQueryLogConfigPolicy")
    resolverQueryLogConfigPolicy: resolverQueryLogConfigPolicy,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the account that you want to share rules with.</p>"
    )
    @as("Arn")
    arn: arn,
  }
  @ocaml.doc("<p>The response to a <code>PutResolverQueryLogConfigPolicy</code> request.</p>")
  type response = {
    @ocaml.doc(
      "<p>Whether the <code>PutResolverQueryLogConfigPolicy</code> request was successful.</p>"
    )
    @as("ReturnValue")
    returnValue: option<boolean_>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "PutResolverQueryLogConfigPolicyCommand"
  let make = (~resolverQueryLogConfigPolicy, ~arn, ()) => new({resolverQueryLogConfigPolicy, arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutFirewallRuleGroupPolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Identity and Access Management (Amazon Web Services IAM) policy to attach to the rule group.</p>"
    )
    @as("FirewallRuleGroupPolicy")
    firewallRuleGroupPolicy: firewallRuleGroupPolicy,
    @ocaml.doc("<p>The ARN (Amazon Resource Name) for the rule group that you want to share.</p>")
    @as("Arn")
    arn: arn,
  }
  type response = {@ocaml.doc("<p></p>") @as("ReturnValue") returnValue: option<boolean_>}
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "PutFirewallRuleGroupPolicyCommand"
  let make = (~firewallRuleGroupPolicy, ~arn, ()) => new({firewallRuleGroupPolicy, arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ImportFirewallDomains = {
  type t
  type request = {
    @ocaml.doc("<p>The fully qualified URL or URI of the file stored in Amazon Simple Storage Service
			(Amazon S3) that contains the list of domains to import.</p>
         <p>The file must be in an S3 bucket that's in the same Region
       as your DNS Firewall. The file must be a text file and must contain a single domain per line.</p>")
    @as("DomainFileUrl")
    domainFileUrl: domainListFileUrl,
    @ocaml.doc(
      "<p>What you want DNS Firewall to do with the domains that are listed in the file. This must be set to <code>REPLACE</code>, which updates the domain list to exactly match the list in the file. </p>"
    )
    @as("Operation")
    operation: firewallDomainImportOperation,
    @ocaml.doc(
      "<p>The ID of the domain list that you want to modify with the import operation.</p>"
    )
    @as("FirewallDomainListId")
    firewallDomainListId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>Additional information about the status of the list, if available.</p>")
    @as("StatusMessage")
    statusMessage: option<statusMessage>,
    @ocaml.doc("<p> </p>") @as("Status") status: option<firewallDomainListStatus>,
    @ocaml.doc("<p>The name of the domain list. </p>") @as("Name") name: option<name>,
    @ocaml.doc("<p>The Id of the firewall domain list that DNS Firewall just updated.</p>")
    @as("Id")
    id: option<resourceId>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "ImportFirewallDomainsCommand"
  let make = (~domainFileUrl, ~operation, ~firewallDomainListId, ()) =>
    new({domainFileUrl, operation, firewallDomainListId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetResolverRulePolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the Resolver rule that you want to get the Resolver rule policy for.</p>"
    )
    @as("Arn")
    arn: arn,
  }
  type response = {
    @ocaml.doc(
      "<p>The Resolver rule policy for the rule that you specified in a <code>GetResolverRulePolicy</code> request.</p>"
    )
    @as("ResolverRulePolicy")
    resolverRulePolicy: option<resolverRulePolicy>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "GetResolverRulePolicyCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetResolverQueryLogConfigPolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ARN of the query logging configuration that you want to get the query logging policy for.</p>"
    )
    @as("Arn")
    arn: arn,
  }
  type response = {
    @ocaml.doc("<p>Information about the query logging policy for the query logging configuration that you specified in a 
			<code>GetResolverQueryLogConfigPolicy</code> request.</p>")
    @as("ResolverQueryLogConfigPolicy")
    resolverQueryLogConfigPolicy: option<resolverQueryLogConfigPolicy>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "GetResolverQueryLogConfigPolicyCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetFirewallRuleGroupPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN (Amazon Resource Name) for the rule group.</p>") @as("Arn") arn: arn,
  }
  type response = {
    @ocaml.doc("<p>The Identity and Access Management (Amazon Web Services IAM) policy for sharing the specified rule
			group. You can use the policy to share the rule group using Resource Access Manager
			(RAM). </p>")
    @as("FirewallRuleGroupPolicy")
    firewallRuleGroupPolicy: option<firewallRuleGroupPolicy>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "GetFirewallRuleGroupPolicyCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateResolverDnssecConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The new value that you are specifying for DNSSEC validation for the VPC. The value can be <code>ENABLE</code>
			or <code>DISABLE</code>. Be aware that it can take time for a validation status change to be completed.</p>")
    @as("Validation")
    validation: validation,
    @ocaml.doc(
      "<p>The ID of the virtual private cloud (VPC) that you're updating the DNSSEC validation status for.</p>"
    )
    @as("ResourceId")
    resourceId: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>A complex type that contains settings for the specified DNSSEC configuration.</p>"
    )
    @as("ResolverDNSSECConfig")
    resolverDNSSECConfig: option<resolverDnssecConfig>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "UpdateResolverDnssecConfigCommand"
  let make = (~validation, ~resourceId, ()) => new({validation, resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateResolverConfig = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether or not the Resolver will create autodefined rules for reverse DNS
			lookups. This is enabled by default. Disabling this option will also affect EC2-Classic
			instances using ClassicLink. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html\">ClassicLink</a> in the
					<i>Amazon EC2 guide</i>.</p>
		       <note>
            <p>It can take some time for the status change to be completed.</p>
         </note>
		       <p></p>")
    @as("AutodefinedReverseFlag")
    autodefinedReverseFlag: autodefinedReverseFlag,
    @ocaml.doc(
      "<p>Resource ID of the Amazon VPC that you want to update the Resolver configuration for.</p>"
    )
    @as("ResourceId")
    resourceId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>An array that contains settings for the specified Resolver configuration.</p>")
    @as("ResolverConfig")
    resolverConfig: option<resolverConfig>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "UpdateResolverConfigCommand"
  let make = (~autodefinedReverseFlag, ~resourceId, ()) => new({autodefinedReverseFlag, resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateFirewallRuleGroupAssociation = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the rule group association.</p>") @as("Name") name: option<name>,
    @ocaml.doc(
      "<p>If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. </p>"
    )
    @as("MutationProtection")
    mutationProtection: option<mutationProtectionStatus>,
    @ocaml.doc("<p>The setting that determines the processing order of the rule group among the rule
			groups that you associate with the specified VPC. DNS Firewall filters VPC traffic
			starting from the rule group with the lowest numeric priority setting. </p>
         <p>You must specify a unique priority for each rule group that you associate with a single VPC. 
           To make it easier to insert rule groups later, leave space between the numbers, for example, use 100, 200, and so on. You 
   can change the priority setting for a rule group association after you create it.</p>")
    @as("Priority")
    priority: option<priority>,
    @ocaml.doc("<p>The identifier of the <a>FirewallRuleGroupAssociation</a>. </p>")
    @as("FirewallRuleGroupAssociationId")
    firewallRuleGroupAssociationId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The association that you just updated. </p>") @as("FirewallRuleGroupAssociation")
    firewallRuleGroupAssociation: option<firewallRuleGroupAssociation>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "UpdateFirewallRuleGroupAssociationCommand"
  let make = (~firewallRuleGroupAssociationId, ~name=?, ~mutationProtection=?, ~priority=?, ()) =>
    new({name, mutationProtection, priority, firewallRuleGroupAssociationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateFirewallRule = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the rule.</p>") @as("Name") name: option<name>,
    @ocaml.doc(
      "<p>The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>"
    )
    @as("BlockOverrideTtl")
    blockOverrideTtl: option<blockOverrideTtl>,
    @ocaml.doc(
      "<p>The DNS record's type. This determines the format of the record value that you provided in <code>BlockOverrideDomain</code>. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>"
    )
    @as("BlockOverrideDnsType")
    blockOverrideDnsType: option<blockOverrideDnsType>,
    @ocaml.doc(
      "<p>The custom DNS record to send back in response to the query. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>"
    )
    @as("BlockOverrideDomain")
    blockOverrideDomain: option<blockOverrideDomain>,
    @ocaml.doc("<p>The way that you want DNS Firewall to block the request. Used for the rule action setting <code>BLOCK</code>.</p>
         <ul>
            <li>
               <p>
                  <code>NODATA</code> - Respond indicating that the query was successful, but no response is available for it.</p> 
            </li>
            <li>
               <p>
                  <code>NXDOMAIN</code> - Respond indicating that the domain name that's in the query doesn't exist.</p> 
            </li>
            <li>
               <p>
                  <code>OVERRIDE</code> - Provide a custom override in the response. This option requires custom handling details in the rule's <code>BlockOverride*</code> settings. </p> 
            </li>
         </ul>")
    @as("BlockResponse")
    blockResponse: option<blockResponse>,
    @ocaml.doc("<p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list:</p>
         <ul>
            <li>
               <p>
                  <code>ALLOW</code> - Permit the request to go through.</p> 
            </li>
            <li>
               <p>
                  <code>ALERT</code> - Permit the request to go through but send an alert to the logs.</p> 
            </li>
            <li>
               <p>
                  <code>BLOCK</code> - Disallow the request. This option requires additional details in the rule's <code>BlockResponse</code>. </p> 
            </li>
         </ul>")
    @as("Action")
    action: option<action>,
    @ocaml.doc("<p>The setting that determines the processing order of the rule in the rule group. DNS Firewall 
           processes the rules in a rule group by order of priority, starting from the lowest setting.</p>
         <p>You must specify a unique priority for each rule in a rule group. 
           To make it easier to insert rules later, leave space between the numbers, for example, use 100, 200, and so on. You 
   can change the priority setting for the rules in a rule group at any time.</p>")
    @as("Priority")
    priority: option<priority>,
    @ocaml.doc("<p>The ID of the domain list to use in the rule.  </p>") @as("FirewallDomainListId")
    firewallDomainListId: resourceId,
    @ocaml.doc("<p>The unique identifier of the firewall rule group for the rule. </p>")
    @as("FirewallRuleGroupId")
    firewallRuleGroupId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The firewall rule that you just updated. </p>") @as("FirewallRule")
    firewallRule: option<firewallRule>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "UpdateFirewallRuleCommand"
  let make = (
    ~firewallDomainListId,
    ~firewallRuleGroupId,
    ~name=?,
    ~blockOverrideTtl=?,
    ~blockOverrideDnsType=?,
    ~blockOverrideDomain=?,
    ~blockResponse=?,
    ~action=?,
    ~priority=?,
    (),
  ) =>
    new({
      name,
      blockOverrideTtl,
      blockOverrideDnsType,
      blockOverrideDomain,
      blockResponse,
      action,
      priority,
      firewallDomainListId,
      firewallRuleGroupId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateFirewallDomains = {
  type t
  type request = {
    @ocaml.doc("<p>A list of domains to use in the update operation.</p>
         <p>Each domain specification in your domain list must satisfy the following
	requirements: </p>
         <ul>
            <li>
      	        <p>It can optionally start with <code>*</code> (asterisk).</p>
      	     </li>
            <li>
      	        <p>With the exception of the optional starting asterisk, it must only contain
      	   the following characters: <code>A-Z</code>, <code>a-z</code>,
      	   <code>0-9</code>, <code>-</code> (hyphen).</p>
      	     </li>
            <li>
      	        <p>It must be from 1-255 characters in length. </p>
      	     </li>
         </ul>")
    @as("Domains")
    domains: firewallDomains,
    @ocaml.doc("<p>What you want DNS Firewall to do with the domains that you are providing: </p>
         <ul>
            <li>
               <p>
                  <code>ADD</code> - Add the domains to the ones that are already in the domain list. </p> 
            </li>
            <li>
               <p>
                  <code>REMOVE</code> - Search the domain list for the domains and remove them from the list.</p> 
            </li>
            <li>
               <p>
                  <code>REPLACE</code> - Update the domain list to exactly match the list that you are providing. </p> 
            </li>
         </ul>")
    @as("Operation")
    operation: firewallDomainUpdateOperation,
    @ocaml.doc("<p>The ID of the domain list whose domains you want to update. </p>")
    @as("FirewallDomainListId")
    firewallDomainListId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>Additional information about the status of the list, if available.</p>")
    @as("StatusMessage")
    statusMessage: option<statusMessage>,
    @ocaml.doc("<p> </p>") @as("Status") status: option<firewallDomainListStatus>,
    @ocaml.doc("<p>The name of the domain list. </p>") @as("Name") name: option<name>,
    @ocaml.doc("<p>The ID of the firewall domain list that DNS Firewall just updated.</p>")
    @as("Id")
    id: option<resourceId>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "UpdateFirewallDomainsCommand"
  let make = (~domains, ~operation, ~firewallDomainListId, ()) =>
    new({domains, operation, firewallDomainListId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateFirewallConfig = {
  type t
  type request = {
    @ocaml.doc("<p>Determines how Route 53 Resolver handles queries during failures, for example when all traffic that is sent to DNS Firewall fails to receive a reply. </p>
         <ul>
            <li>
               <p>By default, fail open is disabled, which means the failure mode is closed. This approach favors security over availability. 
       DNS Firewall blocks queries that it is unable to evaluate properly. </p>
            </li>
            <li>
               <p>If you enable this option, the failure mode is open. This approach favors availability over security. DNS Firewall allows queries to proceed if it 
       is unable to properly evaluate them. </p>
            </li>
         </ul>
         <p>This behavior is only enforced for VPCs that have at least one DNS Firewall rule group association. </p>")
    @as("FirewallFailOpen")
    firewallFailOpen: firewallFailOpenStatus,
    @ocaml.doc("<p>The ID of the VPC that the configuration is for.</p>") @as("ResourceId")
    resourceId: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>Configuration of the firewall behavior provided by DNS Firewall for a single VPC. </p>"
    )
    @as("FirewallConfig")
    firewallConfig: option<firewallConfig>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "UpdateFirewallConfigCommand"
  let make = (~firewallFailOpen, ~resourceId, ()) => new({firewallFailOpen, resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags that you want to remove to the specified resource.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the resource that you want to remove tags from. To get the ARN for a resource, use the applicable 
			<code>Get</code> or <code>List</code> command: </p>
			      <ul>
            <li>
					          <p>
                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html\">GetResolverEndpoint</a>
               </p>
				        </li>
            <li>
					          <p>
                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRule.html\">GetResolverRule</a>
               </p>
				        </li>
            <li>
					          <p>
                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRuleAssociation.html\">GetResolverRuleAssociation</a>
               </p>
				        </li>
            <li>
					          <p>
                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html\">ListResolverEndpoints</a>
               </p>
				        </li>
            <li>
					          <p>
                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html\">ListResolverRuleAssociations</a>
               </p>
				        </li>
            <li>
					          <p>
                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html\">ListResolverRules</a>
               </p>
				        </li>
         </ul>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListFirewallDomains = {
  type t
  type request = {
    @ocaml.doc("<p>For the first call to this list request, omit this value.</p>
         <p>When you request a list of objects, Resolver returns at most the number of objects 
       specified in <code>MaxResults</code>. If more objects are available for retrieval,
           Resolver returns a <code>NextToken</code> value in the response. To retrieve the next 
               batch of objects, use the token that was returned for the prior request in your next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of objects that you want Resolver to return for this request. If more
            objects are available, in the response, Resolver provides a
           <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p> 
         <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>")
    @as("MaxResults")
    maxResults: option<listDomainMaxResults>,
    @ocaml.doc("<p>The ID of the domain list whose domains you want to retrieve. </p>")
    @as("FirewallDomainListId")
    firewallDomainListId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>A list of the domains in the firewall domain list.  </p>
         <p>This might be a partial list of the domains that you've defined in the domain list. For
			information, see <code>MaxResults</code>. </p>")
    @as("Domains")
    domains: option<firewallDomains>,
    @ocaml.doc("<p>If objects are still available for retrieval, Resolver returns this token in the response. 
           To retrieve the next batch of objects, provide this token in your next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "ListFirewallDomainsCommand"
  let make = (~firewallDomainListId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, firewallDomainListId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetResolverRuleAssociation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the Resolver rule association that you want to get information about.</p>"
    )
    @as("ResolverRuleAssociationId")
    resolverRuleAssociationId: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>Information about the Resolver rule association that you specified in a <code>GetResolverRuleAssociation</code> request.</p>"
    )
    @as("ResolverRuleAssociation")
    resolverRuleAssociation: option<resolverRuleAssociation>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "GetResolverRuleAssociationCommand"
  let make = (~resolverRuleAssociationId, ()) =>
    new({resolverRuleAssociationId: resolverRuleAssociationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetResolverQueryLogConfigAssociation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the Resolver query logging configuration association that you want to get information about.</p>"
    )
    @as("ResolverQueryLogConfigAssociationId")
    resolverQueryLogConfigAssociationId: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>Information about the Resolver query logging configuration association that you specified in a <code>GetQueryLogConfigAssociation</code> request.</p>"
    )
    @as("ResolverQueryLogConfigAssociation")
    resolverQueryLogConfigAssociation: option<resolverQueryLogConfigAssociation>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "GetResolverQueryLogConfigAssociationCommand"
  let make = (~resolverQueryLogConfigAssociationId, ()) =>
    new({resolverQueryLogConfigAssociationId: resolverQueryLogConfigAssociationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetResolverQueryLogConfig = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the Resolver query logging configuration that you want to get information about.</p>"
    )
    @as("ResolverQueryLogConfigId")
    resolverQueryLogConfigId: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>Information about the Resolver query logging configuration that you specified in a <code>GetQueryLogConfig</code> request.</p>"
    )
    @as("ResolverQueryLogConfig")
    resolverQueryLogConfig: option<resolverQueryLogConfig>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "GetResolverQueryLogConfigCommand"
  let make = (~resolverQueryLogConfigId, ()) =>
    new({resolverQueryLogConfigId: resolverQueryLogConfigId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetResolverDnssecConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the virtual private cloud (VPC) for the DNSSEC validation status.</p>")
    @as("ResourceId")
    resourceId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The information about a configuration for DNSSEC validation.</p>")
    @as("ResolverDNSSECConfig")
    resolverDNSSECConfig: option<resolverDnssecConfig>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "GetResolverDnssecConfigCommand"
  let make = (~resourceId, ()) => new({resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetResolverConfig = {
  type t
  type request = {
    @ocaml.doc("<p>Resource ID of the Amazon VPC that you want to get information about.</p>")
    @as("ResourceId")
    resourceId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>Information about the behavior configuration of Route 53 Resolver behavior for the VPC you
			specified in the <code>GetResolverConfig</code> request.</p>")
    @as("ResolverConfig")
    resolverConfig: option<resolverConfig>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "GetResolverConfigCommand"
  let make = (~resourceId, ()) => new({resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetFirewallRuleGroupAssociation = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the <a>FirewallRuleGroupAssociation</a>. </p>")
    @as("FirewallRuleGroupAssociationId")
    firewallRuleGroupAssociationId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The association that you requested. </p>") @as("FirewallRuleGroupAssociation")
    firewallRuleGroupAssociation: option<firewallRuleGroupAssociation>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "GetFirewallRuleGroupAssociationCommand"
  let make = (~firewallRuleGroupAssociationId, ()) =>
    new({firewallRuleGroupAssociationId: firewallRuleGroupAssociationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetFirewallRuleGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the firewall rule group. </p>")
    @as("FirewallRuleGroupId")
    firewallRuleGroupId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>A collection of rules used to filter DNS network traffic. </p>")
    @as("FirewallRuleGroup")
    firewallRuleGroup: option<firewallRuleGroup>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "GetFirewallRuleGroupCommand"
  let make = (~firewallRuleGroupId, ()) => new({firewallRuleGroupId: firewallRuleGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetFirewallDomainList = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the domain list.  </p>") @as("FirewallDomainListId")
    firewallDomainListId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The domain list that you requested.  </p>") @as("FirewallDomainList")
    firewallDomainList: option<firewallDomainList>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "GetFirewallDomainListCommand"
  let make = (~firewallDomainListId, ()) => new({firewallDomainListId: firewallDomainListId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetFirewallConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the VPC from Amazon VPC that the configuration is for.</p>")
    @as("ResourceId")
    resourceId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>Configuration of the firewall behavior provided by DNS Firewall for a single VPC from
			AmazonVPC. </p>")
    @as("FirewallConfig")
    firewallConfig: option<firewallConfig>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "GetFirewallConfigCommand"
  let make = (~resourceId, ()) => new({resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateResolverRule = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the Resolver rule that you want to disassociate from the specified VPC.</p>"
    )
    @as("ResolverRuleId")
    resolverRuleId: resourceId,
    @ocaml.doc("<p>The ID of the VPC that you want to disassociate the Resolver rule from.</p>")
    @as("VPCId")
    vpcid: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>Information about the <code>DisassociateResolverRule</code> request, including the status of the request.</p>"
    )
    @as("ResolverRuleAssociation")
    resolverRuleAssociation: option<resolverRuleAssociation>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "DisassociateResolverRuleCommand"
  let make = (~resolverRuleId, ~vpcid, ()) => new({resolverRuleId, vpcid})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateResolverQueryLogConfig = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the Amazon VPC that you want to disassociate from a specified query logging configuration.</p>"
    )
    @as("ResourceId")
    resourceId: resourceId,
    @ocaml.doc(
      "<p>The ID of the query logging configuration that you want to disassociate a specified VPC from.</p>"
    )
    @as("ResolverQueryLogConfigId")
    resolverQueryLogConfigId: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>A complex type that contains settings for the association that you deleted between an Amazon VPC and a query logging configuration.</p>"
    )
    @as("ResolverQueryLogConfigAssociation")
    resolverQueryLogConfigAssociation: option<resolverQueryLogConfigAssociation>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "DisassociateResolverQueryLogConfigCommand"
  let make = (~resourceId, ~resolverQueryLogConfigId, ()) =>
    new({resourceId, resolverQueryLogConfigId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateFirewallRuleGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the <a>FirewallRuleGroupAssociation</a>. </p>")
    @as("FirewallRuleGroupAssociationId")
    firewallRuleGroupAssociationId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The firewall rule group association that you just removed. </p>")
    @as("FirewallRuleGroupAssociation")
    firewallRuleGroupAssociation: option<firewallRuleGroupAssociation>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "DisassociateFirewallRuleGroupCommand"
  let make = (~firewallRuleGroupAssociationId, ()) =>
    new({firewallRuleGroupAssociationId: firewallRuleGroupAssociationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteResolverQueryLogConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the query logging configuration that you want to delete.</p>")
    @as("ResolverQueryLogConfigId")
    resolverQueryLogConfigId: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>Information about the query logging configuration that you deleted, including the status of the request.</p>"
    )
    @as("ResolverQueryLogConfig")
    resolverQueryLogConfig: option<resolverQueryLogConfig>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "DeleteResolverQueryLogConfigCommand"
  let make = (~resolverQueryLogConfigId, ()) =>
    new({resolverQueryLogConfigId: resolverQueryLogConfigId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteFirewallRuleGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the firewall rule group that you want to delete. </p>")
    @as("FirewallRuleGroupId")
    firewallRuleGroupId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>A collection of rules used to filter DNS network traffic. </p>")
    @as("FirewallRuleGroup")
    firewallRuleGroup: option<firewallRuleGroup>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "DeleteFirewallRuleGroupCommand"
  let make = (~firewallRuleGroupId, ()) => new({firewallRuleGroupId: firewallRuleGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteFirewallRule = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the domain list that's used in the rule.  </p>")
    @as("FirewallDomainListId")
    firewallDomainListId: resourceId,
    @ocaml.doc(
      "<p>The unique identifier of the firewall rule group that you want to delete the rule from. </p>"
    )
    @as("FirewallRuleGroupId")
    firewallRuleGroupId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The specification for the firewall rule that you just deleted.</p>")
    @as("FirewallRule")
    firewallRule: option<firewallRule>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "DeleteFirewallRuleCommand"
  let make = (~firewallDomainListId, ~firewallRuleGroupId, ()) =>
    new({firewallDomainListId, firewallRuleGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteFirewallDomainList = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the domain list that you want to delete. </p>")
    @as("FirewallDomainListId")
    firewallDomainListId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The domain list that you just deleted. </p>") @as("FirewallDomainList")
    firewallDomainList: option<firewallDomainList>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "DeleteFirewallDomainListCommand"
  let make = (~firewallDomainListId, ()) => new({firewallDomainListId: firewallDomainListId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateFirewallRule = {
  type t
  type request = {
    @ocaml.doc("<p>A name that lets you identify the rule in the rule group.</p>") @as("Name")
    name: name,
    @ocaml.doc("<p>The recommended amount of time, in seconds, for the DNS resolver or web browser to cache the provided override record. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
         <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>")
    @as("BlockOverrideTtl")
    blockOverrideTtl: option<blockOverrideTtl>,
    @ocaml.doc("<p>The DNS record's type. This determines the format of the record value that you provided in <code>BlockOverrideDomain</code>. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
         <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>")
    @as("BlockOverrideDnsType")
    blockOverrideDnsType: option<blockOverrideDnsType>,
    @ocaml.doc("<p>The custom DNS record to send back in response to the query. Used for the rule action <code>BLOCK</code> with a <code>BlockResponse</code> setting of <code>OVERRIDE</code>.</p>
         <p>This setting is required if the <code>BlockResponse</code> setting is <code>OVERRIDE</code>.</p>")
    @as("BlockOverrideDomain")
    blockOverrideDomain: option<blockOverrideDomain>,
    @ocaml.doc("<p>The way that you want DNS Firewall to block the request, used with the rule action
			setting <code>BLOCK</code>. </p>
         <ul>
            <li>
               <p>
                  <code>NODATA</code> - Respond indicating that the query was successful, but no response is available for it.</p> 
            </li>
            <li>
               <p>
                  <code>NXDOMAIN</code> - Respond indicating that the domain name that's in the query doesn't exist.</p> 
            </li>
            <li>
               <p>
                  <code>OVERRIDE</code> - Provide a custom override in the response. This option requires custom handling details in the rule's <code>BlockOverride*</code> settings. </p> 
            </li>
         </ul>
         <p>This setting is required if the rule action setting is <code>BLOCK</code>.</p>")
    @as("BlockResponse")
    blockResponse: option<blockResponse>,
    @ocaml.doc("<p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list:</p>
         <ul>
            <li>
               <p>
                  <code>ALLOW</code> - Permit the request to go through.</p> 
            </li>
            <li>
               <p>
                  <code>ALERT</code> - Permit the request and send metrics and logs to Cloud Watch.</p> 
            </li>
            <li>
               <p>
                  <code>BLOCK</code> - Disallow the request. This option requires additional details in the rule's <code>BlockResponse</code>. </p> 
            </li>
         </ul>")
    @as("Action")
    action: action,
    @ocaml.doc("<p>The setting that determines the processing order of the rule in the rule group. DNS Firewall 
           processes the rules in a rule group by order of priority, starting from the lowest setting.</p>
         <p>You must specify a unique priority for each rule in a rule group. 
           To make it easier to insert rules later, leave space between the numbers, for example, use 100, 200, and so on. You 
   can change the priority setting for the rules in a rule group at any time.</p>")
    @as("Priority")
    priority: priority,
    @ocaml.doc("<p>The ID of the domain list that you want to use in the rule. </p>")
    @as("FirewallDomainListId")
    firewallDomainListId: resourceId,
    @ocaml.doc(
      "<p>The unique identifier of the firewall rule group where you want to create the rule. </p>"
    )
    @as("FirewallRuleGroupId")
    firewallRuleGroupId: resourceId,
    @ocaml.doc("<p>A unique string that identifies the request and that allows you to retry failed requests
			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
			any unique string, for example, a date/time stamp. </p>")
    @as("CreatorRequestId")
    creatorRequestId: creatorRequestId,
  }
  type response = {
    @ocaml.doc("<p>The
			firewall rule that you just created. </p>")
    @as("FirewallRule")
    firewallRule: option<firewallRule>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "CreateFirewallRuleCommand"
  let make = (
    ~name,
    ~action,
    ~priority,
    ~firewallDomainListId,
    ~firewallRuleGroupId,
    ~creatorRequestId,
    ~blockOverrideTtl=?,
    ~blockOverrideDnsType=?,
    ~blockOverrideDomain=?,
    ~blockResponse=?,
    (),
  ) =>
    new({
      name,
      blockOverrideTtl,
      blockOverrideDnsType,
      blockOverrideDomain,
      blockResponse,
      action,
      priority,
      firewallDomainListId,
      firewallRuleGroupId,
      creatorRequestId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateResolverRule = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the VPC that you want to associate the Resolver rule with.</p>")
    @as("VPCId")
    vpcid: resourceId,
    @ocaml.doc(
      "<p>A name for the association that you're creating between a Resolver rule and a VPC.</p>"
    )
    @as("Name")
    name: option<name>,
    @ocaml.doc("<p>The ID of the Resolver rule that you want to associate with the VPC. To list the existing Resolver rules, use 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html\">ListResolverRules</a>.</p>")
    @as("ResolverRuleId")
    resolverRuleId: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>Information about the <code>AssociateResolverRule</code> request, including the status of the request.</p>"
    )
    @as("ResolverRuleAssociation")
    resolverRuleAssociation: option<resolverRuleAssociation>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "AssociateResolverRuleCommand"
  let make = (~vpcid, ~resolverRuleId, ~name=?, ()) => new({vpcid, name, resolverRuleId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateResolverQueryLogConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of an Amazon VPC that you want this query logging configuration to log queries for.</p>
		
		       <note>
			         <p>The VPCs and the query logging configuration must be in the same Region.</p>
		       </note>")
    @as("ResourceId")
    resourceId: resourceId,
    @ocaml.doc(
      "<p>The ID of the query logging configuration that you want to associate a VPC with.</p>"
    )
    @as("ResolverQueryLogConfigId")
    resolverQueryLogConfigId: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>A complex type that contains settings for a specified association between an Amazon VPC and a query logging configuration.</p>"
    )
    @as("ResolverQueryLogConfigAssociation")
    resolverQueryLogConfigAssociation: option<resolverQueryLogConfigAssociation>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "AssociateResolverQueryLogConfigCommand"
  let make = (~resourceId, ~resolverQueryLogConfigId, ()) =>
    new({resourceId, resolverQueryLogConfigId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateResolverEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Resolver endpoint that you want to update.</p>") @as("Name")
    name: option<name>,
    @ocaml.doc("<p>The ID of the Resolver endpoint that you want to update.</p>")
    @as("ResolverEndpointId")
    resolverEndpointId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The response to an <code>UpdateResolverEndpoint</code> request.</p>")
    @as("ResolverEndpoint")
    resolverEndpoint: option<resolverEndpoint>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "UpdateResolverEndpointCommand"
  let make = (~resolverEndpointId, ~name=?, ()) => new({name, resolverEndpointId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags that you want to add to the specified resource.</p>") @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the resource that you want to add tags to. To get the ARN for a resource, use the applicable 
			<code>Get</code> or <code>List</code> command: </p>
			      <ul>
            <li>
					          <p>
                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html\">GetResolverEndpoint</a>
               </p>
				        </li>
            <li>
					          <p>
                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRule.html\">GetResolverRule</a>
               </p>
				        </li>
            <li>
					          <p>
                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRuleAssociation.html\">GetResolverRuleAssociation</a>
               </p>
				        </li>
            <li>
					          <p>
                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html\">ListResolverEndpoints</a>
               </p>
				        </li>
            <li>
					          <p>
                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html\">ListResolverRuleAssociations</a>
               </p>
				        </li>
            <li>
					          <p>
                  <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html\">ListResolverRules</a>
               </p>
				        </li>
         </ul>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-route53resolver") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>For the first <code>ListTagsForResource</code> request, omit this value.</p>
		       <p>If you have more than <code>MaxResults</code> tags, you can submit another <code>ListTagsForResource</code> request 
			to get the next group of tags for the resource. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of tags that you want to return in the response to a <code>ListTagsForResource</code> request. 
			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 tags.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) for the resource that you want to list tags for.</p>"
    )
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>If more than <code>MaxResults</code> tags match the specified criteria, you can submit another 
			<code>ListTagsForResource</code> request to get the next group of results. In the next request, specify the value of 
			<code>NextToken</code> from the previous response. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The tags that are associated with the resource that you specified in the <code>ListTagsForResource</code> request.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListResolverEndpointIpAddresses = {
  type t
  type request = {
    @ocaml.doc("<p>For the first <code>ListResolverEndpointIpAddresses</code> request, omit this value.</p>
		       <p>If the specified Resolver endpoint has more than <code>MaxResults</code> IP addresses, you can submit another 
			<code>ListResolverEndpointIpAddresses</code> request to get the next group of IP addresses. In the next request, specify the value of 
			<code>NextToken</code> from the previous response. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of IP addresses that you want to return in the response to a <code>ListResolverEndpointIpAddresses</code> request. 
			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 IP addresses. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ID of the Resolver endpoint that you want to get IP addresses for.</p>")
    @as("ResolverEndpointId")
    resolverEndpointId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>Information about the IP addresses in your VPC that DNS queries originate from (for outbound endpoints) or that you forward 
			DNS queries to (for inbound endpoints).</p>")
    @as("IpAddresses")
    ipAddresses: option<ipAddressesResponse>,
    @ocaml.doc("<p>The value that you specified for <code>MaxResults</code> in the request.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the specified endpoint has more than <code>MaxResults</code> IP addresses, you can submit another 
			<code>ListResolverEndpointIpAddresses</code> request to get the next group of IP addresses. In the next request, 
			specify the value of <code>NextToken</code> from the previous response. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "ListResolverEndpointIpAddressesCommand"
  let make = (~resolverEndpointId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, resolverEndpointId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListResolverConfigs = {
  type t
  type request = {
    @ocaml.doc("<p>(Optional) If the current Amazon Web Services account has more than <code>MaxResults</code> Resolver configurations, use 
			<code>NextToken</code> to get the second and subsequent pages of results.</p>
		       <p>For the first <code>ListResolverConfigs</code> request, omit this value.</p>
		       <p>For the second and subsequent requests, get the value of <code>NextToken</code> from the previous response and 
			specify that value for <code>NextToken</code> in the request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of Resolver configurations that you want to return in the response to 
			a <code>ListResolverConfigs</code> request. If you don't specify a value for <code>MaxResults</code>, 
			up to 100 Resolver configurations are returned.</p>")
    @as("MaxResults")
    maxResults: option<listResolverConfigsMaxResult>,
  }
  type response = {
    @ocaml.doc("<p>An array that contains one <code>ResolverConfigs</code> element for each Resolver configuration that is associated 
			with the current Amazon Web Services account.</p>")
    @as("ResolverConfigs")
    resolverConfigs: option<resolverConfigList>,
    @ocaml.doc("<p>If a response includes the last of the Resolver configurations that are associated with the current Amazon Web Services account, 
			<code>NextToken</code> doesn't appear in the response.</p>
		       <p>If a response doesn't include the last of the configurations, you can get more configurations by submitting another 
			<code>ListResolverConfigs</code> request. 
			Get the value of <code>NextToken</code> that Amazon Route 53
             returned in the previous response and include it in 
			<code>NextToken</code> in the next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "ListResolverConfigsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListFirewallRules = {
  type t
  type request = {
    @ocaml.doc("<p>For the first call to this list request, omit this value.</p>
         <p>When you request a list of objects, Resolver returns at most the number of objects 
       specified in <code>MaxResults</code>. If more objects are available for retrieval,
           Resolver returns a <code>NextToken</code> value in the response. To retrieve the next 
               batch of objects, use the token that was returned for the prior request in your next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of objects that you want Resolver to return for this request. If more
            objects are available, in the response, Resolver provides a
           <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p> 
         <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Optional additional filter for the rules to retrieve.</p>
         <p>The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list:</p>
         <ul>
            <li>
               <p>
                  <code>ALLOW</code> - Permit the request to go through.</p> 
            </li>
            <li>
               <p>
                  <code>ALERT</code> - Permit the request to go through but send an alert to the logs.</p> 
            </li>
            <li>
               <p>
                  <code>BLOCK</code> - Disallow the request. If this is specified, additional handling details are provided in the rule's <code>BlockResponse</code> setting. </p> 
            </li>
         </ul>")
    @as("Action")
    action: option<action>,
    @ocaml.doc("<p>Optional additional filter for the rules to retrieve.</p>
         <p>The setting that determines the processing order of the rules in a rule group. DNS Firewall 
           processes the rules in a rule group by order of priority, starting from the lowest setting.</p>")
    @as("Priority")
    priority: option<priority>,
    @ocaml.doc(
      "<p>The unique identifier of the firewall rule group that you want to retrieve the rules for. </p>"
    )
    @as("FirewallRuleGroupId")
    firewallRuleGroupId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>A list of the rules that you have defined.  </p>
         <p>This might be a partial list of the firewall rules that you've defined. For information,
			see <code>MaxResults</code>. </p>")
    @as("FirewallRules")
    firewallRules: option<firewallRules>,
    @ocaml.doc("<p>If objects are still available for retrieval, Resolver returns this token in the response. 
           To retrieve the next batch of objects, provide this token in your next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "ListFirewallRulesCommand"
  let make = (~firewallRuleGroupId, ~nextToken=?, ~maxResults=?, ~action=?, ~priority=?, ()) =>
    new({nextToken, maxResults, action, priority, firewallRuleGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListFirewallRuleGroups = {
  type t
  type request = {
    @ocaml.doc("<p>For the first call to this list request, omit this value.</p>
         <p>When you request a list of objects, Resolver returns at most the number of objects 
       specified in <code>MaxResults</code>. If more objects are available for retrieval,
           Resolver returns a <code>NextToken</code> value in the response. To retrieve the next 
               batch of objects, use the token that was returned for the prior request in your next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of objects that you want Resolver to return for this request. If more
            objects are available, in the response, Resolver provides a
           <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p> 
         <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>A list of your firewall rule groups.</p>
         <p>This might be a partial list of the rule groups that you have defined. For information, see <code>MaxResults</code>. </p>")
    @as("FirewallRuleGroups")
    firewallRuleGroups: option<firewallRuleGroupMetadataList>,
    @ocaml.doc("<p>If objects are still available for retrieval, Resolver returns this token in the response. 
           To retrieve the next batch of objects, provide this token in your next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "ListFirewallRuleGroupsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListFirewallRuleGroupAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>For the first call to this list request, omit this value.</p>
         <p>When you request a list of objects, Resolver returns at most the number of objects 
       specified in <code>MaxResults</code>. If more objects are available for retrieval,
           Resolver returns a <code>NextToken</code> value in the response. To retrieve the next 
               batch of objects, use the token that was returned for the prior request in your next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of objects that you want Resolver to return for this request. If more
            objects are available, in the response, Resolver provides a
           <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p> 
         <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The association <code>Status</code> setting that you want DNS Firewall to filter on for the list. If you don't specify this, then DNS Firewall returns all associations, regardless of status.</p>"
    )
    @as("Status")
    status: option<firewallRuleGroupAssociationStatus>,
    @ocaml.doc("<p>The setting that determines the processing order of the rule group among the rule
			groups that are associated with a single VPC. DNS Firewall filters VPC traffic starting
			from the rule group with the lowest numeric priority setting. </p>")
    @as("Priority")
    priority: option<priority>,
    @ocaml.doc("<p>The unique identifier of the VPC that you want to retrieve the associations
           for. Leave this blank to retrieve associations for any VPC. </p>")
    @as("VpcId")
    vpcId: option<resourceId>,
    @ocaml.doc("<p>The unique identifier of the firewall rule group that you want to retrieve the associations
           for. Leave this blank to retrieve associations for any rule group. </p>")
    @as("FirewallRuleGroupId")
    firewallRuleGroupId: option<resourceId>,
  }
  type response = {
    @ocaml.doc("<p>A list of your firewall rule group associations.</p>
         <p>This might be a partial list of the associations that you have defined. For information, see <code>MaxResults</code>. </p>")
    @as("FirewallRuleGroupAssociations")
    firewallRuleGroupAssociations: option<firewallRuleGroupAssociations>,
    @ocaml.doc("<p>If objects are still available for retrieval, Resolver returns this token in the response. 
           To retrieve the next batch of objects, provide this token in your next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "ListFirewallRuleGroupAssociationsCommand"
  let make = (
    ~nextToken=?,
    ~maxResults=?,
    ~status=?,
    ~priority=?,
    ~vpcId=?,
    ~firewallRuleGroupId=?,
    (),
  ) => new({nextToken, maxResults, status, priority, vpcId, firewallRuleGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListFirewallDomainLists = {
  type t
  type request = {
    @ocaml.doc("<p>For the first call to this list request, omit this value.</p>
         <p>When you request a list of objects, Resolver returns at most the number of objects 
       specified in <code>MaxResults</code>. If more objects are available for retrieval,
           Resolver returns a <code>NextToken</code> value in the response. To retrieve the next 
               batch of objects, use the token that was returned for the prior request in your next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of objects that you want Resolver to return for this request. If more
            objects are available, in the response, Resolver provides a
           <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p> 
         <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>A list of the domain lists that you have defined.   </p>
         <p>This might be a partial list of the domain lists that you've defined. For information,
			see <code>MaxResults</code>. </p>")
    @as("FirewallDomainLists")
    firewallDomainLists: option<firewallDomainListMetadataList>,
    @ocaml.doc("<p>If objects are still available for retrieval, Resolver returns this token in the response. 
           To retrieve the next batch of objects, provide this token in your next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "ListFirewallDomainListsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListFirewallConfigs = {
  type t
  type request = {
    @ocaml.doc("<p>For the first call to this list request, omit this value.</p>
         <p>When you request a list of objects, Resolver returns at most the number of objects 
       specified in <code>MaxResults</code>. If more objects are available for retrieval,
           Resolver returns a <code>NextToken</code> value in the response. To retrieve the next 
               batch of objects, use the token that was returned for the prior request in your next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of objects that you want Resolver to return for this request. If more
            objects are available, in the response, Resolver provides a
           <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p> 
         <p>If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 objects. </p>")
    @as("MaxResults")
    maxResults: option<listFirewallConfigsMaxResult>,
  }
  type response = {
    @ocaml.doc("<p>The configurations for the firewall behavior provided by DNS Firewall for VPCs from
			Amazon Virtual Private Cloud (Amazon VPC). </p>")
    @as("FirewallConfigs")
    firewallConfigs: option<firewallConfigList>,
    @ocaml.doc("<p>If objects are still available for retrieval, Resolver returns this token in the response. 
           To retrieve the next batch of objects, provide this token in your next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "ListFirewallConfigsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetResolverEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Resolver endpoint that you want to get information about.</p>")
    @as("ResolverEndpointId")
    resolverEndpointId: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>Information about the Resolver endpoint that you specified in a <code>GetResolverEndpoint</code> request.</p>"
    )
    @as("ResolverEndpoint")
    resolverEndpoint: option<resolverEndpoint>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "GetResolverEndpointCommand"
  let make = (~resolverEndpointId, ()) => new({resolverEndpointId: resolverEndpointId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateResolverEndpointIpAddress = {
  type t
  type request = {
    @ocaml.doc("<p>The IPv4 address that you want to remove from a Resolver endpoint.</p>")
    @as("IpAddress")
    ipAddress: ipAddressUpdate,
    @ocaml.doc(
      "<p>The ID of the Resolver endpoint that you want to disassociate an IP address from.</p>"
    )
    @as("ResolverEndpointId")
    resolverEndpointId: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>The response to an <code>DisassociateResolverEndpointIpAddress</code> request.</p>"
    )
    @as("ResolverEndpoint")
    resolverEndpoint: option<resolverEndpoint>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "DisassociateResolverEndpointIpAddressCommand"
  let make = (~ipAddress, ~resolverEndpointId, ()) => new({ipAddress, resolverEndpointId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteResolverEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Resolver endpoint that you want to delete.</p>")
    @as("ResolverEndpointId")
    resolverEndpointId: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>Information about the <code>DeleteResolverEndpoint</code> request, including the status of the request.</p>"
    )
    @as("ResolverEndpoint")
    resolverEndpoint: option<resolverEndpoint>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "DeleteResolverEndpointCommand"
  let make = (~resolverEndpointId, ()) => new({resolverEndpointId: resolverEndpointId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateResolverQueryLogConfig = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of the tag keys and values that you want to associate with the query logging configuration.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A unique string that identifies the request and that allows failed requests to be retried
			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
			any unique string, for example, a date/time stamp. </p>")
    @as("CreatorRequestId")
    creatorRequestId: creatorRequestId,
    @ocaml.doc("<p>The ARN of the resource that you want Resolver to send query logs. You can send query logs to an S3 bucket, a CloudWatch Logs log group, 
			or a Kinesis Data Firehose delivery stream. Examples of valid values include the following:</p>
		
		       <ul>
            <li>
				           <p>
                  <b>S3 bucket</b>: </p>
				           <p>
                  <code>arn:aws:s3:::examplebucket</code>
               </p>
				           <p>You can optionally append a file prefix to the end of the ARN.</p>
				           <p>
                  <code>arn:aws:s3:::examplebucket/development/</code>
               </p>
			         </li>
            <li>
				           <p>
                  <b>CloudWatch Logs log group</b>: </p>
				           <p>
                  <code>arn:aws:logs:us-west-1:123456789012:log-group:/mystack-testgroup-12ABC1AB12A1:*</code>
               </p>
			         </li>
            <li>
				           <p>
                  <b>Kinesis Data Firehose delivery stream</b>:</p>
				           <p>
                  <code>arn:aws:kinesis:us-east-2:0123456789:stream/my_stream_name</code>
               </p>
			         </li>
         </ul>")
    @as("DestinationArn")
    destinationArn: destinationArn,
    @ocaml.doc("<p>The name that you want to give the query logging configuration.</p>") @as("Name")
    name: resolverQueryLogConfigName,
  }
  type response = {
    @ocaml.doc(
      "<p>Information about the <code>CreateResolverQueryLogConfig</code> request, including the status of the request.</p>"
    )
    @as("ResolverQueryLogConfig")
    resolverQueryLogConfig: option<resolverQueryLogConfig>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "CreateResolverQueryLogConfigCommand"
  let make = (~creatorRequestId, ~destinationArn, ~name, ~tags=?, ()) =>
    new({tags, creatorRequestId, destinationArn, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateResolverEndpoint = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of the tag keys and values that you want to associate with the endpoint.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The subnets and IP addresses in your VPC that DNS queries originate from (for outbound endpoints) or that you forward 
			DNS queries to (for inbound endpoints). The subnet ID uniquely identifies a VPC. </p>")
    @as("IpAddresses")
    ipAddresses: ipAddressesRequest,
    @ocaml.doc("<p>Specify the applicable value:</p>
		       <ul>
            <li>
               <p>
                  <code>INBOUND</code>: Resolver forwards DNS queries to the DNS service for a VPC from your network</p>
            </li>
            <li>
               <p>
                  <code>OUTBOUND</code>: Resolver forwards DNS queries from the DNS service for a VPC to your network</p>
            </li>
         </ul>")
    @as("Direction")
    direction: resolverEndpointDirection,
    @ocaml.doc("<p>The ID of one or more security groups that you want to use to control access to this VPC. The security group that you specify 
			must include one or more inbound rules (for inbound Resolver endpoints) or outbound rules (for outbound Resolver endpoints). 
			Inbound and outbound rules must allow TCP and UDP access. For inbound access, open port 53. For outbound access, open the port 
			that you're using for DNS queries on your network.</p>")
    @as("SecurityGroupIds")
    securityGroupIds: securityGroupIds,
    @ocaml.doc(
      "<p>A friendly name that lets you easily find a configuration in the Resolver dashboard in the Route 53 console.</p>"
    )
    @as("Name")
    name: option<name>,
    @ocaml.doc("<p>A unique string that identifies the request and that allows failed requests to be retried
			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
			any unique string, for example, a date/time stamp. </p>")
    @as("CreatorRequestId")
    creatorRequestId: creatorRequestId,
  }
  type response = {
    @ocaml.doc(
      "<p>Information about the <code>CreateResolverEndpoint</code> request, including the status of the request.</p>"
    )
    @as("ResolverEndpoint")
    resolverEndpoint: option<resolverEndpoint>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "CreateResolverEndpointCommand"
  let make = (
    ~ipAddresses,
    ~direction,
    ~securityGroupIds,
    ~creatorRequestId,
    ~tags=?,
    ~name=?,
    (),
  ) => new({tags, ipAddresses, direction, securityGroupIds, name, creatorRequestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateFirewallRuleGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of the tag keys and values that you want to associate with the rule group. </p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A name that lets you identify the rule group, to manage and use it.</p>")
    @as("Name")
    name: name,
    @ocaml.doc("<p>A unique string defined by you to identify the request. This allows you to retry failed
			requests without the risk of running the operation twice. This can be any unique string,
			for example, a timestamp. </p>")
    @as("CreatorRequestId")
    creatorRequestId: creatorRequestId,
  }
  type response = {
    @ocaml.doc("<p>A collection of rules used to filter DNS network traffic. </p>")
    @as("FirewallRuleGroup")
    firewallRuleGroup: option<firewallRuleGroup>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "CreateFirewallRuleGroupCommand"
  let make = (~name, ~creatorRequestId, ~tags=?, ()) => new({tags, name, creatorRequestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateFirewallDomainList = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of the tag keys and values that you want to associate with the domain list. </p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A name that lets you identify the domain list to manage and use it.</p>")
    @as("Name")
    name: name,
    @ocaml.doc("<p>A unique string that identifies the request and that allows you to retry failed requests
			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
			any unique string, for example, a date/time stamp. </p>")
    @as("CreatorRequestId")
    creatorRequestId: creatorRequestId,
  }
  type response = {
    @ocaml.doc("<p>The
			domain list that you just created.</p>")
    @as("FirewallDomainList")
    firewallDomainList: option<firewallDomainList>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "CreateFirewallDomainListCommand"
  let make = (~name, ~creatorRequestId, ~tags=?, ()) => new({tags, name, creatorRequestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateResolverEndpointIpAddress = {
  type t
  type request = {
    @ocaml.doc("<p>Either the IPv4 address that you want to add to a Resolver endpoint or a subnet ID. If you specify a subnet ID, 
			Resolver chooses an IP address for you from the available IPs in the specified subnet.</p>")
    @as("IpAddress")
    ipAddress: ipAddressUpdate,
    @ocaml.doc(
      "<p>The ID of the Resolver endpoint that you want to associate IP addresses with.</p>"
    )
    @as("ResolverEndpointId")
    resolverEndpointId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The response to an <code>AssociateResolverEndpointIpAddress</code> request.</p>")
    @as("ResolverEndpoint")
    resolverEndpoint: option<resolverEndpoint>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "AssociateResolverEndpointIpAddressCommand"
  let make = (~ipAddress, ~resolverEndpointId, ()) => new({ipAddress, resolverEndpointId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateFirewallRuleGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of the tag keys and values that you want to associate with the rule group association. </p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. 
       When you create the association, the default setting is <code>DISABLED</code>. </p>")
    @as("MutationProtection")
    mutationProtection: option<mutationProtectionStatus>,
    @ocaml.doc("<p>A name that lets you identify the association, to manage and use it.</p>")
    @as("Name")
    name: name,
    @ocaml.doc("<p>The setting that determines the processing order of the rule group among the rule
			groups that you associate with the specified VPC. DNS Firewall filters VPC traffic
			starting from the rule group with the lowest numeric priority setting. </p>
         <p>You must specify a unique priority for each rule group that you associate with a single VPC. 
           To make it easier to insert rule groups later, leave space between the numbers, for example, use 101, 200, and so on. You 
   can change the priority setting for a rule group association after you create it.</p>
   	     <p>The allowed values for <code>Priority</code> are between 100 and 9900.</p>")
    @as("Priority")
    priority: priority,
    @ocaml.doc(
      "<p>The unique identifier of the VPC that you want to associate with the rule group. </p>"
    )
    @as("VpcId")
    vpcId: resourceId,
    @ocaml.doc("<p>The unique identifier of the firewall rule group. </p>")
    @as("FirewallRuleGroupId")
    firewallRuleGroupId: resourceId,
    @ocaml.doc("<p>A unique string that identifies the request and that allows failed requests to be
			retried without the risk of running the operation twice. <code>CreatorRequestId</code>
			can be any unique string, for example, a date/time stamp. </p>")
    @as("CreatorRequestId")
    creatorRequestId: creatorRequestId,
  }
  type response = {
    @ocaml.doc("<p>The association that you just created. The association has an ID that you can use to
			identify it in other requests, like update and delete.</p>")
    @as("FirewallRuleGroupAssociation")
    firewallRuleGroupAssociation: option<firewallRuleGroupAssociation>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "AssociateFirewallRuleGroupCommand"
  let make = (
    ~name,
    ~priority,
    ~vpcId,
    ~firewallRuleGroupId,
    ~creatorRequestId,
    ~tags=?,
    ~mutationProtection=?,
    (),
  ) => new({tags, mutationProtection, name, priority, vpcId, firewallRuleGroupId, creatorRequestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateResolverRule = {
  type t
  type request = {
    @ocaml.doc("<p>The new settings for the Resolver rule.</p>") @as("Config")
    config: resolverRuleConfig,
    @ocaml.doc("<p>The ID of the Resolver rule that you want to update.</p>") @as("ResolverRuleId")
    resolverRuleId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The response to an <code>UpdateResolverRule</code> request.</p>")
    @as("ResolverRule")
    resolverRule: option<resolverRule>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "UpdateResolverRuleCommand"
  let make = (~config, ~resolverRuleId, ()) => new({config, resolverRuleId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListResolverRuleAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>An optional specification to return a subset of Resolver rules, such as Resolver rules that are associated with the same VPC ID.</p>
		       <note>
            <p>If you submit a second or subsequent <code>ListResolverRuleAssociations</code> request and specify the <code>NextToken</code> parameter, 
			you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
         </note>")
    @as("Filters")
    filters: option<filters>,
    @ocaml.doc("<p>For the first <code>ListResolverRuleAssociation</code> request, omit this value.</p>
		       <p>If you have more than <code>MaxResults</code> rule associations, you can submit another <code>ListResolverRuleAssociation</code> request 
			to get the next group of rule associations. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of rule associations that you want to return in the response to a <code>ListResolverRuleAssociations</code> request. 
			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 rule associations. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The associations that were created between Resolver rules and VPCs using the current Amazon Web Services account, and that match the 
			specified filters, if any.</p>")
    @as("ResolverRuleAssociations")
    resolverRuleAssociations: option<resolverRuleAssociations>,
    @ocaml.doc("<p>The value that you specified for <code>MaxResults</code> in the request.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If more than <code>MaxResults</code> rule associations match the specified criteria, you can submit another 
			<code>ListResolverRuleAssociation</code> request to get the next group of results. In the next request, specify the value of 
			<code>NextToken</code> from the previous response. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "ListResolverRuleAssociationsCommand"
  let make = (~filters=?, ~nextToken=?, ~maxResults=?, ()) => new({filters, nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListResolverQueryLogConfigs = {
  type t
  type request = {
    @ocaml.doc("<p>If you specified a value for <code>SortBy</code>, the order that you want query logging configurations to be listed in, 
			<code>ASCENDING</code> or <code>DESCENDING</code>.</p>
		       <note>
			         <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigs</code> request and specify the <code>NextToken</code> parameter, 
				you must use the same value for <code>SortOrder</code>, if any, as in the previous request.</p>
		       </note>")
    @as("SortOrder")
    sortOrder: option<sortOrder>,
    @ocaml.doc("<p>The element that you want Resolver to sort query logging configurations by. </p>
		       <note>
			         <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigs</code> request and specify the <code>NextToken</code> parameter, 
				you must use the same value for <code>SortBy</code>, if any, as in the previous request.</p>
		       </note>
		
		       <p>Valid values include the following elements:</p>
		       <ul>
            <li>
               <p>
                  <code>Arn</code>: The ARN of the query logging configuration</p>
            </li>
            <li>
               <p>
                  <code>AssociationCount</code>: The number of VPCs that are associated with the specified configuration </p>
            </li>
            <li>
               <p>
                  <code>CreationTime</code>: The date and time that Resolver returned when the configuration was created</p>
            </li>
            <li>
               <p>
                  <code>CreatorRequestId</code>: The value that was specified for <code>CreatorRequestId</code> when the configuration was created</p>
            </li>
            <li>
               <p>
                  <code>DestinationArn</code>: The location that logs are sent to</p>
            </li>
            <li>
               <p>
                  <code>Id</code>: The ID of the configuration</p>
            </li>
            <li>
               <p>
                  <code>Name</code>: The name of the configuration</p>
            </li>
            <li>
               <p>
                  <code>OwnerId</code>: The Amazon Web Services account number of the account that created the configuration</p>
            </li>
            <li>
               <p>
                  <code>ShareStatus</code>: Whether the configuration is shared with other Amazon Web Services accounts or shared with the current account by 
				another Amazon Web Services account. Sharing is configured through Resource Access Manager (RAM).</p>
            </li>
            <li>
               <p>
                  <code>Status</code>: The current status of the configuration. Valid values include the following:</p>
				
				           <ul>
                  <li>
                     <p>
                        <code>CREATING</code>: Resolver is creating the query logging configuration.</p>
                  </li>
                  <li>
                     <p>
                        <code>CREATED</code>: The query logging configuration was successfully created. 
						Resolver is logging queries that originate in the specified VPC.</p>
                  </li>
                  <li>
                     <p>
                        <code>DELETING</code>: Resolver is deleting this query logging configuration.</p>
                  </li>
                  <li>
                     <p>
                        <code>FAILED</code>: Resolver either couldn't create or couldn't delete the query logging configuration.
						Here are two common causes:</p>
						               <ul>
                        <li>
                           <p>The specified destination (for example, an Amazon S3 bucket) was deleted.</p>
                        </li>
                        <li>
                           <p>Permissions don't allow sending logs to the destination.</p>
                        </li>
                     </ul>
					             </li>
               </ul>
			         </li>
         </ul>")
    @as("SortBy")
    sortBy: option<sortByKey>,
    @ocaml.doc("<p>An optional specification to return a subset of query logging configurations.</p>
		       <note>
			         <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigs</code> request and specify the <code>NextToken</code> parameter, 
				you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
		       </note>")
    @as("Filters")
    filters: option<filters>,
    @ocaml.doc("<p>For the first <code>ListResolverQueryLogConfigs</code> request, omit this value.</p>
		       <p>If there are more than <code>MaxResults</code> query logging configurations that match the values that you specify for <code>Filters</code>, 
			you can submit another <code>ListResolverQueryLogConfigs</code> request to get the next group of configurations. In the next request, specify the value of 
			<code>NextToken</code> from the previous response. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of query logging configurations that you want to return in the response to a <code>ListResolverQueryLogConfigs</code> request. 
			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 query logging configurations. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>A list that contains one <code>ResolverQueryLogConfig</code> element for each query logging configuration that matches the 
			values that you specified for <code>Filter</code>.</p>")
    @as("ResolverQueryLogConfigs")
    resolverQueryLogConfigs: option<resolverQueryLogConfigList>,
    @ocaml.doc("<p>The total number of query logging configurations that were created by the current account in the specified Region and that match the filters 
			that were specified in the <code>ListResolverQueryLogConfigs</code> request. For the total number of query logging configurations that were created by the 
			current account in the specified Region, see <code>TotalCount</code>.</p>")
    @as("TotalFilteredCount")
    totalFilteredCount: option<count>,
    @ocaml.doc("<p>The total number of query logging configurations that were created by the current account in the specified Region. This count can differ from the 
			number of query logging configurations that are returned in a <code>ListResolverQueryLogConfigs</code> response, depending on the values that you specify 
			in the request.</p>")
    @as("TotalCount")
    totalCount: option<count>,
    @ocaml.doc("<p>If there are more than <code>MaxResults</code> query logging configurations, you can submit another <code>ListResolverQueryLogConfigs</code> request 
			to get the next group of configurations. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "ListResolverQueryLogConfigsCommand"
  let make = (~sortOrder=?, ~sortBy=?, ~filters=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({sortOrder, sortBy, filters, nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListResolverQueryLogConfigAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>If you specified a value for <code>SortBy</code>, the order that you want query logging associations to be listed in, 
			<code>ASCENDING</code> or <code>DESCENDING</code>.</p>
		       <note>
			         <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter, 
				you must use the same value for <code>SortOrder</code>, if any, as in the previous request.</p>
		       </note>")
    @as("SortOrder")
    sortOrder: option<sortOrder>,
    @ocaml.doc("<p>The element that you want Resolver to sort query logging associations by. </p>
		       <note>
			         <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter, 
				you must use the same value for <code>SortBy</code>, if any, as in the previous request.</p>
		       </note>
		
		       <p>Valid values include the following elements:</p>
		       <ul>
            <li>
               <p>
                  <code>CreationTime</code>: The ID of the query logging association.</p>
            </li>
            <li>
               <p>
                  <code>Error</code>: If the value of <code>Status</code> is <code>FAILED</code>, the value of <code>Error</code> 
				indicates the cause: </p>
				           <ul>
                  <li>
                     <p>
                        <code>DESTINATION_NOT_FOUND</code>: The specified destination (for example, an Amazon S3 bucket) was deleted.</p>
                  </li>
                  <li>
                     <p>
                        <code>ACCESS_DENIED</code>: Permissions don't allow sending logs to the destination.</p>
                  </li>
               </ul>
				           <p>If <code>Status</code> is a value other than <code>FAILED</code>, <code>ERROR</code> is null.</p> 
			         </li>
            <li>
               <p>
                  <code>Id</code>: The ID of the query logging association</p>
            </li>
            <li>
               <p>
                  <code>ResolverQueryLogConfigId</code>: The ID of the query logging configuration</p>
            </li>
            <li>
               <p>
                  <code>ResourceId</code>: The ID of the VPC that is associated with the query logging configuration</p>
            </li>
            <li>
               <p>
                  <code>Status</code>: The current status of the configuration. Valid values include the following:</p>
				
				           <ul>
                  <li>
                     <p>
                        <code>CREATING</code>: Resolver is creating an association between an Amazon VPC and a query logging configuration.</p>
                  </li>
                  <li>
                     <p>
                        <code>CREATED</code>: The association between an Amazon VPC and a query logging configuration 
						was successfully created. Resolver is logging queries that originate in the specified VPC.</p>
                  </li>
                  <li>
                     <p>
                        <code>DELETING</code>: Resolver is deleting this query logging association.</p>
                  </li>
                  <li>
                     <p>
                        <code>FAILED</code>: Resolver either couldn't create or couldn't delete the query logging association. 
						Here are two common causes:</p>
						               <ul>
                        <li>
                           <p>The specified destination (for example, an Amazon S3 bucket) was deleted.</p>
                        </li>
                        <li>
                           <p>Permissions don't allow sending logs to the destination.</p>
                        </li>
                     </ul>
					             </li>
               </ul>
			         </li>
         </ul>")
    @as("SortBy")
    sortBy: option<sortByKey>,
    @ocaml.doc("<p>An optional specification to return a subset of query logging associations.</p>
		       <note>
			         <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter, 
				you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
		       </note>")
    @as("Filters")
    filters: option<filters>,
    @ocaml.doc("<p>For the first <code>ListResolverQueryLogConfigAssociations</code> request, omit this value.</p>
		       <p>If there are more than <code>MaxResults</code> query logging associations that match the values that you specify for <code>Filters</code>, 
			you can submit another <code>ListResolverQueryLogConfigAssociations</code> request to get the next group of associations. In the next request, specify the value of 
			<code>NextToken</code> from the previous response. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of query logging associations that you want to return in the response to a <code>ListResolverQueryLogConfigAssociations</code> request. 
			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 query logging associations. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>A list that contains one <code>ResolverQueryLogConfigAssociations</code> element for each query logging association that matches the 
			values that you specified for <code>Filter</code>.</p>")
    @as("ResolverQueryLogConfigAssociations")
    resolverQueryLogConfigAssociations: option<resolverQueryLogConfigAssociationList>,
    @ocaml.doc("<p>The total number of query logging associations that were created by the current account in the specified Region and that match the filters 
			that were specified in the <code>ListResolverQueryLogConfigAssociations</code> request. For the total number of associations that were created by the 
			current account in the specified Region, see <code>TotalCount</code>.</p>")
    @as("TotalFilteredCount")
    totalFilteredCount: option<count>,
    @ocaml.doc("<p>The total number of query logging associations that were created by the current account in the specified Region. This count can differ from the 
			number of associations that are returned in a <code>ListResolverQueryLogConfigAssociations</code> response, depending on the values that you specify 
			in the request.</p>")
    @as("TotalCount")
    totalCount: option<count>,
    @ocaml.doc("<p>If there are more than <code>MaxResults</code> query logging associations, you can submit another <code>ListResolverQueryLogConfigAssociations</code> request 
			to get the next group of associations. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "ListResolverQueryLogConfigAssociationsCommand"
  let make = (~sortOrder=?, ~sortBy=?, ~filters=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({sortOrder, sortBy, filters, nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListResolverEndpoints = {
  type t
  type request = {
    @ocaml.doc("<p>An optional specification to return a subset of Resolver endpoints, such as all inbound Resolver endpoints.</p>
		       <note>
            <p>If you submit a second or subsequent <code>ListResolverEndpoints</code> request and specify the <code>NextToken</code> parameter, 
			you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
         </note>")
    @as("Filters")
    filters: option<filters>,
    @ocaml.doc("<p>For the first <code>ListResolverEndpoints</code> request, omit this value.</p>
		       <p>If you have more than <code>MaxResults</code> Resolver endpoints, you can submit another <code>ListResolverEndpoints</code> request 
			to get the next group of Resolver endpoints. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of Resolver endpoints that you want to return in the response to a <code>ListResolverEndpoints</code> request. 
			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 Resolver endpoints. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The Resolver endpoints that were created by using the current Amazon Web Services account, and that match the specified filters, if any.</p>"
    )
    @as("ResolverEndpoints")
    resolverEndpoints: option<resolverEndpoints>,
    @ocaml.doc("<p>The value that you specified for <code>MaxResults</code> in the request.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If more than <code>MaxResults</code> IP addresses match the specified criteria, you can submit another <code>ListResolverEndpoint</code> request 
			to get the next group of results. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "ListResolverEndpointsCommand"
  let make = (~filters=?, ~nextToken=?, ~maxResults=?, ()) => new({filters, nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListResolverDnssecConfigs = {
  type t
  type request = {
    @ocaml.doc("<p>An optional specification to return a subset of objects.</p>") @as("Filters")
    filters: option<filters>,
    @ocaml.doc("<p>(Optional) If the current Amazon Web Services account has more than <code>MaxResults</code> DNSSEC configurations, use <code>NextToken</code> 
			to get the second and subsequent pages of results.</p>
		       <p>For the first <code>ListResolverDnssecConfigs</code> request, omit this value.</p>
		       <p>For the second and subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value 
			for <code>NextToken</code> in the request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
            <i>Optional</i>: An integer that specifies the maximum number of DNSSEC configuration results that you want Amazon Route 53 to return. 
			If you don't specify a value for <code>MaxResults</code>, Route 53 returns up to 100 configuration per page.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>An array that contains one 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_ResolverDnssecConfig.html\">ResolverDnssecConfig</a> element 
			for each configuration for DNSSEC validation that is associated with the current Amazon Web Services account.</p>")
    @as("ResolverDnssecConfigs")
    resolverDnssecConfigs: option<resolverDnssecConfigList>,
    @ocaml.doc("<p>If a response includes the last of the DNSSEC configurations that are associated with the current Amazon Web Services account, 
			<code>NextToken</code> doesn't appear in the response.</p>
		       <p>If a response doesn't include the last of the configurations, you can get more configurations by submitting another 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListResolverDnssecConfigs.html\">ListResolverDnssecConfigs</a> 
			request. Get the value of <code>NextToken</code> that Amazon Route 53 returned in the previous response and include it in 
			<code>NextToken</code> in the next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "ListResolverDnssecConfigsCommand"
  let make = (~filters=?, ~nextToken=?, ~maxResults=?, ()) => new({filters, nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetResolverRule = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Resolver rule that you want to get information about.</p>")
    @as("ResolverRuleId")
    resolverRuleId: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>Information about the Resolver rule that you specified in a <code>GetResolverRule</code> request.</p>"
    )
    @as("ResolverRule")
    resolverRule: option<resolverRule>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "GetResolverRuleCommand"
  let make = (~resolverRuleId, ()) => new({resolverRuleId: resolverRuleId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteResolverRule = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Resolver rule that you want to delete.</p>") @as("ResolverRuleId")
    resolverRuleId: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>Information about the <code>DeleteResolverRule</code> request, including the status of the request.</p>"
    )
    @as("ResolverRule")
    resolverRule: option<resolverRule>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "DeleteResolverRuleCommand"
  let make = (~resolverRuleId, ()) => new({resolverRuleId: resolverRuleId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateResolverRule = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of the tag keys and values that you want to associate with the endpoint.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The ID of the outbound Resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify 
			in <code>TargetIps</code>.</p>")
    @as("ResolverEndpointId")
    resolverEndpointId: option<resourceId>,
    @ocaml.doc("<p>The IPs that you want Resolver to forward DNS queries to. You can specify only IPv4 addresses. Separate IP addresses with a space.</p>
		       <p>
            <code>TargetIps</code> is available only when the value of <code>Rule type</code> is <code>FORWARD</code>.</p>")
    @as("TargetIps")
    targetIps: option<targetList>,
    @ocaml.doc("<p>DNS queries for this domain name are forwarded to the IP addresses that you specify in <code>TargetIps</code>. If a query matches 
			multiple Resolver rules (example.com and www.example.com), outbound DNS queries are routed using the Resolver rule that contains 
			the most specific domain name (www.example.com).</p>")
    @as("DomainName")
    domainName: domainName,
    @ocaml.doc("<p>When you want to forward DNS queries for specified domain name to resolvers on your network, specify <code>FORWARD</code>.</p>
		       <p>When you have a forwarding rule to forward DNS queries for a domain to your network and you want Resolver to process queries for 
			a subdomain of that domain, specify <code>SYSTEM</code>.</p>
		       <p>For example, to forward DNS queries for example.com to resolvers on your network, you create a rule and specify <code>FORWARD</code> 
			for <code>RuleType</code>. To then have Resolver process queries for apex.example.com, you create a rule and specify 
			<code>SYSTEM</code> for <code>RuleType</code>.</p>
		       <p>Currently, only Resolver can create rules that have a value of <code>RECURSIVE</code> for <code>RuleType</code>.</p>")
    @as("RuleType")
    ruleType: ruleTypeOption,
    @ocaml.doc(
      "<p>A friendly name that lets you easily find a rule in the Resolver dashboard in the Route 53 console.</p>"
    )
    @as("Name")
    name: option<name>,
    @ocaml.doc("<p>A unique string that identifies the request and that allows failed requests to be retried
			without the risk of running the operation twice. <code>CreatorRequestId</code> can be
			any unique string, for example, a date/time stamp. </p>")
    @as("CreatorRequestId")
    creatorRequestId: creatorRequestId,
  }
  type response = {
    @ocaml.doc(
      "<p>Information about the <code>CreateResolverRule</code> request, including the status of the request.</p>"
    )
    @as("ResolverRule")
    resolverRule: option<resolverRule>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "CreateResolverRuleCommand"
  let make = (
    ~domainName,
    ~ruleType,
    ~creatorRequestId,
    ~tags=?,
    ~resolverEndpointId=?,
    ~targetIps=?,
    ~name=?,
    (),
  ) => new({tags, resolverEndpointId, targetIps, domainName, ruleType, name, creatorRequestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListResolverRules = {
  type t
  type request = {
    @ocaml.doc("<p>An optional specification to return a subset of Resolver rules, such as all Resolver rules that are associated with the same Resolver endpoint.</p>
		       <note>
            <p>If you submit a second or subsequent <code>ListResolverRules</code> request and specify the <code>NextToken</code> parameter, 
			you must use the same values for <code>Filters</code>, if any, as in the previous request.</p>
         </note>")
    @as("Filters")
    filters: option<filters>,
    @ocaml.doc("<p>For the first <code>ListResolverRules</code> request, omit this value.</p>
		       <p>If you have more than <code>MaxResults</code> Resolver rules, you can submit another <code>ListResolverRules</code> request 
			to get the next group of Resolver rules. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of Resolver rules that you want to return in the response to a <code>ListResolverRules</code> request. 
			If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 Resolver rules.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The Resolver rules that were created using the current Amazon Web Services account and that match the specified filters, if any.</p>"
    )
    @as("ResolverRules")
    resolverRules: option<resolverRules>,
    @ocaml.doc("<p>The value that you specified for <code>MaxResults</code> in the request.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If more than <code>MaxResults</code> Resolver rules match the specified criteria, you can submit another 
			<code>ListResolverRules</code> request to get the next group of results. In the next request, specify the value of 
			<code>NextToken</code> from the previous response. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-route53resolver") @new
  external new: request => t = "ListResolverRulesCommand"
  let make = (~filters=?, ~nextToken=?, ~maxResults=?, ()) => new({filters, nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
