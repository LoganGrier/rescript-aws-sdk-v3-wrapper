type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-elasticmapreduce") @new
external createClient: unit => awsServiceClient = "EMRClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type xmlStringMaxLen256 = string
type xmlString = string
type wholeNumber = int
type unit_ = [
  | @as("COUNT_PER_SECOND") #COUNT_PER_SECOND
  | @as("TERA_BITS_PER_SECOND") #TERA_BITS_PER_SECOND
  | @as("GIGA_BITS_PER_SECOND") #GIGA_BITS_PER_SECOND
  | @as("MEGA_BITS_PER_SECOND") #MEGA_BITS_PER_SECOND
  | @as("KILO_BITS_PER_SECOND") #KILO_BITS_PER_SECOND
  | @as("BITS_PER_SECOND") #BITS_PER_SECOND
  | @as("TERA_BYTES_PER_SECOND") #TERA_BYTES_PER_SECOND
  | @as("GIGA_BYTES_PER_SECOND") #GIGA_BYTES_PER_SECOND
  | @as("MEGA_BYTES_PER_SECOND") #MEGA_BYTES_PER_SECOND
  | @as("KILO_BYTES_PER_SECOND") #KILO_BYTES_PER_SECOND
  | @as("BYTES_PER_SECOND") #BYTES_PER_SECOND
  | @as("COUNT") #COUNT
  | @as("PERCENT") #PERCENT
  | @as("TERA_BITS") #TERA_BITS
  | @as("GIGA_BITS") #GIGA_BITS
  | @as("MEGA_BITS") #MEGA_BITS
  | @as("KILO_BITS") #KILO_BITS
  | @as("BITS") #BITS
  | @as("TERA_BYTES") #TERA_BYTES
  | @as("GIGA_BYTES") #GIGA_BYTES
  | @as("MEGA_BYTES") #MEGA_BYTES
  | @as("KILO_BYTES") #KILO_BYTES
  | @as("BYTES") #BYTES
  | @as("MILLI_SECONDS") #MILLI_SECONDS
  | @as("MICRO_SECONDS") #MICRO_SECONDS
  | @as("SECONDS") #SECONDS
  | @as("NONE") #NONE
]
type string_ = string
type stepStateChangeReasonCode = [@as("NONE") #NONE]
type stepState = [
  | @as("INTERRUPTED") #INTERRUPTED
  | @as("FAILED") #FAILED
  | @as("CANCELLED") #CANCELLED
  | @as("COMPLETED") #COMPLETED
  | @as("RUNNING") #RUNNING
  | @as("CANCEL_PENDING") #CANCEL_PENDING
  | @as("PENDING") #PENDING
]
type stepId = string
type stepExecutionState = [
  | @as("INTERRUPTED") #INTERRUPTED
  | @as("FAILED") #FAILED
  | @as("CANCELLED") #CANCELLED
  | @as("COMPLETED") #COMPLETED
  | @as("CONTINUE") #CONTINUE
  | @as("RUNNING") #RUNNING
  | @as("PENDING") #PENDING
]
type stepCancellationOption = [
  | @as("TERMINATE_PROCESS") #TERMINATE_PROCESS
  | @as("SEND_INTERRUPT") #SEND_INTERRUPT
]
type statistic = [
  | @as("MAXIMUM") #MAXIMUM
  | @as("MINIMUM") #MINIMUM
  | @as("SUM") #SUM
  | @as("AVERAGE") #AVERAGE
  | @as("SAMPLE_COUNT") #SAMPLE_COUNT
]
type spotProvisioningTimeoutAction = [
  | @as("TERMINATE_CLUSTER") #TERMINATE_CLUSTER
  | @as("SWITCH_TO_ON_DEMAND") #SWITCH_TO_ON_DEMAND
]
type spotProvisioningAllocationStrategy = [@as("capacity-optimized") #Capacity_Optimized]
type scaleDownBehavior = [
  | @as("TERMINATE_AT_TASK_COMPLETION") #TERMINATE_AT_TASK_COMPLETION
  | @as("TERMINATE_AT_INSTANCE_HOUR") #TERMINATE_AT_INSTANCE_HOUR
]
type resourceId = string
type repoUpgradeOnBoot = [@as("NONE") #NONE | @as("SECURITY") #SECURITY]
type port = int
type placementGroupStrategy = [
  | @as("NONE") #NONE
  | @as("CLUSTER") #CLUSTER
  | @as("PARTITION") #PARTITION
  | @as("SPREAD") #SPREAD
]
type optionalArnType = string
type onDemandProvisioningAllocationStrategy = [@as("lowest-price") #Lowest_Price]
type onDemandCapacityReservationUsageStrategy = [
  | @as("use-capacity-reservations-first") #Use_Capacity_Reservations_First
]
type onDemandCapacityReservationPreference = [@as("none") #None | @as("open") #Open]
type notebookExecutionStatus = [
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("STOP_PENDING") #STOP_PENDING
  | @as("FAILED") #FAILED
  | @as("FAILING") #FAILING
  | @as("FINISHED") #FINISHED
  | @as("FINISHING") #FINISHING
  | @as("RUNNING") #RUNNING
  | @as("STARTING") #STARTING
  | @as("START_PENDING") #START_PENDING
]
type nonNegativeDouble = float
type marketType = [@as("SPOT") #SPOT | @as("ON_DEMAND") #ON_DEMAND]
type marker = string
type long = float
@ocaml.doc("<p>The type of instance.</p>")
type jobFlowExecutionState = [
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("TERMINATED") #TERMINATED
  | @as("SHUTTING_DOWN") #SHUTTING_DOWN
  | @as("WAITING") #WAITING
  | @as("RUNNING") #RUNNING
  | @as("BOOTSTRAPPING") #BOOTSTRAPPING
  | @as("STARTING") #STARTING
]
type integer_ = int
type instanceType = string
type instanceStateChangeReasonCode = [
  | @as("CLUSTER_TERMINATED") #CLUSTER_TERMINATED
  | @as("BOOTSTRAP_FAILURE") #BOOTSTRAP_FAILURE
  | @as("INSTANCE_FAILURE") #INSTANCE_FAILURE
  | @as("VALIDATION_ERROR") #VALIDATION_ERROR
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
]
type instanceState = [
  | @as("TERMINATED") #TERMINATED
  | @as("RUNNING") #RUNNING
  | @as("BOOTSTRAPPING") #BOOTSTRAPPING
  | @as("PROVISIONING") #PROVISIONING
  | @as("AWAITING_FULFILLMENT") #AWAITING_FULFILLMENT
]
type instanceRoleType = [@as("TASK") #TASK | @as("CORE") #CORE | @as("MASTER") #MASTER]
type instanceId = string
type instanceGroupType = [@as("TASK") #TASK | @as("CORE") #CORE | @as("MASTER") #MASTER]
type instanceGroupStateChangeReasonCode = [
  | @as("CLUSTER_TERMINATED") #CLUSTER_TERMINATED
  | @as("INSTANCE_FAILURE") #INSTANCE_FAILURE
  | @as("VALIDATION_ERROR") #VALIDATION_ERROR
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
]
type instanceGroupState = [
  | @as("ENDED") #ENDED
  | @as("SHUTTING_DOWN") #SHUTTING_DOWN
  | @as("ARRESTED") #ARRESTED
  | @as("TERMINATED") #TERMINATED
  | @as("TERMINATING") #TERMINATING
  | @as("SUSPENDED") #SUSPENDED
  | @as("RESIZING") #RESIZING
  | @as("RECONFIGURING") #RECONFIGURING
  | @as("RUNNING") #RUNNING
  | @as("BOOTSTRAPPING") #BOOTSTRAPPING
  | @as("PROVISIONING") #PROVISIONING
]
type instanceGroupId = string
type instanceFleetType = [@as("TASK") #TASK | @as("CORE") #CORE | @as("MASTER") #MASTER]
type instanceFleetStateChangeReasonCode = [
  | @as("CLUSTER_TERMINATED") #CLUSTER_TERMINATED
  | @as("INSTANCE_FAILURE") #INSTANCE_FAILURE
  | @as("VALIDATION_ERROR") #VALIDATION_ERROR
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
]
type instanceFleetState = [
  | @as("TERMINATED") #TERMINATED
  | @as("TERMINATING") #TERMINATING
  | @as("SUSPENDED") #SUSPENDED
  | @as("RESIZING") #RESIZING
  | @as("RUNNING") #RUNNING
  | @as("BOOTSTRAPPING") #BOOTSTRAPPING
  | @as("PROVISIONING") #PROVISIONING
]
type instanceFleetId = string
type instanceCollectionType = [
  | @as("INSTANCE_GROUP") #INSTANCE_GROUP
  | @as("INSTANCE_FLEET") #INSTANCE_FLEET
]
type identityType = [@as("GROUP") #GROUP | @as("USER") #USER]
type executionEngineType = [@as("EMR") #EMR]
type errorMessage = string
type errorCode = string
type date = Js.Date.t
type computeLimitsUnitType = [
  | @as("VCPU") #VCPU
  | @as("Instances") #Instances
  | @as("InstanceFleetUnits") #InstanceFleetUnits
]
type comparisonOperator = [
  | @as("LESS_THAN_OR_EQUAL") #LESS_THAN_OR_EQUAL
  | @as("LESS_THAN") #LESS_THAN
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("GREATER_THAN_OR_EQUAL") #GREATER_THAN_OR_EQUAL
]
type clusterStateChangeReasonCode = [
  | @as("ALL_STEPS_COMPLETED") #ALL_STEPS_COMPLETED
  | @as("STEP_FAILURE") #STEP_FAILURE
  | @as("USER_REQUEST") #USER_REQUEST
  | @as("BOOTSTRAP_FAILURE") #BOOTSTRAP_FAILURE
  | @as("INSTANCE_FLEET_TIMEOUT") #INSTANCE_FLEET_TIMEOUT
  | @as("INSTANCE_FAILURE") #INSTANCE_FAILURE
  | @as("VALIDATION_ERROR") #VALIDATION_ERROR
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
]
type clusterState = [
  | @as("TERMINATED_WITH_ERRORS") #TERMINATED_WITH_ERRORS
  | @as("TERMINATED") #TERMINATED
  | @as("TERMINATING") #TERMINATING
  | @as("WAITING") #WAITING
  | @as("RUNNING") #RUNNING
  | @as("BOOTSTRAPPING") #BOOTSTRAPPING
  | @as("STARTING") #STARTING
]
type clusterId = string
type cancelStepsRequestStatus = [@as("FAILED") #FAILED | @as("SUBMITTED") #SUBMITTED]
type booleanObject = bool
type boolean_ = bool
type autoScalingPolicyStateChangeReasonCode = [
  | @as("CLEANUP_FAILURE") #CLEANUP_FAILURE
  | @as("PROVISION_FAILURE") #PROVISION_FAILURE
  | @as("USER_REQUEST") #USER_REQUEST
]
type autoScalingPolicyState = [
  | @as("FAILED") #FAILED
  | @as("DETACHED") #DETACHED
  | @as("DETACHING") #DETACHING
  | @as("ATTACHED") #ATTACHED
  | @as("ATTACHING") #ATTACHING
  | @as("PENDING") #PENDING
]
type authMode = [@as("IAM") #IAM | @as("SSO") #SSO]
type arnType = string
type adjustmentType = [
  | @as("EXACT_CAPACITY") #EXACT_CAPACITY
  | @as("PERCENT_CHANGE_IN_CAPACITY") #PERCENT_CHANGE_IN_CAPACITY
  | @as("CHANGE_IN_CAPACITY") #CHANGE_IN_CAPACITY
]
type actionOnFailure = [
  | @as("CONTINUE") #CONTINUE
  | @as("CANCEL_AND_WAIT") #CANCEL_AND_WAIT
  | @as("TERMINATE_CLUSTER") #TERMINATE_CLUSTER
  | @as("TERMINATE_JOB_FLOW") #TERMINATE_JOB_FLOW
]
type xmlStringMaxLen256List = array<xmlStringMaxLen256>
type xmlStringList = array<xmlString>
@ocaml.doc("<p>EBS volume specifications such as volume type, IOPS, and size (GiB) that will be
         requested for the EBS volume attached to an EC2 instance in the cluster.</p>")
type volumeSpecification = {
  @ocaml.doc("<p>The volume size, in gibibytes (GiB). This can be a number from 1 - 1024. If the volume
         type is EBS-optimized, the minimum value is 10.</p>")
  @as("SizeInGB")
  sizeInGB: integer_,
  @ocaml.doc("<p>The number of I/O operations per second (IOPS) that the volume supports.</p>")
  @as("Iops")
  iops: option<integer_>,
  @ocaml.doc("<p>The volume type. Volume types supported are gp2, io1, standard.</p>")
  @as("VolumeType")
  volumeType: string_,
}
@ocaml.doc("<p>A key-value pair containing user-defined metadata that you can associate with an Amazon
         EMR resource. Tags make it easier to associate clusters in various ways, such as grouping
         clusters to track your Amazon EMR resource allocation costs. For more information, see
            <a href=\"https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html\">Tag
            Clusters</a>. </p>")
type tag = {
  @ocaml.doc("<p>A user-defined value, which is optional in a tag. For more information, see <a href=\"https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html\">Tag
            Clusters</a>. </p>")
  @as("Value")
  value: option<string_>,
  @ocaml.doc("<p>A user-defined key, which is the minimum required information for a valid tag. For more
         information, see <a href=\"https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html\">Tag </a>. </p>")
  @as("Key")
  key: option<string_>,
}
type supportedProductsList = array<xmlStringMaxLen256>
type subnetIdList = array<string_>
@ocaml.doc("<p>Details for an Amazon EMR Studio, including ID, Name, VPC, and Description. The details
         do not include subnets, IAM roles, security groups, or tags associated with the
         Studio.</p>")
type studioSummary = {
  @ocaml.doc("<p>The time when the Amazon EMR Studio was created.</p>") @as("CreationTime")
  creationTime: option<date>,
  @ocaml.doc("<p>The unique access URL of the Amazon EMR Studio.</p>") @as("Url")
  url: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The detailed description of the Amazon EMR Studio.</p>") @as("Description")
  description: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The ID of the Virtual Private Cloud (Amazon VPC) associated with the Amazon EMR
         Studio.</p>")
  @as("VpcId")
  vpcId: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The name of the Amazon EMR Studio.</p>") @as("Name")
  name: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The ID of the Amazon EMR Studio.</p>") @as("StudioId")
  studioId: option<xmlStringMaxLen256>,
}
type stringMap = Js.Dict.t<string_>
type stringList = array<string_>
@ocaml.doc("<p>The timeline of the cluster step lifecycle.</p>")
type stepTimeline = {
  @ocaml.doc("<p>The date and time when the cluster step execution completed or failed.</p>")
  @as("EndDateTime")
  endDateTime: option<date>,
  @ocaml.doc("<p>The date and time when the cluster step execution started.</p>")
  @as("StartDateTime")
  startDateTime: option<date>,
  @ocaml.doc("<p>The date and time when the cluster step was created.</p>") @as("CreationDateTime")
  creationDateTime: option<date>,
}
type stepStateList = array<stepState>
@ocaml.doc("<p>The details of the step state change reason.</p>")
type stepStateChangeReason = {
  @ocaml.doc("<p>The descriptive message for the state change reason.</p>") @as("Message")
  message: option<string_>,
  @ocaml.doc("<p>The programmable code for the state change reason. Note: Currently, the service provides
         no code for the state change.</p>")
  @as("Code")
  code: option<stepStateChangeReasonCode>,
}
type stepIdsList = array<xmlStringMaxLen256>
@ocaml.doc("<p>The execution state of a step.</p>")
type stepExecutionStatusDetail = {
  @ocaml.doc("<p>A description of the step's current state.</p>") @as("LastStateChangeReason")
  lastStateChangeReason: option<xmlString>,
  @ocaml.doc("<p>The completion date and time of the step.</p>") @as("EndDateTime")
  endDateTime: option<date>,
  @ocaml.doc("<p>The start date and time of the step.</p>") @as("StartDateTime")
  startDateTime: option<date>,
  @ocaml.doc("<p>The creation date and time of the step.</p>") @as("CreationDateTime")
  creationDateTime: date,
  @ocaml.doc("<p>The state of the step.</p>") @as("State") state: stepExecutionState,
}
@ocaml.doc("<p>The launch specification for Spot Instances in the instance fleet, which determines the
         defined duration, provisioning timeout behavior, and allocation strategy.</p>
         <note>
            <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and
            later, excluding 5.0.x versions. Spot Instance allocation strategy is available in
            Amazon EMR version 5.12.1 and later.</p>
         </note>")
type spotProvisioningSpecification = {
  @ocaml.doc("<p> Specifies the strategy to use in launching Spot Instance fleets. Currently, the only
         option is capacity-optimized (the default), which launches instances from Spot Instance
         pools with optimal capacity for the number of instances that are launching. </p>")
  @as("AllocationStrategy")
  allocationStrategy: option<spotProvisioningAllocationStrategy>,
  @ocaml.doc("<p>The defined duration for Spot Instances (also known as Spot blocks) in minutes. When
         specified, the Spot Instance does not terminate before the defined duration expires, and
         defined duration pricing for Spot Instances applies. Valid values are 60, 120, 180, 240,
         300, or 360. The duration period starts as soon as a Spot Instance receives its instance
         ID. At the end of the duration, Amazon EC2 marks the Spot Instance for termination and
         provides a Spot Instance termination notice, which gives the instance a two-minute warning
         before it terminates. </p>")
  @as("BlockDurationMinutes")
  blockDurationMinutes: option<wholeNumber>,
  @ocaml.doc("<p>The action to take when <code>TargetSpotCapacity</code> has not been fulfilled when the
            <code>TimeoutDurationMinutes</code> has expired; that is, when all Spot Instances could
         not be provisioned within the Spot provisioning timeout. Valid values are
            <code>TERMINATE_CLUSTER</code> and <code>SWITCH_TO_ON_DEMAND</code>. SWITCH_TO_ON_DEMAND
         specifies that if no Spot Instances are available, On-Demand Instances should be
         provisioned to fulfill any remaining Spot capacity.</p>")
  @as("TimeoutAction")
  timeoutAction: spotProvisioningTimeoutAction,
  @ocaml.doc("<p>The spot provisioning timeout period in minutes. If Spot Instances are not provisioned
         within this time period, the <code>TimeOutAction</code> is taken. Minimum value is 5 and
         maximum value is 1440. The timeout applies only during initial provisioning, when the
         cluster is first created.</p>")
  @as("TimeoutDurationMinutes")
  timeoutDurationMinutes: wholeNumber,
}
@ocaml.doc("<p>An automatic scaling configuration, which describes how the policy adds or removes
         instances, the cooldown period, and the number of EC2 instances that will be added each
         time the CloudWatch metric alarm condition is satisfied.</p>")
type simpleScalingPolicyConfiguration = {
  @ocaml.doc("<p>The amount of time, in seconds, after a scaling activity completes before any further
         trigger-related scaling activities can start. The default value is 0.</p>")
  @as("CoolDown")
  coolDown: option<integer_>,
  @ocaml.doc("<p>The amount by which to scale in or scale out, based on the specified
            <code>AdjustmentType</code>. A positive value adds to the instance group's EC2 instance
         count while a negative number removes instances. If <code>AdjustmentType</code> is set to
            <code>EXACT_CAPACITY</code>, the number should only be a positive integer. If
            <code>AdjustmentType</code> is set to <code>PERCENT_CHANGE_IN_CAPACITY</code>, the value
         should express the percentage as an integer. For example, -20 indicates a decrease in 20%
         increments of cluster capacity.</p>")
  @as("ScalingAdjustment")
  scalingAdjustment: integer_,
  @ocaml.doc("<p>The way in which EC2 instances are added (if <code>ScalingAdjustment</code> is a
         positive number) or terminated (if <code>ScalingAdjustment</code> is a negative number)
         each time the scaling activity is triggered. <code>CHANGE_IN_CAPACITY</code> is the
         default. <code>CHANGE_IN_CAPACITY</code> indicates that the EC2 instance count increments
         or decrements by <code>ScalingAdjustment</code>, which should be expressed as an integer.
            <code>PERCENT_CHANGE_IN_CAPACITY</code> indicates the instance count increments or
         decrements by the percentage specified by <code>ScalingAdjustment</code>, which should be
         expressed as an integer. For example, 20 indicates an increase in 20% increments of cluster
         capacity. <code>EXACT_CAPACITY</code> indicates the scaling activity results in an instance
         group with the number of EC2 instances specified by <code>ScalingAdjustment</code>, which
         should be expressed as a positive integer.</p>")
  @as("AdjustmentType")
  adjustmentType: option<adjustmentType>,
}
@ocaml.doc("<p>Details for an Amazon EMR Studio session mapping. The details do not include the time
         the session mapping was last modified.</p>")
type sessionMappingSummary = {
  @ocaml.doc("<p>The time the session mapping was created.</p>") @as("CreationTime")
  creationTime: option<date>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the session policy associated with the user or
         group.</p>")
  @as("SessionPolicyArn")
  sessionPolicyArn: option<xmlStringMaxLen256>,
  @ocaml.doc(
    "<p>Specifies whether the identity mapped to the Amazon EMR Studio is a user or a group.</p>"
  )
  @as("IdentityType")
  identityType: option<identityType>,
  @ocaml.doc("<p>The name of the user or group. For more information, see <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName\">UserName</a> and <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName\">DisplayName</a> in the <i>AWS SSO Identity Store API
         Reference</i>.</p>")
  @as("IdentityName")
  identityName: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The globally unique identifier (GUID) of the user or group from the AWS SSO Identity
         Store.</p>")
  @as("IdentityId")
  identityId: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The ID of the Amazon EMR Studio.</p>") @as("StudioId")
  studioId: option<xmlStringMaxLen256>,
}
@ocaml.doc("<p>Details for an Amazon EMR Studio session mapping including creation time, user or group
         ID, Studio ID, and so on.</p>")
type sessionMappingDetail = {
  @ocaml.doc("<p>The time the session mapping was last modified.</p>") @as("LastModifiedTime")
  lastModifiedTime: option<date>,
  @ocaml.doc("<p>The time the session mapping was created.</p>") @as("CreationTime")
  creationTime: option<date>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the session policy associated with the user or
         group.</p>")
  @as("SessionPolicyArn")
  sessionPolicyArn: option<xmlStringMaxLen256>,
  @ocaml.doc(
    "<p>Specifies whether the identity mapped to the Amazon EMR Studio is a user or a group.</p>"
  )
  @as("IdentityType")
  identityType: option<identityType>,
  @ocaml.doc("<p>The name of the user or group. For more information, see <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName\">UserName</a> and <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName\">DisplayName</a> in the <i>AWS SSO Identity Store API
         Reference</i>.</p>")
  @as("IdentityName")
  identityName: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The globally unique identifier (GUID) of the user or group.</p>") @as("IdentityId")
  identityId: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The ID of the Amazon EMR Studio.</p>") @as("StudioId")
  studioId: option<xmlStringMaxLen256>,
}
type securityGroupsList = array<xmlStringMaxLen256>
@ocaml.doc("<p>The creation date and time, and name, of a security configuration.</p>")
type securityConfigurationSummary = {
  @ocaml.doc("<p>The date and time the security configuration was created.</p>")
  @as("CreationDateTime")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The name of the security configuration.</p>") @as("Name") name: option<xmlString>,
}
@ocaml.doc("<p>The upper and lower EC2 instance limits for an automatic scaling policy. Automatic
         scaling activities triggered by automatic scaling rules will not cause an instance group to
         grow above or below these limits.</p>")
type scalingConstraints = {
  @ocaml.doc("<p>The upper boundary of EC2 instances in an instance group beyond which scaling activities
         are not allowed to grow. Scale-out activities will not add instances beyond this
         boundary.</p>")
  @as("MaxCapacity")
  maxCapacity: integer_,
  @ocaml.doc("<p>The lower boundary of EC2 instances in an instance group below which scaling activities
         are not allowed to shrink. Scale-in activities will not terminate instances below this
         boundary.</p>")
  @as("MinCapacity")
  minCapacity: integer_,
}
@ocaml.doc("<p>A list of port ranges that are permitted to allow inbound traffic from all public IP
         addresses. To specify a single port, use the same value for <code>MinRange</code> and
            <code>MaxRange</code>.</p>")
type portRange = {
  @ocaml.doc("<p>The smallest port number in a specified range of port numbers.</p>")
  @as("MaxRange")
  maxRange: option<port>,
  @ocaml.doc("<p>The smallest port number in a specified range of port numbers.</p>")
  @as("MinRange")
  minRange: port,
}
@ocaml.doc("<p>Placement group configuration for an Amazon EMR cluster. The configuration specifies the
         placement strategy that can be applied to instance roles during cluster creation.</p>
         <p>To use this configuration, consider attaching managed policy
         AmazonElasticMapReducePlacementGroupPolicy to the EMR role.</p>")
type placementGroupConfig = {
  @ocaml.doc("<p>EC2 Placement Group strategy associated with instance role.</p>
         <p>Starting with Amazon EMR version 5.23.0, the only supported placement strategy is
            <code>SPREAD</code> for the <code>MASTER</code> instance role.</p>")
  @as("PlacementStrategy")
  placementStrategy: option<placementGroupStrategy>,
  @ocaml.doc("<p>Role of the instance in the cluster.</p>
         <p>Starting with Amazon EMR version 5.23.0, the only supported instance role is
            <code>MASTER</code>.</p>")
  @as("InstanceRole")
  instanceRole: instanceRoleType,
}
@ocaml.doc(
  "<p>Describes the strategy for using unused Capacity Reservations for fulfilling On-Demand capacity.</p>"
)
type onDemandCapacityReservationOptions = {
  @ocaml.doc(
    "<p>The ARN of the Capacity Reservation resource group in which to run the instance.</p>"
  )
  @as("CapacityReservationResourceGroupArn")
  capacityReservationResourceGroupArn: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>Indicates the instance's Capacity Reservation preferences. Possible preferences include:</p>
         <ul>
            <li>
               <p>
                  <code>open</code> - The instance can run in any open Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).</p>
            </li>
            <li>
               <p>
                  <code>none</code> - The instance avoids running in a Capacity Reservation even if one is available. The instance runs as an On-Demand Instance.</p>
            </li>
         </ul>")
  @as("CapacityReservationPreference")
  capacityReservationPreference: option<onDemandCapacityReservationPreference>,
  @ocaml.doc("<p>Indicates whether to use unused Capacity Reservations for fulfilling On-Demand capacity.</p>
         <p>If you specify <code>use-capacity-reservations-first</code>, the fleet uses unused Capacity Reservations to fulfill On-Demand capacity up to the target On-Demand capacity. If multiple instance pools have unused Capacity Reservations, the On-Demand allocation strategy (<code>lowest-price</code>) is applied. If the number of unused Capacity Reservations is less than the On-Demand target capacity, the remaining On-Demand target capacity is launched according to the On-Demand allocation strategy (<code>lowest-price</code>).</p>
         <p>If you do not specify a value, the fleet fulfils the On-Demand capacity according to the chosen On-Demand allocation strategy.</p>")
  @as("UsageStrategy")
  usageStrategy: option<onDemandCapacityReservationUsageStrategy>,
}
@ocaml.doc("<p></p>")
type notebookExecutionSummary = {
  @ocaml.doc("<p>The timestamp when notebook execution started.</p>") @as("EndTime")
  endTime: option<date>,
  @ocaml.doc("<p>The timestamp when notebook execution started.</p>") @as("StartTime")
  startTime: option<date>,
  @ocaml.doc("<p>The status of the notebook execution.</p>
         <ul>
            <li>
               <p>
                  <code>START_PENDING</code> indicates that the cluster has received the execution
               request but execution has not begun.</p>
            </li>
            <li>
               <p>
                  <code>STARTING</code> indicates that the execution is starting on the
               cluster.</p>
            </li>
            <li>
               <p>
                  <code>RUNNING</code> indicates that the execution is being processed by the
               cluster.</p>
            </li>
            <li>
               <p>
                  <code>FINISHING</code> indicates that execution processing is in the final
               stages.</p>
            </li>
            <li>
               <p>
                  <code>FINISHED</code> indicates that the execution has completed without
               error.</p>
            </li>
            <li>
               <p>
                  <code>FAILING</code> indicates that the execution is failing and will not finish
               successfully.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> indicates that the execution failed.</p>
            </li>
            <li>
               <p>
                  <code>STOP_PENDING</code> indicates that the cluster has received a
                  <code>StopNotebookExecution</code> request and the stop is pending.</p>
            </li>
            <li>
               <p>
                  <code>STOPPING</code> indicates that the cluster is in the process of stopping the
               execution as a result of a <code>StopNotebookExecution</code> request.</p>
            </li>
            <li>
               <p>
                  <code>STOPPED</code> indicates that the execution stopped because of a
                  <code>StopNotebookExecution</code> request.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<notebookExecutionStatus>,
  @ocaml.doc("<p>The name of the notebook execution.</p>") @as("NotebookExecutionName")
  notebookExecutionName: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The unique identifier of the editor associated with the notebook execution.</p>")
  @as("EditorId")
  editorId: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The unique identifier of the notebook execution.</p>") @as("NotebookExecutionId")
  notebookExecutionId: option<xmlStringMaxLen256>,
}
@ocaml.doc("<p>A CloudWatch dimension, which is specified using a <code>Key</code> (known as a
            <code>Name</code> in CloudWatch), <code>Value</code> pair. By default, Amazon EMR uses
         one dimension whose <code>Key</code> is <code>JobFlowID</code> and <code>Value</code> is a
         variable representing the cluster ID, which is <code>${emr.clusterId}</code>. This enables
         the rule to bootstrap when the cluster ID becomes available.</p>")
type metricDimension = {
  @ocaml.doc("<p>The dimension value.</p>") @as("Value") value: option<string_>,
  @ocaml.doc("<p>The dimension name.</p>") @as("Key") key: option<string_>,
}
@ocaml.doc("<p>A key-value pair.</p>")
type keyValue = {
  @ocaml.doc("<p>The value part of the identified key.</p>") @as("Value") value: option<xmlString>,
  @ocaml.doc("<p>The unique identifier of a key-value pair.</p>") @as("Key") key: option<xmlString>,
}
@ocaml.doc("<p>Attributes for Kerberos configuration when Kerberos authentication is enabled using a
         security configuration. For more information see <a href=\"https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html\">Use Kerberos Authentication</a>
         in the <i>Amazon EMR Management Guide</i>.</p>")
type kerberosAttributes = {
  @ocaml.doc("<p>The Active Directory password for <code>ADDomainJoinUser</code>.</p>")
  @as("ADDomainJoinPassword")
  addomainJoinPassword: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>Required only when establishing a cross-realm trust with an Active Directory domain. A
         user with sufficient privileges to join resources to the domain.</p>")
  @as("ADDomainJoinUser")
  addomainJoinUser: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>Required only when establishing a cross-realm trust with a KDC in a different realm. The
         cross-realm principal password, which must be identical across realms.</p>")
  @as("CrossRealmTrustPrincipalPassword")
  crossRealmTrustPrincipalPassword: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The password used within the cluster for the kadmin service on the cluster-dedicated
         KDC, which maintains Kerberos principals, password policies, and keytabs for the
         cluster.</p>")
  @as("KdcAdminPassword")
  kdcAdminPassword: xmlStringMaxLen256,
  @ocaml.doc("<p>The name of the Kerberos realm to which all nodes in a cluster belong. For example,
            <code>EC2.INTERNAL</code>. </p>")
  @as("Realm")
  realm: xmlStringMaxLen256,
}
@ocaml.doc("<p>Describes the status of the cluster (job flow).</p>")
type jobFlowExecutionStatusDetail = {
  @ocaml.doc("<p>Description of the job flow last changed state.</p>") @as("LastStateChangeReason")
  lastStateChangeReason: option<xmlString>,
  @ocaml.doc("<p>The completion date and time of the job flow.</p>") @as("EndDateTime")
  endDateTime: option<date>,
  @ocaml.doc(
    "<p>The date and time when the job flow was ready to start running bootstrap actions.</p>"
  )
  @as("ReadyDateTime")
  readyDateTime: option<date>,
  @ocaml.doc("<p>The start date and time of the job flow.</p>") @as("StartDateTime")
  startDateTime: option<date>,
  @ocaml.doc("<p>The creation date and time of the job flow.</p>") @as("CreationDateTime")
  creationDateTime: date,
  @ocaml.doc("<p>The state of the job flow.</p>") @as("State") state: jobFlowExecutionState,
}
type jobFlowExecutionStateList = array<jobFlowExecutionState>
@ocaml.doc("<p>The timeline of the instance lifecycle.</p>")
type instanceTimeline = {
  @ocaml.doc("<p>The date and time when the instance was terminated.</p>") @as("EndDateTime")
  endDateTime: option<date>,
  @ocaml.doc("<p>The date and time when the instance was ready to perform tasks.</p>")
  @as("ReadyDateTime")
  readyDateTime: option<date>,
  @ocaml.doc("<p>The creation date and time of the instance.</p>") @as("CreationDateTime")
  creationDateTime: option<date>,
}
type instanceStateList = array<instanceState>
@ocaml.doc("<p>The details of the status change reason for the instance.</p>")
type instanceStateChangeReason = {
  @ocaml.doc("<p>The status change reason description.</p>") @as("Message")
  message: option<string_>,
  @ocaml.doc("<p>The programmable code for the state change reason.</p>") @as("Code")
  code: option<instanceStateChangeReasonCode>,
}
type instanceGroupTypeList = array<instanceGroupType>
@ocaml.doc("<p>The timeline of the instance group lifecycle.</p>")
type instanceGroupTimeline = {
  @ocaml.doc("<p>The date and time when the instance group terminated.</p>") @as("EndDateTime")
  endDateTime: option<date>,
  @ocaml.doc("<p>The date and time when the instance group became ready to perform tasks.</p>")
  @as("ReadyDateTime")
  readyDateTime: option<date>,
  @ocaml.doc("<p>The creation date and time of the instance group.</p>") @as("CreationDateTime")
  creationDateTime: option<date>,
}
@ocaml.doc("<p>The status change reason details for the instance group.</p>")
type instanceGroupStateChangeReason = {
  @ocaml.doc("<p>The status change reason description.</p>") @as("Message")
  message: option<string_>,
  @ocaml.doc("<p>The programmable code for the state change reason.</p>") @as("Code")
  code: option<instanceGroupStateChangeReasonCode>,
}
type instanceGroupIdsList = array<xmlStringMaxLen256>
@ocaml.doc("<p>Detailed information about an instance group.</p>")
type instanceGroupDetail = {
  @ocaml.doc("<p>The date/time the instance group was terminated.</p>") @as("EndDateTime")
  endDateTime: option<date>,
  @ocaml.doc("<p>The date/time the instance group was available to the cluster.</p>")
  @as("ReadyDateTime")
  readyDateTime: option<date>,
  @ocaml.doc("<p>The date/time the instance group was started.</p>") @as("StartDateTime")
  startDateTime: option<date>,
  @ocaml.doc("<p>The date/time the instance group was created.</p>") @as("CreationDateTime")
  creationDateTime: date,
  @ocaml.doc("<p>Details regarding the state of the instance group.</p>")
  @as("LastStateChangeReason")
  lastStateChangeReason: option<xmlString>,
  @ocaml.doc("<p>State of instance group. The following values are deprecated: STARTING, TERMINATED, and
         FAILED.</p>")
  @as("State")
  state: instanceGroupState,
  @ocaml.doc("<p>Actual count of running instances.</p>") @as("InstanceRunningCount")
  instanceRunningCount: integer_,
  @ocaml.doc("<p>Target number of instances to run in the instance group.</p>")
  @as("InstanceRequestCount")
  instanceRequestCount: integer_,
  @ocaml.doc("<p>EC2 instance type.</p>") @as("InstanceType") instanceType: instanceType,
  @ocaml.doc(
    "<p>If specified, indicates that the instance group uses Spot Instances. This is the maximum price you are willing to pay for Spot Instances. Specify <code>OnDemandPrice</code> to set the amount equal to the On-Demand price, or specify an amount in USD.</p>"
  )
  @as("BidPrice")
  bidPrice: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>Instance group role in the cluster</p>") @as("InstanceRole")
  instanceRole: instanceRoleType,
  @ocaml.doc("<p>Market type of the EC2 instances used to create a cluster node.</p>") @as("Market")
  market: marketType,
  @ocaml.doc("<p>Friendly name for the instance group.</p>") @as("Name")
  name: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>Unique identifier for the instance group.</p>") @as("InstanceGroupId")
  instanceGroupId: option<xmlStringMaxLen256>,
}
@ocaml.doc("<p>Provides historical timestamps for the instance fleet, including the time of creation,
         the time it became ready to run jobs, and the time of termination.</p>
         <note>
            <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and
            later, excluding 5.0.x versions.</p>
         </note>")
type instanceFleetTimeline = {
  @ocaml.doc("<p>The time and date the instance fleet terminated.</p>") @as("EndDateTime")
  endDateTime: option<date>,
  @ocaml.doc("<p>The time and date the instance fleet was ready to run jobs.</p>")
  @as("ReadyDateTime")
  readyDateTime: option<date>,
  @ocaml.doc("<p>The time and date the instance fleet was created.</p>") @as("CreationDateTime")
  creationDateTime: option<date>,
}
@ocaml.doc("<p>Provides status change reason details for the instance fleet.</p>
         <note>
            <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and
            later, excluding 5.0.x versions.</p>
         </note>")
type instanceFleetStateChangeReason = {
  @ocaml.doc("<p>An explanatory message.</p>") @as("Message") message: option<string_>,
  @ocaml.doc("<p>A code corresponding to the reason the state change occurred.</p>") @as("Code")
  code: option<instanceFleetStateChangeReasonCode>,
}
@ocaml.doc("<p>Configuration parameters for an instance fleet modification request.</p>
         <note>
            <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and
            later, excluding 5.0.x versions.</p>
         </note>")
type instanceFleetModifyConfig = {
  @ocaml.doc("<p>The target capacity of Spot units for the instance fleet. For more information, see
            <a>InstanceFleetConfig$TargetSpotCapacity</a>.</p>")
  @as("TargetSpotCapacity")
  targetSpotCapacity: option<wholeNumber>,
  @ocaml.doc("<p>The target capacity of On-Demand units for the instance fleet. For more information see
            <a>InstanceFleetConfig$TargetOnDemandCapacity</a>.</p>")
  @as("TargetOnDemandCapacity")
  targetOnDemandCapacity: option<wholeNumber>,
  @ocaml.doc("<p>A unique identifier for the instance fleet.</p>") @as("InstanceFleetId")
  instanceFleetId: instanceFleetId,
}
@ocaml.doc("<p>The details of the step failure. The service attempts to detect the root cause for many
         common failures.</p>")
type failureDetails = {
  @ocaml.doc("<p>The path to the log file where the step failure root cause was originally
         recorded.</p>")
  @as("LogFile")
  logFile: option<string_>,
  @ocaml.doc("<p>The descriptive message including the error the Amazon EMR service has identified as the
         cause of step failure. This is text from an error log that describes the root cause of the
         failure.</p>")
  @as("Message")
  message: option<string_>,
  @ocaml.doc("<p>The reason for the step failure. In the case where the service cannot successfully
         determine the root cause of the failure, it returns \"Unknown Error\" as a reason.</p>")
  @as("Reason")
  reason: option<string_>,
}
@ocaml.doc("<p>Specifies the execution engine (cluster) to run the notebook and perform the notebook
         execution, for example, an EMR cluster.</p>")
type executionEngineConfig = {
  @ocaml.doc("<p>An optional unique ID of an EC2 security group to associate with the master instance of
         the EMR cluster for this notebook execution. For more information see <a href=\"https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-managed-notebooks-security-groups.html\">Specifying
            EC2 Security Groups for EMR Notebooks</a> in the <i>EMR Management
            Guide</i>.</p>")
  @as("MasterInstanceSecurityGroupId")
  masterInstanceSecurityGroupId: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The type of execution engine. A value of <code>EMR</code> specifies an EMR
         cluster.</p>")
  @as("Type")
  type_: option<executionEngineType>,
  @ocaml.doc("<p>The unique identifier of the execution engine. For an EMR cluster, this is the cluster
         ID.</p>")
  @as("Id")
  id: xmlStringMaxLen256,
}
@ocaml.doc("<p>EBS block device that's attached to an EC2 instance.</p>")
type ebsVolume = {
  @ocaml.doc("<p>The volume identifier of the EBS volume.</p>") @as("VolumeId")
  volumeId: option<string_>,
  @ocaml.doc("<p>The device name that is exposed to the instance, such as /dev/sdh.</p>")
  @as("Device")
  device: option<string_>,
}
type ec2InstanceIdsToTerminateList = array<instanceId>
type ec2InstanceIdsList = array<instanceId>
@ocaml.doc("<p> The EC2 unit limits for a managed scaling policy. The managed scaling activity of a
         cluster can not be above or below these limits. The limit only applies to the core and task
         nodes. The master node cannot be scaled after initial configuration. </p>")
type computeLimits = {
  @ocaml.doc("<p> The upper boundary of EC2 units for core node type in a cluster. It is measured through
         vCPU cores or instances for instance groups and measured through units for instance fleets.
         The core units are not allowed to scale beyond this boundary. The parameter is used to
         split capacity allocation between core and task nodes. </p>")
  @as("MaximumCoreCapacityUnits")
  maximumCoreCapacityUnits: option<integer_>,
  @ocaml.doc("<p> The upper boundary of On-Demand EC2 units. It is measured through vCPU cores or
         instances for instance groups and measured through units for instance fleets. The On-Demand
         units are not allowed to scale beyond this boundary. The parameter is used to split
         capacity allocation between On-Demand and Spot Instances. </p>")
  @as("MaximumOnDemandCapacityUnits")
  maximumOnDemandCapacityUnits: option<integer_>,
  @ocaml.doc("<p> The upper boundary of EC2 units. It is measured through vCPU cores or instances for
         instance groups and measured through units for instance fleets. Managed scaling activities
         are not allowed beyond this boundary. The limit only applies to the core and task nodes.
         The master node cannot be scaled after initial configuration. </p>")
  @as("MaximumCapacityUnits")
  maximumCapacityUnits: integer_,
  @ocaml.doc("<p> The lower boundary of EC2 units. It is measured through vCPU cores or instances for
         instance groups and measured through units for instance fleets. Managed scaling activities
         are not allowed beyond this boundary. The limit only applies to the core and task nodes.
         The master node cannot be scaled after initial configuration. </p>")
  @as("MinimumCapacityUnits")
  minimumCapacityUnits: integer_,
  @ocaml.doc("<p> The unit type used for specifying a managed scaling policy. </p>") @as("UnitType")
  unitType: computeLimitsUnitType,
}
@ocaml.doc("<p>Represents the timeline of the cluster's lifecycle.</p>")
type clusterTimeline = {
  @ocaml.doc("<p>The date and time when the cluster was terminated.</p>") @as("EndDateTime")
  endDateTime: option<date>,
  @ocaml.doc("<p>The date and time when the cluster was ready to run steps.</p>")
  @as("ReadyDateTime")
  readyDateTime: option<date>,
  @ocaml.doc("<p>The creation date and time of the cluster.</p>") @as("CreationDateTime")
  creationDateTime: option<date>,
}
type clusterStateList = array<clusterState>
@ocaml.doc("<p>The reason that the cluster changed to its current state.</p>")
type clusterStateChangeReason = {
  @ocaml.doc("<p>The descriptive message for the state change reason.</p>") @as("Message")
  message: option<string_>,
  @ocaml.doc("<p>The programmatic code for the state change reason.</p>") @as("Code")
  code: option<clusterStateChangeReasonCode>,
}
@ocaml.doc("<p>Specification of the status of a CancelSteps request. Available only in Amazon EMR
         version 4.8.0 and later, excluding version 5.0.0.</p>")
type cancelStepsInfo = {
  @ocaml.doc("<p>The reason for the failure if the CancelSteps request fails.</p>") @as("Reason")
  reason: option<string_>,
  @ocaml.doc("<p>The status of a CancelSteps Request. The value may be SUBMITTED or FAILED.</p>")
  @as("Status")
  status: option<cancelStepsRequestStatus>,
  @ocaml.doc("<p>The encrypted StepId of a step.</p>") @as("StepId") stepId: option<stepId>,
}
@ocaml.doc("<p>Properties that describe the AWS principal that created the
            <code>BlockPublicAccessConfiguration</code> using the
            <code>PutBlockPublicAccessConfiguration</code> action as well as the date and time that
         the configuration was created. Each time a configuration for block public access is
         updated, Amazon EMR updates this metadata.</p>")
type blockPublicAccessConfigurationMetadata = {
  @ocaml.doc("<p>The Amazon Resource Name that created or last modified the configuration.</p>")
  @as("CreatedByArn")
  createdByArn: arnType,
  @ocaml.doc("<p>The date and time that the configuration was created.</p>") @as("CreationDateTime")
  creationDateTime: date,
}
@ocaml.doc("<p>The reason for an <a>AutoScalingPolicyStatus</a> change.</p>")
type autoScalingPolicyStateChangeReason = {
  @ocaml.doc("<p>A friendly, more verbose message that accompanies an automatic scaling policy state
         change.</p>")
  @as("Message")
  message: option<string_>,
  @ocaml.doc("<p>The code indicating the reason for the change in status.<code>USER_REQUEST</code>
         indicates that the scaling policy status was changed by a user.
            <code>PROVISION_FAILURE</code> indicates that the status change was because the policy
         failed to provision. <code>CLEANUP_FAILURE</code> indicates an error.</p>")
  @as("Code")
  code: option<autoScalingPolicyStateChangeReasonCode>,
}
type tagList_ = array<tag>
@ocaml.doc("<p>The list of supported product configurations that allow user-supplied arguments. EMR
         accepts these arguments and forwards them to the corresponding installation script as
         bootstrap action arguments.</p>")
type supportedProductConfig = {
  @ocaml.doc("<p>The list of user-supplied arguments.</p>") @as("Args") args: option<xmlStringList>,
  @ocaml.doc("<p>The name of the product configuration.</p>") @as("Name")
  name: option<xmlStringMaxLen256>,
}
type studioSummaryList = array<studioSummary>
@ocaml.doc("<p>The execution status details of the cluster step.</p>")
type stepStatus = {
  @ocaml.doc("<p>The timeline of the cluster step status over time.</p>") @as("Timeline")
  timeline: option<stepTimeline>,
  @ocaml.doc("<p>The details for the step failure including reason, message, and log file path where the
         root cause was identified.</p>")
  @as("FailureDetails")
  failureDetails: option<failureDetails>,
  @ocaml.doc("<p>The reason for the step execution status change.</p>") @as("StateChangeReason")
  stateChangeReason: option<stepStateChangeReason>,
  @ocaml.doc("<p>The execution state of the cluster step.</p>") @as("State")
  state: option<stepState>,
}
type sessionMappingSummaryList = array<sessionMappingSummary>
type securityConfigurationList = array<securityConfigurationSummary>
@ocaml.doc("<p>Configuration of the script to run during a bootstrap action.</p>")
type scriptBootstrapActionConfig = {
  @ocaml.doc("<p>A list of command line arguments to pass to the bootstrap action script.</p>")
  @as("Args")
  args: option<xmlStringList>,
  @ocaml.doc("<p>Location of the script to run during a bootstrap action. Can be either a location in
         Amazon S3 or on a local file system.</p>")
  @as("Path")
  path: xmlString,
}
@ocaml.doc("<p>The type of adjustment the automatic scaling activity makes when triggered, and the
         periodicity of the adjustment.</p>")
type scalingAction = {
  @ocaml.doc("<p>The type of adjustment the automatic scaling activity makes when triggered, and the
         periodicity of the adjustment.</p>")
  @as("SimpleScalingPolicyConfiguration")
  simpleScalingPolicyConfiguration: simpleScalingPolicyConfiguration,
  @ocaml.doc("<p>Not available for instance groups. Instance groups use the market type specified for the
         group.</p>")
  @as("Market")
  market: option<marketType>,
}
type portRanges = array<portRange>
@ocaml.doc("<p>The Amazon EC2 Availability Zone configuration of the cluster (job flow).</p>")
type placementType = {
  @ocaml.doc("<p>When multiple Availability Zones are specified, Amazon EMR evaluates them and launches
         instances in the optimal Availability Zone. <code>AvailabilityZones</code> is used for
         instance fleets, while <code>AvailabilityZone</code> (singular) is used for uniform
         instance groups.</p>
         <note>
            <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and
            later, excluding 5.0.x versions.</p>
         </note>")
  @as("AvailabilityZones")
  availabilityZones: option<xmlStringMaxLen256List>,
  @ocaml.doc("<p>The Amazon EC2 Availability Zone for the cluster. <code>AvailabilityZone</code> is used
         for uniform instance groups, while <code>AvailabilityZones</code> (plural) is used for
         instance fleets.</p>")
  @as("AvailabilityZone")
  availabilityZone: option<xmlString>,
}
type placementGroupConfigList = array<placementGroupConfig>
@ocaml.doc("<p> The launch specification for On-Demand Instances in the instance fleet, which
         determines the allocation strategy. </p>
         <note>
            <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and
            later, excluding 5.0.x versions. On-Demand Instances allocation strategy is available in
            Amazon EMR version 5.12.1 and later.</p>
         </note>")
type onDemandProvisioningSpecification = {
  @ocaml.doc(
    "<p>The launch specification for On-Demand instances in the instance fleet, which determines the allocation strategy.</p>"
  )
  @as("CapacityReservationOptions")
  capacityReservationOptions: option<onDemandCapacityReservationOptions>,
  @ocaml.doc(
    "<p>Specifies the strategy to use in launching On-Demand instance fleets. Currently, the only option is <code>lowest-price</code> (the default), which launches the lowest price first.</p>"
  )
  @as("AllocationStrategy")
  allocationStrategy: onDemandProvisioningAllocationStrategy,
}
type notebookExecutionSummaryList = array<notebookExecutionSummary>
type metricDimensionList = array<metricDimension>
@ocaml.doc("<p> Managed scaling policy for an Amazon EMR cluster. The policy specifies the limits for
         resources that can be added or terminated from a cluster. The policy only applies to the
         core and task nodes. The master node cannot be scaled after initial configuration. </p>")
type managedScalingPolicy = {
  @ocaml.doc("<p>The EC2 unit limits for a managed scaling policy. The managed scaling activity of a
         cluster is not allowed to go above or below these limits. The limit only applies to the
         core and task nodes. The master node cannot be scaled after initial configuration.</p>")
  @as("ComputeLimits")
  computeLimits: option<computeLimits>,
}
type keyValueList = array<keyValue>
@ocaml.doc("<p>The instance status details.</p>")
type instanceStatus = {
  @ocaml.doc("<p>The timeline of the instance status over time.</p>") @as("Timeline")
  timeline: option<instanceTimeline>,
  @ocaml.doc("<p>The details of the status change reason for the instance.</p>")
  @as("StateChangeReason")
  stateChangeReason: option<instanceStateChangeReason>,
  @ocaml.doc("<p>The current state of the instance.</p>") @as("State") state: option<instanceState>,
}
@ocaml.doc("<p>Custom policy for requesting termination protection or termination of specific instances
         when shrinking an instance group.</p>")
type instanceResizePolicy = {
  @ocaml.doc("<p>Decommissioning timeout override for the specific list of instances to be
         terminated.</p>")
  @as("InstanceTerminationTimeout")
  instanceTerminationTimeout: option<integer_>,
  @ocaml.doc("<p>Specific list of instances to be protected when shrinking an instance group.</p>")
  @as("InstancesToProtect")
  instancesToProtect: option<ec2InstanceIdsList>,
  @ocaml.doc("<p>Specific list of instances to be terminated when shrinking an instance group.</p>")
  @as("InstancesToTerminate")
  instancesToTerminate: option<ec2InstanceIdsList>,
}
@ocaml.doc("<p>The details of the instance group status.</p>")
type instanceGroupStatus = {
  @ocaml.doc("<p>The timeline of the instance group status over time.</p>") @as("Timeline")
  timeline: option<instanceGroupTimeline>,
  @ocaml.doc("<p>The status change reason details for the instance group.</p>")
  @as("StateChangeReason")
  stateChangeReason: option<instanceGroupStateChangeReason>,
  @ocaml.doc("<p>The current state of the instance group.</p>") @as("State")
  state: option<instanceGroupState>,
}
type instanceGroupDetailList = array<instanceGroupDetail>
@ocaml.doc("<p>The status of the instance fleet.</p>
         <note>
            <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and
            later, excluding 5.0.x versions.</p>
         </note>")
type instanceFleetStatus = {
  @ocaml.doc("<p>Provides historical timestamps for the instance fleet, including the time of creation,
         the time it became ready to run jobs, and the time of termination.</p>")
  @as("Timeline")
  timeline: option<instanceFleetTimeline>,
  @ocaml.doc("<p>Provides status change reason details for the instance fleet.</p>")
  @as("StateChangeReason")
  stateChangeReason: option<instanceFleetStateChangeReason>,
  @ocaml.doc("<p>A code representing the instance fleet status.</p>
         <ul>
            <li>
               <p>
                  <code>PROVISIONING</code>—The instance fleet is provisioning EC2 resources and is
               not yet ready to run jobs.</p>
            </li>
            <li>
               <p>
                  <code>BOOTSTRAPPING</code>—EC2 instances and other resources have been provisioned
               and the bootstrap actions specified for the instances are underway.</p>
            </li>
            <li>
               <p>
                  <code>RUNNING</code>—EC2 instances and other resources are running. They are
               either executing jobs or waiting to execute jobs.</p>
            </li>
            <li>
               <p>
                  <code>RESIZING</code>—A resize operation is underway. EC2 instances are either
               being added or removed.</p>
            </li>
            <li>
               <p>
                  <code>SUSPENDED</code>—A resize operation could not complete. Existing EC2
               instances are running, but instances can't be added or removed.</p>
            </li>
            <li>
               <p>
                  <code>TERMINATING</code>—The instance fleet is terminating EC2 instances.</p>
            </li>
            <li>
               <p>
                  <code>TERMINATED</code>—The instance fleet is no longer active, and all EC2
               instances have been terminated.</p>
            </li>
         </ul>")
  @as("State")
  state: option<instanceFleetState>,
}
@ocaml.doc("<p>A cluster step consisting of a JAR file whose main function will be executed. The main
         function submits a job for Hadoop to execute and waits for the job to finish or
         fail.</p>")
type hadoopStepConfig = {
  @ocaml.doc("<p>The list of command line arguments to pass to the JAR file's main function for
         execution.</p>")
  @as("Args")
  args: option<stringList>,
  @ocaml.doc("<p>The name of the main class in the specified Java file. If not specified, the JAR file
         should specify a main class in its manifest file.</p>")
  @as("MainClass")
  mainClass: option<string_>,
  @ocaml.doc("<p>The list of Java properties that are set when the step runs. You can use these
         properties to pass key-value pairs to your main function.</p>")
  @as("Properties")
  properties: option<stringMap>,
  @ocaml.doc("<p>The path to the JAR file that runs during the step.</p>") @as("Jar")
  jar: option<string_>,
}
@ocaml.doc("<p>Provides information about the EC2 instances in a cluster grouped by category. For
         example, key name, subnet ID, IAM instance profile, and so on.</p>")
type ec2InstanceAttributes = {
  @ocaml.doc(
    "<p>A list of additional Amazon EC2 security group IDs for the core and task nodes.</p>"
  )
  @as("AdditionalSlaveSecurityGroups")
  additionalSlaveSecurityGroups: option<stringList>,
  @ocaml.doc("<p>A list of additional Amazon EC2 security group IDs for the master node.</p>")
  @as("AdditionalMasterSecurityGroups")
  additionalMasterSecurityGroups: option<stringList>,
  @ocaml.doc("<p>The identifier of the Amazon EC2 security group for the Amazon EMR service to access
         clusters in VPC private subnets.</p>")
  @as("ServiceAccessSecurityGroup")
  serviceAccessSecurityGroup: option<string_>,
  @ocaml.doc("<p>The identifier of the Amazon EC2 security group for the core and task nodes.</p>")
  @as("EmrManagedSlaveSecurityGroup")
  emrManagedSlaveSecurityGroup: option<string_>,
  @ocaml.doc("<p>The identifier of the Amazon EC2 security group for the master node.</p>")
  @as("EmrManagedMasterSecurityGroup")
  emrManagedMasterSecurityGroup: option<string_>,
  @ocaml.doc("<p>The IAM role that was specified when the cluster was launched. The EC2 instances of the
         cluster assume this role.</p>")
  @as("IamInstanceProfile")
  iamInstanceProfile: option<string_>,
  @ocaml.doc("<p>Applies to clusters configured with the instance fleets option. Specifies one or more
         Availability Zones in which to launch EC2 cluster instances when the EC2-Classic network
         configuration is supported. Amazon EMR chooses the Availability Zone with the best fit from
         among the list of <code>RequestedEc2AvailabilityZones</code>, and then launches all cluster
         instances within that Availability Zone. If you do not specify this value, Amazon EMR
         chooses the Availability Zone for you. <code>RequestedEc2SubnetIDs</code> and
            <code>RequestedEc2AvailabilityZones</code> cannot be specified together.</p>")
  @as("RequestedEc2AvailabilityZones")
  requestedEc2AvailabilityZones: option<xmlStringMaxLen256List>,
  @ocaml.doc("<p>The Availability Zone in which the cluster will run. </p>")
  @as("Ec2AvailabilityZone")
  ec2AvailabilityZone: option<string_>,
  @ocaml.doc("<p>Applies to clusters configured with the instance fleets option. Specifies the unique
         identifier of one or more Amazon EC2 subnets in which to launch EC2 cluster instances.
         Subnets must exist within the same VPC. Amazon EMR chooses the EC2 subnet with the best fit
         from among the list of <code>RequestedEc2SubnetIds</code>, and then launches all cluster
         instances within that Subnet. If this value is not specified, and the account and Region
         support EC2-Classic networks, the cluster launches instances in the EC2-Classic network and
         uses <code>RequestedEc2AvailabilityZones</code> instead of this setting. If EC2-Classic is
         not supported, and no Subnet is specified, Amazon EMR chooses the subnet for you.
            <code>RequestedEc2SubnetIDs</code> and <code>RequestedEc2AvailabilityZones</code> cannot
         be specified together.</p>")
  @as("RequestedEc2SubnetIds")
  requestedEc2SubnetIds: option<xmlStringMaxLen256List>,
  @ocaml.doc("<p>Set this parameter to the identifier of the Amazon VPC subnet where you want the cluster
         to launch. If you do not specify this value, and your account supports EC2-Classic, the
         cluster launches in EC2-Classic.</p>")
  @as("Ec2SubnetId")
  ec2SubnetId: option<string_>,
  @ocaml.doc("<p>The name of the Amazon EC2 key pair to use when connecting with SSH into the master node
         as a user named \"hadoop\".</p>")
  @as("Ec2KeyName")
  ec2KeyName: option<string_>,
}
type ebsVolumeList = array<ebsVolume>
@ocaml.doc("<p>Configuration of requested EBS block device associated with the instance group with
         count of volumes that will be associated to every instance.</p>")
type ebsBlockDeviceConfig = {
  @ocaml.doc("<p>Number of EBS volumes with a specific volume configuration that will be associated with
         every instance in the instance group</p>")
  @as("VolumesPerInstance")
  volumesPerInstance: option<integer_>,
  @ocaml.doc("<p>EBS volume specifications such as volume type, IOPS, and size (GiB) that will be
         requested for the EBS volume attached to an EC2 instance in the cluster.</p>")
  @as("VolumeSpecification")
  volumeSpecification: volumeSpecification,
}
@ocaml.doc("<p>Configuration of requested EBS block device associated with the instance group.</p>")
type ebsBlockDevice = {
  @ocaml.doc("<p>The device name that is exposed to the instance, such as /dev/sdh.</p>")
  @as("Device")
  device: option<string_>,
  @ocaml.doc("<p>EBS volume specifications such as volume type, IOPS, and size (GiB) that will be
         requested for the EBS volume attached to an EC2 instance in the cluster.</p>")
  @as("VolumeSpecification")
  volumeSpecification: option<volumeSpecification>,
}
@ocaml.doc("<p>An entity describing an executable that runs on a cluster.</p>")
type command = {
  @ocaml.doc("<p>Arguments for Amazon EMR to pass to the command for execution.</p>") @as("Args")
  args: option<stringList>,
  @ocaml.doc("<p>The Amazon S3 location of the command script.</p>") @as("ScriptPath")
  scriptPath: option<string_>,
  @ocaml.doc("<p>The name of the command.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>The detailed status of the cluster.</p>")
type clusterStatus = {
  @ocaml.doc("<p>A timeline that represents the status of a cluster over the lifetime of the
         cluster.</p>")
  @as("Timeline")
  timeline: option<clusterTimeline>,
  @ocaml.doc("<p>The reason for the cluster status change.</p>") @as("StateChangeReason")
  stateChangeReason: option<clusterStateChangeReason>,
  @ocaml.doc("<p>The current state of the cluster.</p>") @as("State") state: option<clusterState>,
}
type cancelStepsInfoList = array<cancelStepsInfo>
@ocaml.doc("<p>The status of an automatic scaling policy.
         </p>")
type autoScalingPolicyStatus = {
  @ocaml.doc("<p>The reason for a change in status.</p>") @as("StateChangeReason")
  stateChangeReason: option<autoScalingPolicyStateChangeReason>,
  @ocaml.doc("<p>Indicates the status of the automatic scaling policy.</p>") @as("State")
  state: option<autoScalingPolicyState>,
}
@ocaml.doc("<p>With Amazon EMR release version 4.0 and later, the only accepted parameter is the
         application name. To pass arguments to applications, you use configuration classifications
         specified using configuration JSON objects. For more information, see <a href=\"https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html\">Configuring
            Applications</a>.</p>
         <p>With earlier Amazon EMR releases, the application is any Amazon or third-party software
         that you can add to the cluster. This structure contains a list of strings that indicates
         the software to use with the cluster and accepts a user argument list. Amazon EMR accepts
         and forwards the argument list to the corresponding installation script as bootstrap action
         argument.</p>")
type application = {
  @ocaml.doc("<p>This option is for advanced users only. This is meta information about third-party
         applications that third-party vendors use for testing purposes.</p>")
  @as("AdditionalInfo")
  additionalInfo: option<stringMap>,
  @ocaml.doc("<p>Arguments for Amazon EMR to pass to the application.</p>") @as("Args")
  args: option<stringList>,
  @ocaml.doc("<p>The version of the application.</p>") @as("Version") version: option<string_>,
  @ocaml.doc("<p>The name of the application.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>Details for an Amazon EMR Studio including ID, creation time, name, and so on.</p>")
type studio = {
  @ocaml.doc("<p>A list of tags associated with the Amazon EMR Studio.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>The Amazon S3 location to back up Amazon EMR Studio Workspaces and notebook
         files.</p>")
  @as("DefaultS3Location")
  defaultS3Location: option<xmlString>,
  @ocaml.doc("<p>The time the Amazon EMR Studio was created.</p>") @as("CreationTime")
  creationTime: option<date>,
  @ocaml.doc("<p>The unique access URL of the Amazon EMR Studio.</p>") @as("Url")
  url: option<xmlString>,
  @ocaml.doc("<p>The ID of the Engine security group associated with the Amazon EMR Studio. The Engine
         security group allows inbound network traffic from resources in the Workspace security
         group.</p>")
  @as("EngineSecurityGroupId")
  engineSecurityGroupId: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The ID of the Workspace security group associated with the Amazon EMR Studio. The
         Workspace security group allows outbound network traffic to resources in the Engine
         security group and to the internet.</p>")
  @as("WorkspaceSecurityGroupId")
  workspaceSecurityGroupId: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The name of the IAM role assumed by users logged in to the Amazon EMR Studio.</p>")
  @as("UserRole")
  userRole: option<xmlString>,
  @ocaml.doc("<p>The name of the IAM role assumed by the Amazon EMR Studio.</p>") @as("ServiceRole")
  serviceRole: option<xmlString>,
  @ocaml.doc("<p>The list of IDs of the subnets associated with the Amazon EMR Studio.</p>")
  @as("SubnetIds")
  subnetIds: option<subnetIdList>,
  @ocaml.doc("<p>The ID of the VPC associated with the Amazon EMR Studio.</p>") @as("VpcId")
  vpcId: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>Specifies whether the Amazon EMR Studio authenticates users using single sign-on (SSO) or
         IAM.</p>")
  @as("AuthMode")
  authMode: option<authMode>,
  @ocaml.doc("<p>The detailed description of the Amazon EMR Studio.</p>") @as("Description")
  description: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The name of the Amazon EMR Studio.</p>") @as("Name")
  name: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon EMR Studio.</p>") @as("StudioArn")
  studioArn: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The ID of the Amazon EMR Studio.</p>") @as("StudioId")
  studioId: option<xmlStringMaxLen256>,
}
@ocaml.doc("<p>The summary of the cluster step.</p>")
type stepSummary = {
  @ocaml.doc("<p>The current execution status details of the cluster step.</p>") @as("Status")
  status: option<stepStatus>,
  @ocaml.doc("<p>The action to take when the cluster step fails. Possible values are TERMINATE_CLUSTER,
         CANCEL_AND_WAIT, and CONTINUE. TERMINATE_JOB_FLOW is available for backward compatibility.
         We recommend using TERMINATE_CLUSTER instead.</p>")
  @as("ActionOnFailure")
  actionOnFailure: option<actionOnFailure>,
  @ocaml.doc("<p>The Hadoop job configuration of the cluster step.</p>") @as("Config")
  config: option<hadoopStepConfig>,
  @ocaml.doc("<p>The name of the cluster step.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The identifier of the cluster step.</p>") @as("Id") id: option<stepId>,
}
@ocaml.doc("<p>This represents a step in a cluster.</p>")
type step = {
  @ocaml.doc("<p>The current execution status details of the cluster step.</p>") @as("Status")
  status: option<stepStatus>,
  @ocaml.doc("<p>The action to take when the cluster step fails. Possible values are TERMINATE_CLUSTER,
         CANCEL_AND_WAIT, and CONTINUE. TERMINATE_JOB_FLOW is provided for backward compatibility.
         We recommend using TERMINATE_CLUSTER instead.</p>")
  @as("ActionOnFailure")
  actionOnFailure: option<actionOnFailure>,
  @ocaml.doc("<p>The Hadoop job configuration of the cluster step.</p>") @as("Config")
  config: option<hadoopStepConfig>,
  @ocaml.doc("<p>The name of the cluster step.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The identifier of the cluster step.</p>") @as("Id") id: option<stepId>,
}
@ocaml.doc("<p>Policy for customizing shrink operations. Allows configuration of decommissioning
         timeout and targeted instance shrinking.</p>")
type shrinkPolicy = {
  @ocaml.doc("<p>Custom policy for requesting termination protection or termination of specific instances
         when shrinking an instance group.</p>")
  @as("InstanceResizePolicy")
  instanceResizePolicy: option<instanceResizePolicy>,
  @ocaml.doc("<p>The desired timeout for decommissioning an instance. Overrides the default YARN
         decommissioning timeout.</p>")
  @as("DecommissionTimeout")
  decommissionTimeout: option<integer_>,
}
@ocaml.doc("<p>A notebook execution. An execution is a specific instance that an EMR Notebook is run
         using the <code>StartNotebookExecution</code> action.</p>")
type notebookExecution = {
  @ocaml.doc("<p>A list of tags associated with a notebook execution. Tags are user-defined key-value
         pairs that consist of a required key string with a maximum of 128 characters and an
         optional value string with a maximum of 256 characters.</p>")
  @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>The unique identifier of the EC2 security group associated with the EMR Notebook
         instance. For more information see <a href=\"https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-managed-notebooks-security-groups.html\">Specifying
            EC2 Security Groups for EMR Notebooks</a> in the <i>EMR Management
            Guide</i>.</p>")
  @as("NotebookInstanceSecurityGroupId")
  notebookInstanceSecurityGroupId: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The reason for the latest status change of the notebook execution.</p>")
  @as("LastStateChangeReason")
  lastStateChangeReason: option<xmlString>,
  @ocaml.doc("<p>The location of the notebook execution's output file in Amazon S3.</p>")
  @as("OutputNotebookURI")
  outputNotebookURI: option<xmlString>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the notebook execution.</p>") @as("Arn")
  arn: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The timestamp when notebook execution ended.</p>") @as("EndTime")
  endTime: option<date>,
  @ocaml.doc("<p>The timestamp when notebook execution started.</p>") @as("StartTime")
  startTime: option<date>,
  @ocaml.doc("<p>The status of the notebook execution.</p>
         <ul>
            <li>
               <p>
                  <code>START_PENDING</code> indicates that the cluster has received the execution
               request but execution has not begun.</p>
            </li>
            <li>
               <p>
                  <code>STARTING</code> indicates that the execution is starting on the
               cluster.</p>
            </li>
            <li>
               <p>
                  <code>RUNNING</code> indicates that the execution is being processed by the
               cluster.</p>
            </li>
            <li>
               <p>
                  <code>FINISHING</code> indicates that execution processing is in the final
               stages.</p>
            </li>
            <li>
               <p>
                  <code>FINISHED</code> indicates that the execution has completed without
               error.</p>
            </li>
            <li>
               <p>
                  <code>FAILING</code> indicates that the execution is failing and will not finish
               successfully.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> indicates that the execution failed.</p>
            </li>
            <li>
               <p>
                  <code>STOP_PENDING</code> indicates that the cluster has received a
                  <code>StopNotebookExecution</code> request and the stop is pending.</p>
            </li>
            <li>
               <p>
                  <code>STOPPING</code> indicates that the cluster is in the process of stopping the
               execution as a result of a <code>StopNotebookExecution</code> request.</p>
            </li>
            <li>
               <p>
                  <code>STOPPED</code> indicates that the execution stopped because of a
                  <code>StopNotebookExecution</code> request.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<notebookExecutionStatus>,
  @ocaml.doc("<p>Input parameters in JSON format passed to the EMR Notebook at runtime for
         execution.</p>")
  @as("NotebookParams")
  notebookParams: option<xmlString>,
  @ocaml.doc("<p>A name for the notebook execution.</p>") @as("NotebookExecutionName")
  notebookExecutionName: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The execution engine, such as an EMR cluster, used to run the EMR notebook and perform
         the notebook execution.</p>")
  @as("ExecutionEngine")
  executionEngine: option<executionEngineConfig>,
  @ocaml.doc("<p>The unique identifier of the EMR Notebook that is used for the notebook
         execution.</p>")
  @as("EditorId")
  editorId: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The unique identifier of a notebook execution.</p>") @as("NotebookExecutionId")
  notebookExecutionId: option<xmlStringMaxLen256>,
}
type newSupportedProductsList = array<supportedProductConfig>
@ocaml.doc("<p>Specify the type of Amazon EC2 instances that the cluster (job flow) runs on.</p>")
type jobFlowInstancesDetail = {
  @ocaml.doc("<p>The Hadoop version for the cluster.</p>") @as("HadoopVersion")
  hadoopVersion: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>Specifies whether the Amazon EC2 instances in the cluster are protected from termination
         by API calls, user intervention, or in the event of a job-flow error.</p>")
  @as("TerminationProtected")
  terminationProtected: option<boolean_>,
  @ocaml.doc(
    "<p>Specifies whether the cluster should remain available after completing all steps.</p>"
  )
  @as("KeepJobFlowAliveWhenNoSteps")
  keepJobFlowAliveWhenNoSteps: option<boolean_>,
  @ocaml.doc("<p>The Amazon EC2 Availability Zone for the cluster.</p>") @as("Placement")
  placement: option<placementType>,
  @ocaml.doc("<p>For clusters launched within Amazon Virtual Private Cloud, this is the identifier of the
         subnet where the cluster was launched.</p>")
  @as("Ec2SubnetId")
  ec2SubnetId: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The name of an Amazon EC2 key pair that can be used to connect to the master node using
         SSH.</p>")
  @as("Ec2KeyName")
  ec2KeyName: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>An approximation of the cost of the cluster, represented in m1.small/hours. This value
         is increased one time for every hour that an m1.small instance runs. Larger instances are
         weighted more heavily, so an Amazon EC2 instance that is roughly four times more expensive
         would result in the normalized instance hours being increased incrementally four times.
         This result is only an approximation and does not reflect the actual billing rate.</p>")
  @as("NormalizedInstanceHours")
  normalizedInstanceHours: option<integer_>,
  @ocaml.doc("<p>Details about the instance groups in a cluster.</p>") @as("InstanceGroups")
  instanceGroups: option<instanceGroupDetailList>,
  @ocaml.doc("<p>The number of Amazon EC2 instances in the cluster. If the value is 1, the same instance
         serves as both the master and core and task node. If the value is greater than 1, one
         instance is the master node and all others are core and task nodes.</p>")
  @as("InstanceCount")
  instanceCount: integer_,
  @ocaml.doc("<p>The Amazon EC2 core and task node instance type.</p>") @as("SlaveInstanceType")
  slaveInstanceType: instanceType,
  @ocaml.doc("<p>The Amazon EC2 instance identifier of the master node.</p>")
  @as("MasterInstanceId")
  masterInstanceId: option<xmlString>,
  @ocaml.doc("<p>The DNS name of the master node. If the cluster is on a private subnet, this is the
         private DNS name. On a public subnet, this is the public DNS name.</p>")
  @as("MasterPublicDnsName")
  masterPublicDnsName: option<xmlString>,
  @ocaml.doc("<p>The Amazon EC2 master node instance type.</p>") @as("MasterInstanceType")
  masterInstanceType: instanceType,
}
@ocaml.doc("<p>The launch specification for Spot Instances in the fleet, which determines the defined
         duration, provisioning timeout behavior, and allocation strategy.</p>
         <note>
            <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and
            later, excluding 5.0.x versions. On-Demand and Spot Instance allocation strategies are
            available in Amazon EMR version 5.12.1 and later.</p>
         </note>")
type instanceFleetProvisioningSpecifications = {
  @ocaml.doc("<p> The launch specification for On-Demand Instances in the instance fleet, which
         determines the allocation strategy. </p>
         <note>
            <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and
            later, excluding 5.0.x versions. On-Demand Instances allocation strategy is available in
            Amazon EMR version 5.12.1 and later.</p>
         </note>")
  @as("OnDemandSpecification")
  onDemandSpecification: option<onDemandProvisioningSpecification>,
  @ocaml.doc("<p>The launch specification for Spot Instances in the fleet, which determines the defined
         duration, provisioning timeout behavior, and allocation strategy.</p>")
  @as("SpotSpecification")
  spotSpecification: option<spotProvisioningSpecification>,
}
@ocaml.doc("<p>Represents an EC2 instance provisioned as part of cluster.</p>")
type instance = {
  @ocaml.doc("<p>The list of EBS volumes that are attached to this instance.</p>") @as("EbsVolumes")
  ebsVolumes: option<ebsVolumeList>,
  @ocaml.doc("<p>The EC2 instance type, for example <code>m3.xlarge</code>.</p>")
  @as("InstanceType")
  instanceType: option<instanceType>,
  @ocaml.doc("<p>The instance purchasing option. Valid values are <code>ON_DEMAND</code> or
            <code>SPOT</code>. </p>")
  @as("Market")
  market: option<marketType>,
  @ocaml.doc("<p>The unique identifier of the instance fleet to which an EC2 instance belongs.</p>")
  @as("InstanceFleetId")
  instanceFleetId: option<instanceFleetId>,
  @ocaml.doc("<p>The identifier of the instance group to which this instance belongs.</p>")
  @as("InstanceGroupId")
  instanceGroupId: option<string_>,
  @ocaml.doc("<p>The current status of the instance.</p>") @as("Status")
  status: option<instanceStatus>,
  @ocaml.doc("<p>The private IP address of the instance.</p>") @as("PrivateIpAddress")
  privateIpAddress: option<string_>,
  @ocaml.doc("<p>The private DNS name of the instance.</p>") @as("PrivateDnsName")
  privateDnsName: option<string_>,
  @ocaml.doc("<p>The public IP address of the instance.</p>") @as("PublicIpAddress")
  publicIpAddress: option<string_>,
  @ocaml.doc("<p>The public DNS name of the instance.</p>") @as("PublicDnsName")
  publicDnsName: option<string_>,
  @ocaml.doc("<p>The unique identifier of the instance in Amazon EC2.</p>") @as("Ec2InstanceId")
  ec2InstanceId: option<instanceId>,
  @ocaml.doc("<p>The unique identifier for the instance in Amazon EMR.</p>") @as("Id")
  id: option<instanceId>,
}
@ocaml.doc("<p>A job flow step consisting of a JAR file whose main function will be executed. The main
         function submits a job for Hadoop to execute and waits for the job to finish or
         fail.</p>")
type hadoopJarStepConfig = {
  @ocaml.doc("<p>A list of command line arguments passed to the JAR file's main function when
         executed.</p>")
  @as("Args")
  args: option<xmlStringList>,
  @ocaml.doc("<p>The name of the main class in the specified Java file. If not specified, the JAR file
         should specify a Main-Class in its manifest file.</p>")
  @as("MainClass")
  mainClass: option<xmlString>,
  @ocaml.doc("<p>A path to a JAR file run during the step.</p>") @as("Jar") jar: xmlString,
  @ocaml.doc("<p>A list of Java properties that are set when the step runs. You can use these properties
         to pass key-value pairs to your main function.</p>")
  @as("Properties")
  properties: option<keyValueList>,
}
type ebsBlockDeviceList = array<ebsBlockDevice>
type ebsBlockDeviceConfigList = array<ebsBlockDeviceConfig>
type commandList = array<command>
@ocaml.doc("<p>The summary description of the cluster.</p>")
type clusterSummary = {
  @ocaml.doc(
    "<p> The Amazon Resource Name (ARN) of the Outpost where the cluster is launched. </p>"
  )
  @as("OutpostArn")
  outpostArn: option<optionalArnType>,
  @ocaml.doc("<p>The Amazon Resource Name of the cluster.</p>") @as("ClusterArn")
  clusterArn: option<arnType>,
  @ocaml.doc("<p>An approximation of the cost of the cluster, represented in m1.small/hours. This value
         is incremented one time for every hour an m1.small instance runs. Larger instances are
         weighted more, so an EC2 instance that is roughly four times more expensive would result in
         the normalized instance hours being incremented by four. This result is only an
         approximation and does not reflect the actual billing rate.</p>")
  @as("NormalizedInstanceHours")
  normalizedInstanceHours: option<integer_>,
  @ocaml.doc("<p>The details about the current status of the cluster.</p>") @as("Status")
  status: option<clusterStatus>,
  @ocaml.doc("<p>The name of the cluster.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The unique identifier for the cluster.</p>") @as("Id") id: option<clusterId>,
}
@ocaml.doc("<p>The definition of a CloudWatch metric alarm, which determines when an automatic scaling
         activity is triggered. When the defined alarm conditions are satisfied, scaling activity
         begins.</p>")
type cloudWatchAlarmDefinition = {
  @ocaml.doc("<p>A CloudWatch metric dimension.</p>") @as("Dimensions")
  dimensions: option<metricDimensionList>,
  @ocaml.doc("<p>The unit of measure associated with the CloudWatch metric being watched. The value
         specified for <code>Unit</code> must correspond to the units specified in the CloudWatch
         metric.</p>")
  @as("Unit")
  unit_: option<unit_>,
  @ocaml.doc("<p>The value against which the specified statistic is compared.</p>") @as("Threshold")
  threshold: nonNegativeDouble,
  @ocaml.doc("<p>The statistic to apply to the metric associated with the alarm. The default is
            <code>AVERAGE</code>.</p>")
  @as("Statistic")
  statistic: option<statistic>,
  @ocaml.doc("<p>The period, in seconds, over which the statistic is applied. EMR CloudWatch metrics are
         emitted every five minutes (300 seconds), so if an EMR CloudWatch metric is specified,
         specify <code>300</code>.</p>")
  @as("Period")
  period: integer_,
  @ocaml.doc("<p>The namespace for the CloudWatch metric. The default is
            <code>AWS/ElasticMapReduce</code>.</p>")
  @as("Namespace")
  namespace: option<string_>,
  @ocaml.doc("<p>The name of the CloudWatch metric that is watched to determine an alarm
         condition.</p>")
  @as("MetricName")
  metricName: string_,
  @ocaml.doc("<p>The number of periods, in five-minute increments, during which the alarm condition must
         exist before the alarm triggers automatic scaling activity. The default value is
            <code>1</code>.</p>")
  @as("EvaluationPeriods")
  evaluationPeriods: option<integer_>,
  @ocaml.doc("<p>Determines how the metric specified by <code>MetricName</code> is compared to the value
         specified by <code>Threshold</code>.</p>")
  @as("ComparisonOperator")
  comparisonOperator: comparisonOperator,
}
@ocaml.doc("<p>Configuration of a bootstrap action.</p>")
type bootstrapActionConfig = {
  @ocaml.doc("<p>The script run by the bootstrap action.</p>") @as("ScriptBootstrapAction")
  scriptBootstrapAction: scriptBootstrapActionConfig,
  @ocaml.doc("<p>The name of the bootstrap action.</p>") @as("Name") name: xmlStringMaxLen256,
}
type applicationList = array<application>
type stepSummaryList = array<stepSummary>
@ocaml.doc("<p>Specification of a cluster (job flow) step.</p>")
type stepConfig = {
  @ocaml.doc("<p>The JAR file used for the step.</p>") @as("HadoopJarStep")
  hadoopJarStep: hadoopJarStepConfig,
  @ocaml.doc("<p>The action to take when the cluster step fails. Possible values are TERMINATE_CLUSTER,
         CANCEL_AND_WAIT, and CONTINUE. TERMINATE_JOB_FLOW is provided for backward compatibility.
         We recommend using TERMINATE_CLUSTER instead.</p>")
  @as("ActionOnFailure")
  actionOnFailure: option<actionOnFailure>,
  @ocaml.doc("<p>The name of the step.</p>") @as("Name") name: xmlStringMaxLen256,
}
@ocaml.doc("<p>The conditions that trigger an automatic scaling activity.</p>")
type scalingTrigger = {
  @ocaml.doc("<p>The definition of a CloudWatch metric alarm. When the defined alarm conditions are met
         along with other trigger parameters, scaling activity begins.</p>")
  @as("CloudWatchAlarmDefinition")
  cloudWatchAlarmDefinition: cloudWatchAlarmDefinition,
}
type instanceList = array<instance>
@ocaml.doc("<p>The Amazon EBS configuration of a cluster instance.</p>")
type ebsConfiguration = {
  @ocaml.doc("<p>Indicates whether an Amazon EBS volume is EBS-optimized.</p>") @as("EbsOptimized")
  ebsOptimized: option<booleanObject>,
  @ocaml.doc("<p>An array of Amazon EBS volume specifications attached to a cluster instance.</p>")
  @as("EbsBlockDeviceConfigs")
  ebsBlockDeviceConfigs: option<ebsBlockDeviceConfigList>,
}
type clusterSummaryList = array<clusterSummary>
@ocaml.doc("<p>Reports the configuration of a bootstrap action in a cluster (job flow).</p>")
type bootstrapActionDetail = {
  @ocaml.doc("<p>A description of the bootstrap action.</p>") @as("BootstrapActionConfig")
  bootstrapActionConfig: option<bootstrapActionConfig>,
}
type bootstrapActionConfigList = array<bootstrapActionConfig>
@ocaml.doc("<p>Combines the execution state and configuration of a step.</p>")
type stepDetail = {
  @ocaml.doc("<p>The description of the step status.</p>") @as("ExecutionStatusDetail")
  executionStatusDetail: stepExecutionStatusDetail,
  @ocaml.doc("<p>The step configuration.</p>") @as("StepConfig") stepConfig: stepConfig,
}
type stepConfigList = array<stepConfig>
@ocaml.doc("<p>A scale-in or scale-out rule that defines scaling activity, including the CloudWatch
         metric alarm that triggers activity, how EC2 instances are added or removed, and the
         periodicity of adjustments. The automatic scaling policy for an instance group can comprise
         one or more automatic scaling rules.</p>")
type scalingRule = {
  @ocaml.doc("<p>The CloudWatch alarm definition that determines when automatic scaling activity is
         triggered.</p>")
  @as("Trigger")
  trigger: scalingTrigger,
  @ocaml.doc("<p>The conditions that trigger an automatic scaling activity.</p>") @as("Action")
  action: scalingAction,
  @ocaml.doc("<p>A friendly, more verbose description of the automatic scaling rule.</p>")
  @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The name used to identify an automatic scaling rule. Rule names must be unique within a
         scaling policy.</p>")
  @as("Name")
  name: string_,
}
type bootstrapActionDetailList = array<bootstrapActionDetail>
type stepDetailList = array<stepDetail>
type scalingRuleList = array<scalingRule>
@ocaml.doc("<p>A description of a cluster (job flow).</p>")
type jobFlowDetail = {
  @ocaml.doc("<p>The way that individual Amazon EC2 instances terminate when an automatic scale-in
         activity occurs or an instance group is resized. <code>TERMINATE_AT_INSTANCE_HOUR</code>
         indicates that Amazon EMR terminates nodes at the instance-hour boundary, regardless of
         when the request to terminate the instance was submitted. This option is only available
         with Amazon EMR 5.1.0 and later and is the default for clusters created using that version.
            <code>TERMINATE_AT_TASK_COMPLETION</code> indicates that Amazon EMR adds nodes to a deny
         list and drains tasks from nodes before terminating the Amazon EC2 instances, regardless of
         the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes
         first and blocks instance termination if it could lead to HDFS corruption.
            <code>TERMINATE_AT_TASK_COMPLETION</code> available only in Amazon EMR version 4.1.0 and
         later, and is the default for versions of Amazon EMR earlier than 5.1.0.</p>")
  @as("ScaleDownBehavior")
  scaleDownBehavior: option<scaleDownBehavior>,
  @ocaml.doc("<p>An IAM role for automatic scaling policies. The default role is
            <code>EMR_AutoScaling_DefaultRole</code>. The IAM role provides a way for the automatic
         scaling feature to get the required permissions it needs to launch and terminate EC2
         instances in an instance group.</p>")
  @as("AutoScalingRole")
  autoScalingRole: option<xmlString>,
  @ocaml.doc("<p>The IAM role that is assumed by the Amazon EMR service to access AWS resources on your
         behalf.</p>")
  @as("ServiceRole")
  serviceRole: option<xmlString>,
  @ocaml.doc("<p>The IAM role that was specified when the job flow was launched. The EC2 instances of the
         job flow assume this role.</p>")
  @as("JobFlowRole")
  jobFlowRole: option<xmlString>,
  @ocaml.doc("<p>Indicates whether the cluster is visible to all IAM users of the AWS account associated
         with the cluster. The default value, <code>true</code>, indicates that all IAM users in the
         AWS account can perform cluster actions if they have the proper IAM policy permissions. If
         this value is <code>false</code>, only the IAM user that created the cluster can perform
         actions. This value can be changed on a running cluster by using the <a>SetVisibleToAllUsers</a> action. You can override the default value of
            <code>true</code> when you create a cluster by using the <code>VisibleToAllUsers</code>
         parameter of the <code>RunJobFlow</code> action.</p>")
  @as("VisibleToAllUsers")
  visibleToAllUsers: option<boolean_>,
  @ocaml.doc("<p>A list of strings set by third-party software when the job flow is launched. If you are
         not using third-party software to manage the job flow, this value is empty.</p>")
  @as("SupportedProducts")
  supportedProducts: option<supportedProductsList>,
  @ocaml.doc("<p>A list of the bootstrap actions run by the job flow.</p>") @as("BootstrapActions")
  bootstrapActions: option<bootstrapActionDetailList>,
  @ocaml.doc("<p>A list of steps run by the job flow.</p>") @as("Steps")
  steps: option<stepDetailList>,
  @ocaml.doc("<p>Describes the Amazon EC2 instances of the job flow.</p>") @as("Instances")
  instances: jobFlowInstancesDetail,
  @ocaml.doc("<p>Describes the execution status of the job flow.</p>") @as("ExecutionStatusDetail")
  executionStatusDetail: jobFlowExecutionStatusDetail,
  @ocaml.doc("<p>Applies only to Amazon EMR AMI versions 3.x and 2.x. For Amazon EMR releases 4.0 and
         later, <code>ReleaseLabel</code> is used. To specify a custom AMI, use
            <code>CustomAmiID</code>.</p>")
  @as("AmiVersion")
  amiVersion: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The AWS KMS customer master key (CMK) used for encrypting log files. This attribute is
         only available with EMR version 5.30.0 and later, excluding EMR 6.0.0.</p>")
  @as("LogEncryptionKmsKeyId")
  logEncryptionKmsKeyId: option<xmlString>,
  @ocaml.doc("<p>The location in Amazon S3 where log files for the job are stored.</p>")
  @as("LogUri")
  logUri: option<xmlString>,
  @ocaml.doc("<p>The name of the job flow.</p>") @as("Name") name: xmlStringMaxLen256,
  @ocaml.doc("<p>The job flow identifier.</p>") @as("JobFlowId") jobFlowId: xmlStringMaxLen256,
}
@ocaml.doc("<p>An automatic scaling policy for a core instance group or task instance group in an
         Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically
         adds and terminates EC2 instances in response to the value of a CloudWatch metric. See
            <a>PutAutoScalingPolicy</a>.</p>")
type autoScalingPolicyDescription = {
  @ocaml.doc("<p>The scale-in and scale-out rules that comprise the automatic scaling policy.</p>")
  @as("Rules")
  rules: option<scalingRuleList>,
  @ocaml.doc("<p>The upper and lower EC2 instance limits for an automatic scaling policy. Automatic
         scaling activity will not cause an instance group to grow above or below these
         limits.</p>")
  @as("Constraints")
  constraints: option<scalingConstraints>,
  @ocaml.doc("<p>The status of an automatic scaling policy. </p>") @as("Status")
  status: option<autoScalingPolicyStatus>,
}
@ocaml.doc("<p>An automatic scaling policy for a core instance group or task instance group in an
         Amazon EMR cluster. An automatic scaling policy defines how an instance group dynamically
         adds and terminates EC2 instances in response to the value of a CloudWatch metric. See
            <a>PutAutoScalingPolicy</a>.</p>")
type autoScalingPolicy = {
  @ocaml.doc("<p>The scale-in and scale-out rules that comprise the automatic scaling policy.</p>")
  @as("Rules")
  rules: scalingRuleList,
  @ocaml.doc("<p>The upper and lower EC2 instance limits for an automatic scaling policy. Automatic
         scaling activity will not cause an instance group to grow above or below these
         limits.</p>")
  @as("Constraints")
  constraints: scalingConstraints,
}
type jobFlowDetailList = array<jobFlowDetail>
type rec configurationList = array<configuration>
and configuration = {
  @ocaml.doc("<p>A set of properties specified within a configuration classification.</p>")
  @as("Properties")
  properties: option<stringMap>,
  @ocaml.doc("<p>A list of additional configurations to apply within a configuration object.</p>")
  @as("Configurations")
  configurations: option<configurationList>,
  @ocaml.doc("<p>The classification within a configuration.</p>") @as("Classification")
  classification: option<string_>,
}
@ocaml.doc("<p>The configuration specification for each instance type in an instance fleet.</p>
         <note>
            <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and
            later, excluding 5.0.x versions.</p>
         </note>")
type instanceTypeSpecification = {
  @ocaml.doc("<p>Evaluates to <code>TRUE</code> when the specified <code>InstanceType</code> is
         EBS-optimized.</p>")
  @as("EbsOptimized")
  ebsOptimized: option<booleanObject>,
  @ocaml.doc("<p>The configuration of Amazon Elastic Block Storage (Amazon EBS) attached to each instance
         as defined by <code>InstanceType</code>.</p>")
  @as("EbsBlockDevices")
  ebsBlockDevices: option<ebsBlockDeviceList>,
  @ocaml.doc("<p>A configuration classification that applies when provisioning cluster instances, which
         can include configurations for applications and software bundled with Amazon EMR.</p>")
  @as("Configurations")
  configurations: option<configurationList>,
  @ocaml.doc("<p>The bid price, as a percentage of On-Demand price, for each EC2 Spot Instance as defined
         by <code>InstanceType</code>. Expressed as a number (for example, 20 specifies 20%).</p>")
  @as("BidPriceAsPercentageOfOnDemandPrice")
  bidPriceAsPercentageOfOnDemandPrice: option<nonNegativeDouble>,
  @ocaml.doc("<p>The bid price for each EC2 Spot Instance type as defined by <code>InstanceType</code>.
         Expressed in USD.</p>")
  @as("BidPrice")
  bidPrice: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The number of units that a provisioned instance of this type provides toward fulfilling
         the target capacities defined in <a>InstanceFleetConfig</a>. Capacity values
         represent performance characteristics such as vCPUs, memory, or I/O. If not specified, the
         default value is 1.</p>")
  @as("WeightedCapacity")
  weightedCapacity: option<wholeNumber>,
  @ocaml.doc("<p>The EC2 instance type, for example <code>m3.xlarge</code>.</p>")
  @as("InstanceType")
  instanceType: option<instanceType>,
}
@ocaml.doc("<p>An instance type configuration for each instance type in an instance fleet, which
         determines the EC2 instances Amazon EMR attempts to provision to fulfill On-Demand and Spot
         target capacities. There can be a maximum of five instance type configurations in a
         fleet.</p>
         <note>
            <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and
            later, excluding 5.0.x versions.</p>
         </note>")
type instanceTypeConfig = {
  @ocaml.doc("<p>A configuration classification that applies when provisioning cluster instances, which
         can include configurations for applications and software that run on the cluster.</p>")
  @as("Configurations")
  configurations: option<configurationList>,
  @ocaml.doc("<p>The configuration of Amazon Elastic Block Storage (Amazon EBS) attached to each instance
         as defined by <code>InstanceType</code>. </p>")
  @as("EbsConfiguration")
  ebsConfiguration: option<ebsConfiguration>,
  @ocaml.doc("<p>The bid price, as a percentage of On-Demand price, for each EC2 Spot Instance as defined
         by <code>InstanceType</code>. Expressed as a number (for example, 20 specifies 20%). If
         neither <code>BidPrice</code> nor <code>BidPriceAsPercentageOfOnDemandPrice</code> is
         provided, <code>BidPriceAsPercentageOfOnDemandPrice</code> defaults to 100%.</p>")
  @as("BidPriceAsPercentageOfOnDemandPrice")
  bidPriceAsPercentageOfOnDemandPrice: option<nonNegativeDouble>,
  @ocaml.doc("<p>The bid price for each EC2 Spot Instance type as defined by <code>InstanceType</code>.
         Expressed in USD. If neither <code>BidPrice</code> nor
            <code>BidPriceAsPercentageOfOnDemandPrice</code> is provided,
            <code>BidPriceAsPercentageOfOnDemandPrice</code> defaults to 100%. </p>")
  @as("BidPrice")
  bidPrice: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The number of units that a provisioned instance of this type provides toward fulfilling
         the target capacities defined in <a>InstanceFleetConfig</a>. This value is 1 for
         a master instance fleet, and must be 1 or greater for core and task instance fleets.
         Defaults to 1 if not specified. </p>")
  @as("WeightedCapacity")
  weightedCapacity: option<wholeNumber>,
  @ocaml.doc("<p>An EC2 instance type, such as <code>m3.xlarge</code>. </p>") @as("InstanceType")
  instanceType: instanceType,
}
@ocaml.doc("<p>Modify the size or configurations of an instance group.</p>")
type instanceGroupModifyConfig = {
  @ocaml.doc("<p>A list of new or modified configurations to apply for an instance group.</p>")
  @as("Configurations")
  configurations: option<configurationList>,
  @ocaml.doc("<p>Policy for customizing shrink operations.</p>") @as("ShrinkPolicy")
  shrinkPolicy: option<shrinkPolicy>,
  @ocaml.doc("<p>The EC2 InstanceIds to terminate. After you terminate the instances, the instance group
         will not return to its original requested size.</p>")
  @as("EC2InstanceIdsToTerminate")
  ec2InstanceIdsToTerminate: option<ec2InstanceIdsToTerminateList>,
  @ocaml.doc("<p>Target size for the instance group.</p>") @as("InstanceCount")
  instanceCount: option<integer_>,
  @ocaml.doc("<p>Unique ID of the instance group to modify.</p>") @as("InstanceGroupId")
  instanceGroupId: xmlStringMaxLen256,
}
@ocaml.doc("<p>Configuration defining a new instance group.</p>")
type instanceGroupConfig = {
  @ocaml.doc("<p>An automatic scaling policy for a core instance group or task instance group in an
         Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically
         adds and terminates EC2 instances in response to the value of a CloudWatch metric. See
            <a>PutAutoScalingPolicy</a>.</p>")
  @as("AutoScalingPolicy")
  autoScalingPolicy: option<autoScalingPolicy>,
  @ocaml.doc("<p>EBS configurations that will be attached to each EC2 instance in the instance
         group.</p>")
  @as("EbsConfiguration")
  ebsConfiguration: option<ebsConfiguration>,
  @ocaml.doc("<note>
            <p>Amazon EMR releases 4.x or later.</p>
         </note>
         <p>The list of configurations supplied for an EMR cluster instance group. You can specify a
         separate configuration for each instance group (master, core, and task).</p>")
  @as("Configurations")
  configurations: option<configurationList>,
  @ocaml.doc("<p>Target number of instances for the instance group.</p>") @as("InstanceCount")
  instanceCount: integer_,
  @ocaml.doc("<p>The EC2 instance type for all instances in the instance group.</p>")
  @as("InstanceType")
  instanceType: instanceType,
  @ocaml.doc(
    "<p>If specified, indicates that the instance group uses Spot Instances. This is the maximum price you are willing to pay for Spot Instances. Specify <code>OnDemandPrice</code> to set the amount equal to the On-Demand price, or specify an amount in USD.</p>"
  )
  @as("BidPrice")
  bidPrice: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The role of the instance group in the cluster.</p>") @as("InstanceRole")
  instanceRole: instanceRoleType,
  @ocaml.doc("<p>Market type of the EC2 instances used to create a cluster node.</p>") @as("Market")
  market: option<marketType>,
  @ocaml.doc("<p>Friendly name given to the instance group.</p>") @as("Name")
  name: option<xmlStringMaxLen256>,
}
@ocaml.doc("<p>This entity represents an instance group, which is a group of instances that have common
         purpose. For example, CORE instance group is used for HDFS.</p>")
type instanceGroup = {
  @ocaml.doc("<p>An automatic scaling policy for a core instance group or task instance group in an
         Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically
         adds and terminates EC2 instances in response to the value of a CloudWatch metric. See
         PutAutoScalingPolicy.</p>")
  @as("AutoScalingPolicy")
  autoScalingPolicy: option<autoScalingPolicyDescription>,
  @ocaml.doc("<p>Policy for customizing shrink operations.</p>") @as("ShrinkPolicy")
  shrinkPolicy: option<shrinkPolicy>,
  @ocaml.doc("<p>If the instance group is EBS-optimized. An Amazon EBS-optimized instance uses an
         optimized configuration stack and provides additional, dedicated capacity for Amazon EBS
         I/O.</p>")
  @as("EbsOptimized")
  ebsOptimized: option<booleanObject>,
  @ocaml.doc("<p>The EBS block devices that are mapped to this instance group.</p>")
  @as("EbsBlockDevices")
  ebsBlockDevices: option<ebsBlockDeviceList>,
  @ocaml.doc("<p>The version number of a configuration specification that was successfully applied for an
         instance group last time. </p>")
  @as("LastSuccessfullyAppliedConfigurationsVersion")
  lastSuccessfullyAppliedConfigurationsVersion: option<long>,
  @ocaml.doc("<p>A list of configurations that were successfully applied for an instance group last
         time.</p>")
  @as("LastSuccessfullyAppliedConfigurations")
  lastSuccessfullyAppliedConfigurations: option<configurationList>,
  @ocaml.doc("<p>The version number of the requested configuration specification for this instance
         group.</p>")
  @as("ConfigurationsVersion")
  configurationsVersion: option<long>,
  @ocaml.doc("<note>
            <p>Amazon EMR releases 4.x or later.</p>
         </note>
         <p>The list of configurations supplied for an EMR cluster instance group. You can specify a
         separate configuration for each instance group (master, core, and task).</p>")
  @as("Configurations")
  configurations: option<configurationList>,
  @ocaml.doc("<p>The current status of the instance group.</p>") @as("Status")
  status: option<instanceGroupStatus>,
  @ocaml.doc("<p>The number of instances currently running in this instance group.</p>")
  @as("RunningInstanceCount")
  runningInstanceCount: option<integer_>,
  @ocaml.doc("<p>The target number of instances for the instance group.</p>")
  @as("RequestedInstanceCount")
  requestedInstanceCount: option<integer_>,
  @ocaml.doc("<p>The EC2 instance type for all instances in the instance group.</p>")
  @as("InstanceType")
  instanceType: option<instanceType>,
  @ocaml.doc(
    "<p>If specified, indicates that the instance group uses Spot Instances. This is the maximum price you are willing to pay for Spot Instances. Specify <code>OnDemandPrice</code> to set the amount equal to the On-Demand price, or specify an amount in USD.</p>"
  )
  @as("BidPrice")
  bidPrice: option<string_>,
  @ocaml.doc("<p>The type of the instance group. Valid values are MASTER, CORE or TASK.</p>")
  @as("InstanceGroupType")
  instanceGroupType: option<instanceGroupType>,
  @ocaml.doc("<p>The marketplace to provision instances for this group. Valid values are ON_DEMAND or
         SPOT.</p>")
  @as("Market")
  market: option<marketType>,
  @ocaml.doc("<p>The name of the instance group.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The identifier of the instance group.</p>") @as("Id") id: option<instanceGroupId>,
}
@ocaml.doc("<p>The detailed description of the cluster.</p>")
type cluster = {
  @ocaml.doc("<p>Placement group configured for an Amazon EMR cluster.</p>") @as("PlacementGroups")
  placementGroups: option<placementGroupConfigList>,
  @ocaml.doc("<p>Specifies the number of steps that can be executed concurrently.</p>")
  @as("StepConcurrencyLevel")
  stepConcurrencyLevel: option<integer_>,
  @ocaml.doc(
    "<p> The Amazon Resource Name (ARN) of the Outpost where the cluster is launched. </p>"
  )
  @as("OutpostArn")
  outpostArn: option<optionalArnType>,
  @ocaml.doc("<p>The Amazon Resource Name of the cluster.</p>") @as("ClusterArn")
  clusterArn: option<arnType>,
  @ocaml.doc("<p>Attributes for Kerberos configuration when Kerberos authentication is enabled using a
         security configuration. For more information see <a href=\"https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html\">Use Kerberos Authentication</a>
         in the <i>Amazon EMR Management Guide</i>.</p>")
  @as("KerberosAttributes")
  kerberosAttributes: option<kerberosAttributes>,
  @ocaml.doc("<p>Applies only when <code>CustomAmiID</code> is used. Specifies the type of updates that
         are applied from the Amazon Linux AMI package repositories when an instance boots using the
         AMI.</p>")
  @as("RepoUpgradeOnBoot")
  repoUpgradeOnBoot: option<repoUpgradeOnBoot>,
  @ocaml.doc("<p>The size, in GiB, of the Amazon EBS root device volume of the Linux AMI that is used for
         each EC2 instance. Available in Amazon EMR version 4.x and later.</p>")
  @as("EbsRootVolumeSize")
  ebsRootVolumeSize: option<integer_>,
  @ocaml.doc("<p>Available only in Amazon EMR version 5.7.0 and later. The ID of a custom Amazon
         EBS-backed Linux AMI if the cluster uses a custom AMI.</p>")
  @as("CustomAmiId")
  customAmiId: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The way that individual Amazon EC2 instances terminate when an automatic scale-in
         activity occurs or an instance group is resized. <code>TERMINATE_AT_INSTANCE_HOUR</code>
         indicates that Amazon EMR terminates nodes at the instance-hour boundary, regardless of
         when the request to terminate the instance was submitted. This option is only available
         with Amazon EMR 5.1.0 and later and is the default for clusters created using that version.
            <code>TERMINATE_AT_TASK_COMPLETION</code> indicates that Amazon EMR adds nodes to a deny
         list and drains tasks from nodes before terminating the Amazon EC2 instances, regardless of
         the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes
         first and blocks instance termination if it could lead to HDFS corruption.
            <code>TERMINATE_AT_TASK_COMPLETION</code> is available only in Amazon EMR version 4.1.0
         and later, and is the default for versions of Amazon EMR earlier than 5.1.0.</p>")
  @as("ScaleDownBehavior")
  scaleDownBehavior: option<scaleDownBehavior>,
  @ocaml.doc("<p>An IAM role for automatic scaling policies. The default role is
            <code>EMR_AutoScaling_DefaultRole</code>. The IAM role provides permissions that the
         automatic scaling feature requires to launch and terminate EC2 instances in an instance
         group.</p>")
  @as("AutoScalingRole")
  autoScalingRole: option<xmlString>,
  @ocaml.doc("<p>The name of the security configuration applied to the cluster.</p>")
  @as("SecurityConfiguration")
  securityConfiguration: option<xmlString>,
  @ocaml.doc("<p>Applies only to Amazon EMR releases 4.x and later. The list of Configurations supplied
         to the EMR cluster.</p>")
  @as("Configurations")
  configurations: option<configurationList>,
  @ocaml.doc("<p>The DNS name of the master node. If the cluster is on a private subnet, this is the
         private DNS name. On a public subnet, this is the public DNS name.</p>")
  @as("MasterPublicDnsName")
  masterPublicDnsName: option<string_>,
  @ocaml.doc("<p>An approximation of the cost of the cluster, represented in m1.small/hours. This value
         is incremented one time for every hour an m1.small instance runs. Larger instances are
         weighted more, so an EC2 instance that is roughly four times more expensive would result in
         the normalized instance hours being incremented by four. This result is only an
         approximation and does not reflect the actual billing rate.</p>")
  @as("NormalizedInstanceHours")
  normalizedInstanceHours: option<integer_>,
  @ocaml.doc("<p>The IAM role that will be assumed by the Amazon EMR service to access AWS resources on
         your behalf.</p>")
  @as("ServiceRole")
  serviceRole: option<string_>,
  @ocaml.doc("<p>A list of tags associated with a cluster.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The applications installed on this cluster.</p>") @as("Applications")
  applications: option<applicationList>,
  @ocaml.doc("<p>Indicates whether the cluster is visible to all IAM users of the AWS account associated
         with the cluster. The default value, <code>true</code>, indicates that all IAM users in the
         AWS account can perform cluster actions if they have the proper IAM policy permissions. If
         this value is <code>false</code>, only the IAM user that created the cluster can perform
         actions. This value can be changed on a running cluster by using the <a>SetVisibleToAllUsers</a> action. You can override the default value of
            <code>true</code> when you create a cluster by using the <code>VisibleToAllUsers</code>
         parameter of the <code>RunJobFlow</code> action.</p>")
  @as("VisibleToAllUsers")
  visibleToAllUsers: option<boolean_>,
  @ocaml.doc("<p>Indicates whether Amazon EMR will lock the cluster to prevent the EC2 instances from
         being terminated by an API call or user intervention, or in the event of a cluster
         error.</p>")
  @as("TerminationProtected")
  terminationProtected: option<boolean_>,
  @ocaml.doc("<p>Specifies whether the cluster should terminate after completing all steps.</p>")
  @as("AutoTerminate")
  autoTerminate: option<boolean_>,
  @ocaml.doc("<p>The Amazon EMR release label, which determines the version of open-source application
         packages installed on the cluster. Release labels are in the form <code>emr-x.x.x</code>,
         where x.x.x is an Amazon EMR release version such as <code>emr-5.14.0</code>. For more
         information about Amazon EMR release versions and included application versions and
         features, see <a href=\"https://docs.aws.amazon.com/emr/latest/ReleaseGuide/\">https://docs.aws.amazon.com/emr/latest/ReleaseGuide/</a>. The release
         label applies only to Amazon EMR releases version 4.0 and later. Earlier versions use
            <code>AmiVersion</code>.</p>")
  @as("ReleaseLabel")
  releaseLabel: option<string_>,
  @ocaml.doc("<p>The AMI version running on this cluster.</p>") @as("RunningAmiVersion")
  runningAmiVersion: option<string_>,
  @ocaml.doc("<p>The AMI version requested for this cluster.</p>") @as("RequestedAmiVersion")
  requestedAmiVersion: option<string_>,
  @ocaml.doc("<p> The AWS KMS customer master key (CMK) used for encrypting log files. This attribute is
         only available with EMR version 5.30.0 and later, excluding EMR 6.0.0. </p>")
  @as("LogEncryptionKmsKeyId")
  logEncryptionKmsKeyId: option<string_>,
  @ocaml.doc("<p>The path to the Amazon S3 location where logs for this cluster are stored.</p>")
  @as("LogUri")
  logUri: option<string_>,
  @ocaml.doc("<note>
            <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and
            later, excluding 5.0.x versions.</p>
         </note>
         <p>The instance group configuration of the cluster. A value of <code>INSTANCE_GROUP</code>
         indicates a uniform instance group configuration. A value of <code>INSTANCE_FLEET</code>
         indicates an instance fleets configuration.</p>")
  @as("InstanceCollectionType")
  instanceCollectionType: option<instanceCollectionType>,
  @ocaml.doc("<p>Provides information about the EC2 instances in a cluster grouped by category. For
         example, key name, subnet ID, IAM instance profile, and so on.</p>")
  @as("Ec2InstanceAttributes")
  ec2InstanceAttributes: option<ec2InstanceAttributes>,
  @ocaml.doc("<p>The current status details about the cluster.</p>") @as("Status")
  status: option<clusterStatus>,
  @ocaml.doc("<p>The name of the cluster.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The unique identifier for the cluster.</p>") @as("Id") id: option<clusterId>,
}
@ocaml.doc("<p>A configuration for Amazon EMR block public access. When
            <code>BlockPublicSecurityGroupRules</code> is set to <code>true</code>, Amazon EMR
         prevents cluster creation if one of the cluster's security groups has a rule that allows
         inbound traffic from 0.0.0.0/0 or ::/0 on a port, unless the port is specified as an
         exception using <code>PermittedPublicSecurityGroupRuleRanges</code>.</p>")
type blockPublicAccessConfiguration = {
  @ocaml.doc("<p>A set of properties specified within a configuration classification.</p>")
  @as("Properties")
  properties: option<stringMap>,
  @ocaml.doc("<p>A list of additional configurations to apply within a configuration object.</p>")
  @as("Configurations")
  configurations: option<configurationList>,
  @ocaml.doc("<p>The classification within a configuration.</p>") @as("Classification")
  classification: option<string_>,
  @ocaml.doc("<p>Specifies ports and port ranges that are permitted to have security group rules that
         allow inbound traffic from all public sources. For example, if Port 23 (Telnet) is
         specified for <code>PermittedPublicSecurityGroupRuleRanges</code>, Amazon EMR allows
         cluster creation if a security group associated with the cluster has a rule that allows
         inbound traffic on Port 23 from IPv4 0.0.0.0/0 or IPv6 port ::/0 as the source.</p>
         <p>By default, Port 22, which is used for SSH access to the cluster EC2 instances, is in
         the list of <code>PermittedPublicSecurityGroupRuleRanges</code>.</p>")
  @as("PermittedPublicSecurityGroupRuleRanges")
  permittedPublicSecurityGroupRuleRanges: option<portRanges>,
  @ocaml.doc("<p>Indicates whether Amazon EMR block public access is enabled (<code>true</code>) or
         disabled (<code>false</code>). By default, the value is <code>false</code> for accounts
         that have created EMR clusters before July 2019. For accounts created after this, the
         default is <code>true</code>.</p>")
  @as("BlockPublicSecurityGroupRules")
  blockPublicSecurityGroupRules: boolean_,
}
type instanceTypeSpecificationList = array<instanceTypeSpecification>
type instanceTypeConfigList = array<instanceTypeConfig>
type instanceGroupModifyConfigList = array<instanceGroupModifyConfig>
type instanceGroupList = array<instanceGroup>
type instanceGroupConfigList = array<instanceGroupConfig>
@ocaml.doc("<p>The configuration that defines an instance fleet.</p>
         <note>
            <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and
            later, excluding 5.0.x versions.</p>
         </note>")
type instanceFleetConfig = {
  @ocaml.doc("<p>The launch specification for the instance fleet.</p>") @as("LaunchSpecifications")
  launchSpecifications: option<instanceFleetProvisioningSpecifications>,
  @ocaml.doc("<p>The instance type configurations that define the EC2 instances in the instance
         fleet.</p>")
  @as("InstanceTypeConfigs")
  instanceTypeConfigs: option<instanceTypeConfigList>,
  @ocaml.doc("<p>The target capacity of Spot units for the instance fleet, which determines how many Spot
         Instances to provision. When the instance fleet launches, Amazon EMR tries to provision
         Spot Instances as specified by <a>InstanceTypeConfig</a>. Each instance
         configuration has a specified <code>WeightedCapacity</code>. When a Spot Instance is
         provisioned, the <code>WeightedCapacity</code> units count toward the target capacity.
         Amazon EMR provisions instances until the target capacity is totally fulfilled, even if
         this results in an overage. For example, if there are 2 units remaining to fulfill
         capacity, and Amazon EMR can only provision an instance with a
            <code>WeightedCapacity</code> of 5 units, the instance is provisioned, and the target
         capacity is exceeded by 3 units.</p>
         <note>
            <p>If not specified or set to 0, only On-Demand Instances are provisioned for the
            instance fleet. At least one of <code>TargetSpotCapacity</code> and
               <code>TargetOnDemandCapacity</code> should be greater than 0. For a master instance
            fleet, only one of <code>TargetSpotCapacity</code> and
               <code>TargetOnDemandCapacity</code> can be specified, and its value must be 1.</p>
         </note>")
  @as("TargetSpotCapacity")
  targetSpotCapacity: option<wholeNumber>,
  @ocaml.doc("<p>The target capacity of On-Demand units for the instance fleet, which determines how many
         On-Demand Instances to provision. When the instance fleet launches, Amazon EMR tries to
         provision On-Demand Instances as specified by <a>InstanceTypeConfig</a>. Each
         instance configuration has a specified <code>WeightedCapacity</code>. When an On-Demand
         Instance is provisioned, the <code>WeightedCapacity</code> units count toward the target
         capacity. Amazon EMR provisions instances until the target capacity is totally fulfilled,
         even if this results in an overage. For example, if there are 2 units remaining to fulfill
         capacity, and Amazon EMR can only provision an instance with a
            <code>WeightedCapacity</code> of 5 units, the instance is provisioned, and the target
         capacity is exceeded by 3 units.</p>
         <note>
            <p>If not specified or set to 0, only Spot Instances are provisioned for the instance
            fleet using <code>TargetSpotCapacity</code>. At least one of
               <code>TargetSpotCapacity</code> and <code>TargetOnDemandCapacity</code> should be
            greater than 0. For a master instance fleet, only one of <code>TargetSpotCapacity</code>
            and <code>TargetOnDemandCapacity</code> can be specified, and its value must be
            1.</p>
         </note>")
  @as("TargetOnDemandCapacity")
  targetOnDemandCapacity: option<wholeNumber>,
  @ocaml.doc("<p>The node type that the instance fleet hosts. Valid values are MASTER, CORE, and
         TASK.</p>")
  @as("InstanceFleetType")
  instanceFleetType: instanceFleetType,
  @ocaml.doc("<p>The friendly name of the instance fleet.</p>") @as("Name")
  name: option<xmlStringMaxLen256>,
}
@ocaml.doc("<p>Describes an instance fleet, which is a group of EC2 instances that host a particular
         node type (master, core, or task) in an Amazon EMR cluster. Instance fleets can consist of
         a mix of instance types and On-Demand and Spot Instances, which are provisioned to meet a
         defined target capacity. </p>
         <note>
            <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and
            later, excluding 5.0.x versions.</p>
         </note>")
type instanceFleet = {
  @ocaml.doc("<p>Describes the launch specification for an instance fleet. </p>")
  @as("LaunchSpecifications")
  launchSpecifications: option<instanceFleetProvisioningSpecifications>,
  @ocaml.doc("<p>The specification for the instance types that comprise an instance fleet. Up to five
         unique instance specifications may be defined for each instance fleet. </p>")
  @as("InstanceTypeSpecifications")
  instanceTypeSpecifications: option<instanceTypeSpecificationList>,
  @ocaml.doc("<p>The number of Spot units that have been provisioned for this instance fleet to fulfill
            <code>TargetSpotCapacity</code>. This provisioned capacity might be less than or greater
         than <code>TargetSpotCapacity</code>.</p>")
  @as("ProvisionedSpotCapacity")
  provisionedSpotCapacity: option<wholeNumber>,
  @ocaml.doc("<p>The number of On-Demand units that have been provisioned for the instance fleet to
         fulfill <code>TargetOnDemandCapacity</code>. This provisioned capacity might be less than
         or greater than <code>TargetOnDemandCapacity</code>.</p>")
  @as("ProvisionedOnDemandCapacity")
  provisionedOnDemandCapacity: option<wholeNumber>,
  @ocaml.doc("<p>The target capacity of Spot units for the instance fleet, which determines how many Spot
         Instances to provision. When the instance fleet launches, Amazon EMR tries to provision
         Spot Instances as specified by <a>InstanceTypeConfig</a>. Each instance
         configuration has a specified <code>WeightedCapacity</code>. When a Spot instance is
         provisioned, the <code>WeightedCapacity</code> units count toward the target capacity.
         Amazon EMR provisions instances until the target capacity is totally fulfilled, even if
         this results in an overage. For example, if there are 2 units remaining to fulfill
         capacity, and Amazon EMR can only provision an instance with a
            <code>WeightedCapacity</code> of 5 units, the instance is provisioned, and the target
         capacity is exceeded by 3 units. You can use <a>InstanceFleet$ProvisionedSpotCapacity</a> to determine the Spot capacity units
         that have been provisioned for the instance fleet.</p>
         <note>
            <p>If not specified or set to 0, only On-Demand Instances are provisioned for the
            instance fleet. At least one of <code>TargetSpotCapacity</code> and
               <code>TargetOnDemandCapacity</code> should be greater than 0. For a master instance
            fleet, only one of <code>TargetSpotCapacity</code> and
               <code>TargetOnDemandCapacity</code> can be specified, and its value must be 1.</p>
         </note>")
  @as("TargetSpotCapacity")
  targetSpotCapacity: option<wholeNumber>,
  @ocaml.doc("<p>The target capacity of On-Demand units for the instance fleet, which determines how many
         On-Demand Instances to provision. When the instance fleet launches, Amazon EMR tries to
         provision On-Demand Instances as specified by <a>InstanceTypeConfig</a>. Each
         instance configuration has a specified <code>WeightedCapacity</code>. When an On-Demand
         Instance is provisioned, the <code>WeightedCapacity</code> units count toward the target
         capacity. Amazon EMR provisions instances until the target capacity is totally fulfilled,
         even if this results in an overage. For example, if there are 2 units remaining to fulfill
         capacity, and Amazon EMR can only provision an instance with a
            <code>WeightedCapacity</code> of 5 units, the instance is provisioned, and the target
         capacity is exceeded by 3 units. You can use <a>InstanceFleet$ProvisionedOnDemandCapacity</a> to determine the Spot capacity
         units that have been provisioned for the instance fleet.</p>
         <note>
            <p>If not specified or set to 0, only Spot Instances are provisioned for the instance
            fleet using <code>TargetSpotCapacity</code>. At least one of
               <code>TargetSpotCapacity</code> and <code>TargetOnDemandCapacity</code> should be
            greater than 0. For a master instance fleet, only one of <code>TargetSpotCapacity</code>
            and <code>TargetOnDemandCapacity</code> can be specified, and its value must be
            1.</p>
         </note>")
  @as("TargetOnDemandCapacity")
  targetOnDemandCapacity: option<wholeNumber>,
  @ocaml.doc("<p>The node type that the instance fleet hosts. Valid values are MASTER, CORE, or TASK.
      </p>")
  @as("InstanceFleetType")
  instanceFleetType: option<instanceFleetType>,
  @ocaml.doc("<p>The current status of the instance fleet. </p>") @as("Status")
  status: option<instanceFleetStatus>,
  @ocaml.doc("<p>A friendly name for the instance fleet.</p>") @as("Name")
  name: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The unique identifier of the instance fleet.</p>") @as("Id")
  id: option<instanceFleetId>,
}
type instanceFleetList = array<instanceFleet>
type instanceFleetConfigList = array<instanceFleetConfig>
@ocaml.doc("<p>A description of the Amazon EC2 instance on which the cluster (job flow) runs. A valid
         JobFlowInstancesConfig must contain either InstanceGroups or InstanceFleets. They cannot be
         used together. You may also have MasterInstanceType, SlaveInstanceType, and InstanceCount
         (all three must be present), but we don't recommend this configuration.</p>")
type jobFlowInstancesConfig = {
  @ocaml.doc(
    "<p>A list of additional Amazon EC2 security group IDs for the core and task nodes.</p>"
  )
  @as("AdditionalSlaveSecurityGroups")
  additionalSlaveSecurityGroups: option<securityGroupsList>,
  @ocaml.doc("<p>A list of additional Amazon EC2 security group IDs for the master node.</p>")
  @as("AdditionalMasterSecurityGroups")
  additionalMasterSecurityGroups: option<securityGroupsList>,
  @ocaml.doc("<p>The identifier of the Amazon EC2 security group for the Amazon EMR service to access
         clusters in VPC private subnets.</p>")
  @as("ServiceAccessSecurityGroup")
  serviceAccessSecurityGroup: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The identifier of the Amazon EC2 security group for the core and task nodes.</p>")
  @as("EmrManagedSlaveSecurityGroup")
  emrManagedSlaveSecurityGroup: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>The identifier of the Amazon EC2 security group for the master node.</p>")
  @as("EmrManagedMasterSecurityGroup")
  emrManagedMasterSecurityGroup: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>Applies to clusters that use the instance fleet configuration. When multiple EC2 subnet
         IDs are specified, Amazon EMR evaluates them and launches instances in the optimal
         subnet.</p>
         <note>
            <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and
            later, excluding 5.0.x versions.</p>
         </note>")
  @as("Ec2SubnetIds")
  ec2SubnetIds: option<xmlStringMaxLen256List>,
  @ocaml.doc("<p>Applies to clusters that use the uniform instance group configuration. To launch the
         cluster in Amazon Virtual Private Cloud (Amazon VPC), set this parameter to the identifier
         of the Amazon VPC subnet where you want the cluster to launch. If you do not specify this
         value and your account supports EC2-Classic, the cluster launches in EC2-Classic.</p>")
  @as("Ec2SubnetId")
  ec2SubnetId: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>Applies only to Amazon EMR release versions earlier than 4.0. The Hadoop version for the
         cluster. Valid inputs are \"0.18\" (no longer maintained), \"0.20\" (no longer maintained),
         \"0.20.205\" (no longer maintained), \"1.0.3\", \"2.2.0\", or \"2.4.0\". If you do not set this
         value, the default of 0.18 is used, unless the <code>AmiVersion</code> parameter is set in
         the RunJobFlow call, in which case the default version of Hadoop for that AMI version is
         used.</p>")
  @as("HadoopVersion")
  hadoopVersion: option<xmlStringMaxLen256>,
  @ocaml.doc("<p>Specifies whether to lock the cluster to prevent the Amazon EC2 instances from being
         terminated by API call, user intervention, or in the event of a job-flow error.</p>")
  @as("TerminationProtected")
  terminationProtected: option<boolean_>,
  @ocaml.doc(
    "<p>Specifies whether the cluster should remain available after completing all steps.</p>"
  )
  @as("KeepJobFlowAliveWhenNoSteps")
  keepJobFlowAliveWhenNoSteps: option<boolean_>,
  @ocaml.doc("<p>The Availability Zone in which the cluster runs.</p>") @as("Placement")
  placement: option<placementType>,
  @ocaml.doc("<p>The name of the EC2 key pair that can be used to connect to the master node using SSH as
         the user called \"hadoop.\"</p>")
  @as("Ec2KeyName")
  ec2KeyName: option<xmlStringMaxLen256>,
  @ocaml.doc("<note>
            <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and
            later, excluding 5.0.x versions.</p>
         </note>
         <p>Describes the EC2 instances and instance configurations for clusters that use the
         instance fleet configuration.</p>")
  @as("InstanceFleets")
  instanceFleets: option<instanceFleetConfigList>,
  @ocaml.doc("<p>Configuration for the instance groups in a cluster.</p>") @as("InstanceGroups")
  instanceGroups: option<instanceGroupConfigList>,
  @ocaml.doc("<p>The number of EC2 instances in the cluster.</p>") @as("InstanceCount")
  instanceCount: option<integer_>,
  @ocaml.doc("<p>The EC2 instance type of the core and task nodes.</p>") @as("SlaveInstanceType")
  slaveInstanceType: option<instanceType>,
  @ocaml.doc("<p>The EC2 instance type of the master node.</p>") @as("MasterInstanceType")
  masterInstanceType: option<instanceType>,
}
@ocaml.doc("<p>Amazon EMR is a web service that makes it easier to process large amounts of data
         efficiently. Amazon EMR uses Hadoop processing combined with several AWS services to do
         tasks such as web indexing, data mining, log file analysis, machine learning, scientific
         simulation, and data warehouse management.</p>")
module UpdateStudioSessionMapping = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the session policy to associate with the specified
         user or group.</p>")
    @as("SessionPolicyArn")
    sessionPolicyArn: xmlStringMaxLen256,
    @ocaml.doc("<p>Specifies whether the identity to update is a user or a group.</p>")
    @as("IdentityType")
    identityType: identityType,
    @ocaml.doc("<p>The name of the user or group to update. For more information, see <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName\">UserName</a> and <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName\">DisplayName</a> in the <i>AWS SSO Identity Store API Reference</i>.
         Either <code>IdentityName</code> or <code>IdentityId</code> must be specified.</p>")
    @as("IdentityName")
    identityName: option<xmlStringMaxLen256>,
    @ocaml.doc("<p>The globally unique identifier (GUID) of the user or group. For more information, see
            <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId\">UserId</a> and <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId\">GroupId</a> in the <i>AWS SSO Identity Store API Reference</i>.
         Either <code>IdentityName</code> or <code>IdentityId</code> must be specified.</p>")
    @as("IdentityId")
    identityId: option<xmlStringMaxLen256>,
    @ocaml.doc("<p>The ID of the Amazon EMR Studio.</p>") @as("StudioId")
    studioId: xmlStringMaxLen256,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "UpdateStudioSessionMappingCommand"
  let make = (~sessionPolicyArn, ~identityType, ~studioId, ~identityName=?, ~identityId=?, ()) =>
    new({
      sessionPolicyArn: sessionPolicyArn,
      identityType: identityType,
      identityName: identityName,
      identityId: identityId,
      studioId: studioId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopNotebookExecution = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the notebook execution.</p>") @as("NotebookExecutionId")
    notebookExecutionId: xmlStringMaxLen256,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "StopNotebookExecutionCommand"
  let make = (~notebookExecutionId, ()) => new({notebookExecutionId: notebookExecutionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveManagedScalingPolicy = {
  type t
  type request = {
    @ocaml.doc("<p> Specifies the ID of the cluster from which the managed scaling policy will be removed.
      </p>")
    @as("ClusterId")
    clusterId: clusterId,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "RemoveManagedScalingPolicyCommand"
  let make = (~clusterId, ()) => new({clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveAutoScalingPolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies the ID of the instance group to which the scaling policy is applied.</p>"
    )
    @as("InstanceGroupId")
    instanceGroupId: instanceGroupId,
    @ocaml.doc("<p>Specifies the ID of a cluster. The instance group to which the automatic scaling policy
         is applied is within this cluster.</p>")
    @as("ClusterId")
    clusterId: clusterId,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "RemoveAutoScalingPolicyCommand"
  let make = (~instanceGroupId, ~clusterId, ()) =>
    new({instanceGroupId: instanceGroupId, clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The number of steps that can be executed concurrently. You can specify a minimum of 1 step and a maximum of 256
         steps. </p>")
    @as("StepConcurrencyLevel")
    stepConcurrencyLevel: option<integer_>,
    @ocaml.doc("<p>The unique identifier of the cluster.</p>") @as("ClusterId") clusterId: string_,
  }
  type response = {
    @ocaml.doc("<p>The number of steps that can be executed concurrently.</p>")
    @as("StepConcurrencyLevel")
    stepConcurrencyLevel: option<integer_>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "ModifyClusterCommand"
  let make = (~clusterId, ~stepConcurrencyLevel=?, ()) =>
    new({stepConcurrencyLevel: stepConcurrencyLevel, clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSecurityConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the security configuration.</p>") @as("Name") name: xmlString,
  }
  type response = {
    @ocaml.doc("<p>The date and time the security configuration was created</p>")
    @as("CreationDateTime")
    creationDateTime: option<date>,
    @ocaml.doc("<p>The security configuration details in JSON format.</p>")
    @as("SecurityConfiguration")
    securityConfiguration: option<string_>,
    @ocaml.doc("<p>The name of the security configuration.</p>") @as("Name")
    name: option<xmlString>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "DescribeSecurityConfigurationCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStudioSessionMapping = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies whether the identity to delete from the Amazon EMR Studio is a user or a group.</p>"
    )
    @as("IdentityType")
    identityType: identityType,
    @ocaml.doc("<p>The name of the user name or group to remove from the Amazon EMR Studio. For more information, see
            <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName\">UserName</a> and <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName\">DisplayName</a> in the <i>AWS SSO Identity Store API Reference</i>.
         Either <code>IdentityName</code> or <code>IdentityId</code> must be specified.</p>")
    @as("IdentityName")
    identityName: option<xmlStringMaxLen256>,
    @ocaml.doc("<p>The globally unique identifier (GUID) of the user or group to remove from the Amazon EMR
         Studio. For more information, see <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId\">UserId</a> and <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId\">GroupId</a> in the <i>AWS SSO Identity Store API Reference</i>.
         Either <code>IdentityName</code> or <code>IdentityId</code> must be specified.</p>")
    @as("IdentityId")
    identityId: option<xmlStringMaxLen256>,
    @ocaml.doc("<p>The ID of the Amazon EMR Studio.</p>") @as("StudioId")
    studioId: xmlStringMaxLen256,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "DeleteStudioSessionMappingCommand"
  let make = (~identityType, ~studioId, ~identityName=?, ~identityId=?, ()) =>
    new({
      identityType: identityType,
      identityName: identityName,
      identityId: identityId,
      studioId: studioId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteStudio = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Amazon EMR Studio.</p>") @as("StudioId")
    studioId: xmlStringMaxLen256,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "DeleteStudioCommand"
  let make = (~studioId, ()) => new({studioId: studioId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSecurityConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the security configuration.</p>") @as("Name") name: xmlString,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "DeleteSecurityConfigurationCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateStudioSessionMapping = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the session policy that will be applied to the user
         or group. Session policies refine Studio user permissions without the need to use multiple
         IAM user roles.</p>")
    @as("SessionPolicyArn")
    sessionPolicyArn: xmlStringMaxLen256,
    @ocaml.doc(
      "<p>Specifies whether the identity to map to the Amazon EMR Studio is a user or a group.</p>"
    )
    @as("IdentityType")
    identityType: identityType,
    @ocaml.doc("<p>The name of the user or group. For more information, see <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName\">UserName</a> and <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName\">DisplayName</a> in the <i>AWS SSO Identity Store API Reference</i>.
         Either <code>IdentityName</code> or <code>IdentityId</code> must be specified.</p>")
    @as("IdentityName")
    identityName: option<xmlStringMaxLen256>,
    @ocaml.doc("<p>The globally unique identifier (GUID) of the user or group from the AWS SSO Identity
         Store. For more information, see <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId\">UserId</a> and <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId\">GroupId</a> in the <i>AWS SSO Identity Store API Reference</i>.
         Either <code>IdentityName</code> or <code>IdentityId</code> must be specified.</p>")
    @as("IdentityId")
    identityId: option<xmlStringMaxLen256>,
    @ocaml.doc("<p>The ID of the Amazon EMR Studio to which the user or group will be mapped.</p>")
    @as("StudioId")
    studioId: xmlStringMaxLen256,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "CreateStudioSessionMappingCommand"
  let make = (~sessionPolicyArn, ~identityType, ~studioId, ~identityName=?, ~identityId=?, ()) =>
    new({
      sessionPolicyArn: sessionPolicyArn,
      identityType: identityType,
      identityName: identityName,
      identityId: identityId,
      studioId: studioId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateSecurityConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The security configuration details in JSON format. For JSON parameters and examples, see
            <a href=\"https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-security-configurations.html\">Use Security
            Configurations to Set Up Cluster Security</a> in the <i>Amazon EMR Management
            Guide</i>.</p>")
    @as("SecurityConfiguration")
    securityConfiguration: string_,
    @ocaml.doc("<p>The name of the security configuration.</p>") @as("Name") name: xmlString,
  }
  type response = {
    @ocaml.doc("<p>The date and time the security configuration was created.</p>")
    @as("CreationDateTime")
    creationDateTime: date,
    @ocaml.doc("<p>The name of the security configuration.</p>") @as("Name") name: xmlString,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "CreateSecurityConfigurationCommand"
  let make = (~securityConfiguration, ~name, ()) =>
    new({securityConfiguration: securityConfiguration, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateStudio = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon S3 location to back up Workspaces and notebook files for the Amazon EMR Studio.</p>"
    )
    @as("DefaultS3Location")
    defaultS3Location: option<xmlString>,
    @ocaml.doc(
      "<p>A list of subnet IDs to associate with the Amazon EMR Studio. The list can include new subnet IDs, but must also include all of the subnet IDs previously associated with the Studio. The list order does not matter. A Studio can have a maximum of 5 subnets. The subnets must belong to the same VPC as the Studio. </p>"
    )
    @as("SubnetIds")
    subnetIds: option<subnetIdList>,
    @ocaml.doc("<p>A detailed description to assign to the Amazon EMR Studio.</p>")
    @as("Description")
    description: option<xmlStringMaxLen256>,
    @ocaml.doc("<p>A descriptive name for the Amazon EMR Studio.</p>") @as("Name")
    name: option<xmlStringMaxLen256>,
    @ocaml.doc("<p>The ID of the Amazon EMR Studio to update.</p>") @as("StudioId")
    studioId: xmlStringMaxLen256,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "UpdateStudioCommand"
  let make = (~studioId, ~defaultS3Location=?, ~subnetIds=?, ~description=?, ~name=?, ()) =>
    new({
      defaultS3Location: defaultS3Location,
      subnetIds: subnetIds,
      description: description,
      name: name,
      studioId: studioId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TerminateJobFlows = {
  type t
  @ocaml.doc("<p> Input to the <a>TerminateJobFlows</a> operation. </p>")
  type request = {
    @ocaml.doc("<p>A list of job flows to be shut down.</p>") @as("JobFlowIds")
    jobFlowIds: xmlStringList,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "TerminateJobFlowsCommand"
  let make = (~jobFlowIds, ()) => new({jobFlowIds: jobFlowIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetVisibleToAllUsers = {
  type t
  @ocaml.doc("<p>The input to the SetVisibleToAllUsers action.</p>")
  type request = {
    @ocaml.doc("<p>A value of <code>true</code> indicates that all IAM users in the AWS account can perform
         cluster actions if they have the proper IAM policy permissions. This is the default. A
         value of <code>false</code> indicates that only the IAM user who created the cluster can
         perform actions.</p>")
    @as("VisibleToAllUsers")
    visibleToAllUsers: boolean_,
    @ocaml.doc("<p>The unique identifier of the job flow (cluster).</p>") @as("JobFlowIds")
    jobFlowIds: xmlStringList,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "SetVisibleToAllUsersCommand"
  let make = (~visibleToAllUsers, ~jobFlowIds, ()) =>
    new({visibleToAllUsers: visibleToAllUsers, jobFlowIds: jobFlowIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetTerminationProtection = {
  type t
  @ocaml.doc("<p> The input argument to the <a>TerminationProtection</a> operation. </p>")
  type request = {
    @ocaml.doc("<p>A Boolean that indicates whether to protect the cluster and prevent the Amazon EC2
         instances in the cluster from shutting down due to API calls, user intervention, or
         job-flow error.</p>")
    @as("TerminationProtected")
    terminationProtected: boolean_,
    @ocaml.doc("<p> A list of strings that uniquely identify the clusters to protect. This identifier is
         returned by <a>RunJobFlow</a> and can also be obtained from <a>DescribeJobFlows</a> . </p>")
    @as("JobFlowIds")
    jobFlowIds: xmlStringList,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "SetTerminationProtectionCommand"
  let make = (~terminationProtected, ~jobFlowIds, ()) =>
    new({terminationProtected: terminationProtected, jobFlowIds: jobFlowIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveTags = {
  type t
  @ocaml.doc("<p>This input identifies a cluster and a list of tags to remove.</p>")
  type request = {
    @ocaml.doc("<p>A list of tag keys to remove from a resource.</p>") @as("TagKeys")
    tagKeys: stringList,
    @ocaml.doc("<p>The Amazon EMR resource identifier from which tags will be removed. This value must be a
         cluster identifier.</p>")
    @as("ResourceId")
    resourceId: resourceId,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new external new: request => t = "RemoveTagsCommand"
  let make = (~tagKeys, ~resourceId, ()) => new({tagKeys: tagKeys, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyInstanceFleet = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the instance fleet.</p>") @as("InstanceFleet")
    instanceFleet: instanceFleetModifyConfig,
    @ocaml.doc("<p>The unique identifier of the cluster.</p>") @as("ClusterId")
    clusterId: clusterId,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "ModifyInstanceFleetCommand"
  let make = (~instanceFleet, ~clusterId, ()) =>
    new({instanceFleet: instanceFleet, clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetStudioSessionMapping = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies whether the identity to fetch is a user or a group.</p>")
    @as("IdentityType")
    identityType: identityType,
    @ocaml.doc("<p>The name of the user or group to fetch. For more information, see <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName\">UserName</a> and <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName\">DisplayName</a> in the <i>AWS SSO Identity Store API Reference</i>.
         Either <code>IdentityName</code> or <code>IdentityId</code> must be specified.</p>")
    @as("IdentityName")
    identityName: option<xmlStringMaxLen256>,
    @ocaml.doc("<p>The globally unique identifier (GUID) of the user or group. For more information, see
            <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId\">UserId</a> and <a href=\"https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId\">GroupId</a> in the <i>AWS SSO Identity Store API Reference</i>.
         Either <code>IdentityName</code> or <code>IdentityId</code> must be specified.</p>")
    @as("IdentityId")
    identityId: option<xmlStringMaxLen256>,
    @ocaml.doc("<p>The ID of the Amazon EMR Studio.</p>") @as("StudioId")
    studioId: xmlStringMaxLen256,
  }
  type response = {
    @ocaml.doc("<p>The session mapping details for the specified Amazon EMR Studio and identity, including
         session policy ARN and creation time.</p>")
    @as("SessionMapping")
    sessionMapping: option<sessionMappingDetail>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "GetStudioSessionMappingCommand"
  let make = (~identityType, ~studioId, ~identityName=?, ~identityId=?, ()) =>
    new({
      identityType: identityType,
      identityName: identityName,
      identityId: identityId,
      studioId: studioId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartNotebookExecution = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags associated with a notebook execution. Tags are user-defined key-value
         pairs that consist of a required key string with a maximum of 128 characters and an
         optional value string with a maximum of 256 characters.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The unique identifier of the Amazon EC2 security group to associate with the EMR
         Notebook for this notebook execution.</p>")
    @as("NotebookInstanceSecurityGroupId")
    notebookInstanceSecurityGroupId: option<xmlStringMaxLen256>,
    @ocaml.doc("<p>The name or ARN of the IAM role that is used as the service role for Amazon EMR (the EMR
         role) for the notebook execution.</p>")
    @as("ServiceRole")
    serviceRole: xmlString,
    @ocaml.doc("<p>Specifies the execution engine (cluster) that runs the notebook execution.</p>")
    @as("ExecutionEngine")
    executionEngine: executionEngineConfig,
    @ocaml.doc("<p>Input parameters in JSON format passed to the EMR Notebook at runtime for
         execution.</p>")
    @as("NotebookParams")
    notebookParams: option<xmlString>,
    @ocaml.doc("<p>An optional name for the notebook execution.</p>") @as("NotebookExecutionName")
    notebookExecutionName: option<xmlStringMaxLen256>,
    @ocaml.doc("<p>The path and file name of the notebook file for this execution, relative to the path
         specified for the EMR Notebook. For example, if you specify a path of
            <code>s3://MyBucket/MyNotebooks</code> when you create an EMR Notebook for a notebook
         with an ID of <code>e-ABCDEFGHIJK1234567890ABCD</code> (the <code>EditorID</code> of this
         request), and you specify a <code>RelativePath</code> of
            <code>my_notebook_executions/notebook_execution.ipynb</code>, the location of the file
         for the notebook execution is
            <code>s3://MyBucket/MyNotebooks/e-ABCDEFGHIJK1234567890ABCD/my_notebook_executions/notebook_execution.ipynb</code>.</p>")
    @as("RelativePath")
    relativePath: xmlString,
    @ocaml.doc("<p>The unique identifier of the EMR Notebook to use for notebook execution.</p>")
    @as("EditorId")
    editorId: xmlStringMaxLen256,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of the notebook execution.</p>") @as("NotebookExecutionId")
    notebookExecutionId: option<xmlStringMaxLen256>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "StartNotebookExecutionCommand"
  let make = (
    ~serviceRole,
    ~executionEngine,
    ~relativePath,
    ~editorId,
    ~tags=?,
    ~notebookInstanceSecurityGroupId=?,
    ~notebookParams=?,
    ~notebookExecutionName=?,
    (),
  ) =>
    new({
      tags: tags,
      notebookInstanceSecurityGroupId: notebookInstanceSecurityGroupId,
      serviceRole: serviceRole,
      executionEngine: executionEngine,
      notebookParams: notebookParams,
      notebookExecutionName: notebookExecutionName,
      relativePath: relativePath,
      editorId: editorId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutManagedScalingPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the constraints for the managed scaling policy. </p>")
    @as("ManagedScalingPolicy")
    managedScalingPolicy: managedScalingPolicy,
    @ocaml.doc(
      "<p>Specifies the ID of an EMR cluster where the managed scaling policy is attached. </p>"
    )
    @as("ClusterId")
    clusterId: clusterId,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "PutManagedScalingPolicyCommand"
  let make = (~managedScalingPolicy, ~clusterId, ()) =>
    new({managedScalingPolicy: managedScalingPolicy, clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListStudios = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token that indicates the set of results to retrieve.</p>")
    @as("Marker")
    marker: option<marker>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The list of Studio summary objects.</p>") @as("Studios")
    studios: option<studioSummaryList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new external new: request => t = "ListStudiosCommand"
  let make = (~marker=?, ()) => new({marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStudioSessionMappings = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token that indicates the set of results to retrieve.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>Specifies whether to return session mappings for users or groups. If not specified, the
         results include session mapping details for both users and groups.</p>")
    @as("IdentityType")
    identityType: option<identityType>,
    @ocaml.doc("<p>The ID of the Amazon EMR Studio.</p>") @as("StudioId")
    studioId: option<xmlStringMaxLen256>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>A list of session mapping summary objects. Each object includes session mapping details
         such as creation time, identity type (user or group), and Amazon EMR Studio ID.</p>")
    @as("SessionMappings")
    sessionMappings: option<sessionMappingSummaryList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "ListStudioSessionMappingsCommand"
  let make = (~marker=?, ~identityType=?, ~studioId=?, ()) =>
    new({marker: marker, identityType: identityType, studioId: studioId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSecurityConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token that indicates the set of results to retrieve.</p>")
    @as("Marker")
    marker: option<marker>,
  }
  type response = {
    @ocaml.doc("<p>A pagination token that indicates the next set of results to retrieve. Include the
         marker in the next ListSecurityConfiguration call to retrieve the next page of results, if
         required.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The creation date and time, and name, of each security configuration.</p>")
    @as("SecurityConfigurations")
    securityConfigurations: option<securityConfigurationList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "ListSecurityConfigurationsCommand"
  let make = (~marker=?, ()) => new({marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNotebookExecutions = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token, returned by a previous <code>ListNotebookExecutions</code> call,
         that indicates the start of the list for this <code>ListNotebookExecutions</code>
         call.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The end of time range filter for listing notebook executions. The default is the current
         timestamp.</p>")
    @as("To")
    to: option<date>,
    @ocaml.doc("<p>The beginning of time range filter for listing notebook executions. The default is the
         timestamp of 30 days ago.</p>")
    @as("From")
    from: option<date>,
    @ocaml.doc("<p>The status filter for listing notebook executions.</p>
         <ul>
            <li>
               <p>
                  <code>START_PENDING</code> indicates that the cluster has received the execution
               request but execution has not begun.</p>
            </li>
            <li>
               <p>
                  <code>STARTING</code> indicates that the execution is starting on the
               cluster.</p>
            </li>
            <li>
               <p>
                  <code>RUNNING</code> indicates that the execution is being processed by the
               cluster.</p>
            </li>
            <li>
               <p>
                  <code>FINISHING</code> indicates that execution processing is in the final
               stages.</p>
            </li>
            <li>
               <p>
                  <code>FINISHED</code> indicates that the execution has completed without
               error.</p>
            </li>
            <li>
               <p>
                  <code>FAILING</code> indicates that the execution is failing and will not finish
               successfully.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> indicates that the execution failed.</p>
            </li>
            <li>
               <p>
                  <code>STOP_PENDING</code> indicates that the cluster has received a
                  <code>StopNotebookExecution</code> request and the stop is pending.</p>
            </li>
            <li>
               <p>
                  <code>STOPPING</code> indicates that the cluster is in the process of stopping the
               execution as a result of a <code>StopNotebookExecution</code> request.</p>
            </li>
            <li>
               <p>
                  <code>STOPPED</code> indicates that the execution stopped because of a
                  <code>StopNotebookExecution</code> request.</p>
            </li>
         </ul>")
    @as("Status")
    status: option<notebookExecutionStatus>,
    @ocaml.doc("<p>The unique ID of the editor associated with the notebook execution.</p>")
    @as("EditorId")
    editorId: option<xmlStringMaxLen256>,
  }
  type response = {
    @ocaml.doc("<p>A pagination token that a subsequent <code>ListNotebookExecutions</code> can use to
         determine the next set of results to retrieve.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>A list of notebook executions.</p>") @as("NotebookExecutions")
    notebookExecutions: option<notebookExecutionSummaryList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "ListNotebookExecutionsCommand"
  let make = (~marker=?, ~to=?, ~from=?, ~status=?, ~editorId=?, ()) =>
    new({marker: marker, to: to, from: from, status: status, editorId: editorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetManagedScalingPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the ID of the cluster for which the managed scaling policy will be fetched.
      </p>")
    @as("ClusterId")
    clusterId: clusterId,
  }
  type response = {
    @ocaml.doc(
      "<p>Specifies the managed scaling policy that is attached to an Amazon EMR cluster. </p>"
    )
    @as("ManagedScalingPolicy")
    managedScalingPolicy: option<managedScalingPolicy>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "GetManagedScalingPolicyCommand"
  let make = (~clusterId, ()) => new({clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStudio = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags to associate with the Amazon EMR Studio. Tags are user-defined key-value pairs that
         consist of a required key string with a maximum of 128 characters, and an optional value
         string with a maximum of 256 characters.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>The Amazon S3 location to back up Amazon EMR Studio Workspaces and notebook files.</p>"
    )
    @as("DefaultS3Location")
    defaultS3Location: xmlString,
    @ocaml.doc("<p>The ID of the Amazon EMR Studio Engine security group. The Engine security group allows
         inbound network traffic from the Workspace security group, and it must be in the same VPC
         specified by <code>VpcId</code>.</p>")
    @as("EngineSecurityGroupId")
    engineSecurityGroupId: xmlStringMaxLen256,
    @ocaml.doc("<p>The ID of the Amazon EMR Studio Workspace security group. The Workspace security group
         allows outbound network traffic to resources in the Engine security group, and it must be
         in the same VPC specified by <code>VpcId</code>.</p>")
    @as("WorkspaceSecurityGroupId")
    workspaceSecurityGroupId: xmlStringMaxLen256,
    @ocaml.doc("<p>The IAM user role that will be assumed by users and groups logged in to an Amazon EMR Studio. The
         permissions attached to this IAM role can be scoped down for each user or group using
         session policies.</p>")
    @as("UserRole")
    userRole: xmlString,
    @ocaml.doc("<p>The IAM role that will be assumed by the Amazon EMR Studio. The service role provides a
         way for Amazon EMR Studio to interoperate with other AWS services.</p>")
    @as("ServiceRole")
    serviceRole: xmlString,
    @ocaml.doc("<p>A list of subnet IDs to associate with the Amazon EMR Studio. A Studio can have a maximum of 5 subnets. The subnets must belong to the VPC
         specified by <code>VpcId</code>. Studio users can create a Workspace in any of the
         specified subnets.</p>")
    @as("SubnetIds")
    subnetIds: subnetIdList,
    @ocaml.doc("<p>The ID of the Amazon Virtual Private Cloud (Amazon VPC) to associate with the
         Studio.</p>")
    @as("VpcId")
    vpcId: xmlStringMaxLen256,
    @ocaml.doc("<p>Specifies whether the Studio authenticates users using single sign-on (SSO) or IAM.
         Amazon EMR Studio currently only supports SSO authentication.</p>")
    @as("AuthMode")
    authMode: authMode,
    @ocaml.doc("<p>A detailed description of the Amazon EMR Studio.</p>") @as("Description")
    description: option<xmlStringMaxLen256>,
    @ocaml.doc("<p>A descriptive name for the Amazon EMR Studio.</p>") @as("Name")
    name: xmlStringMaxLen256,
  }
  type response = {
    @ocaml.doc("<p>The unique Studio access URL.</p>") @as("Url") url: option<xmlString>,
    @ocaml.doc("<p>The ID of the Amazon EMR Studio.</p>") @as("StudioId")
    studioId: option<xmlStringMaxLen256>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "CreateStudioCommand"
  let make = (
    ~defaultS3Location,
    ~engineSecurityGroupId,
    ~workspaceSecurityGroupId,
    ~userRole,
    ~serviceRole,
    ~subnetIds,
    ~vpcId,
    ~authMode,
    ~name,
    ~tags=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      defaultS3Location: defaultS3Location,
      engineSecurityGroupId: engineSecurityGroupId,
      workspaceSecurityGroupId: workspaceSecurityGroupId,
      userRole: userRole,
      serviceRole: serviceRole,
      subnetIds: subnetIds,
      vpcId: vpcId,
      authMode: authMode,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelSteps = {
  type t
  @ocaml.doc("<p>The input argument to the <a>CancelSteps</a> operation.</p>")
  type request = {
    @ocaml.doc("<p>The option to choose to cancel <code>RUNNING</code> steps. By default, the value is
            <code>SEND_INTERRUPT</code>.</p>")
    @as("StepCancellationOption")
    stepCancellationOption: option<stepCancellationOption>,
    @ocaml.doc("<p>The list of <code>StepIDs</code> to cancel. Use <a>ListSteps</a> to get steps
         and their states for the specified cluster.</p>")
    @as("StepIds")
    stepIds: stepIdsList,
    @ocaml.doc(
      "<p>The <code>ClusterID</code> for the specified steps that will be canceled. Use <a>RunJobFlow</a> and <a>ListClusters</a> to get ClusterIDs. </p>"
    )
    @as("ClusterId")
    clusterId: xmlStringMaxLen256,
  }
  @ocaml.doc("<p> The output for the <a>CancelSteps</a> operation. </p>")
  type response = {
    @ocaml.doc("<p>A list of <a>CancelStepsInfo</a>, which shows the status of specified cancel
         requests for each <code>StepID</code> specified.</p>")
    @as("CancelStepsInfoList")
    cancelStepsInfoList: option<cancelStepsInfoList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new external new: request => t = "CancelStepsCommand"
  let make = (~stepIds, ~clusterId, ~stepCancellationOption=?, ()) =>
    new({stepCancellationOption: stepCancellationOption, stepIds: stepIds, clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTags = {
  type t
  @ocaml.doc("<p>This input identifies a cluster and a list of tags to attach.</p>")
  type request = {
    @ocaml.doc("<p>A list of tags to associate with a cluster and propagate to EC2 instances. Tags are
         user-defined key-value pairs that consist of a required key string with a maximum of 128
         characters, and an optional value string with a maximum of 256 characters.</p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon EMR resource identifier to which tags will be added. This value must be a
         cluster identifier.</p>")
    @as("ResourceId")
    resourceId: resourceId,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new external new: request => t = "AddTagsCommand"
  let make = (~tags, ~resourceId, ()) => new({tags: tags, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListBootstrapActions = {
  type t
  @ocaml.doc("<p>This input determines which bootstrap actions to retrieve.</p>")
  type request = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The cluster identifier for the bootstrap actions to list.</p>") @as("ClusterId")
    clusterId: clusterId,
  }
  @ocaml.doc("<p>This output contains the bootstrap actions detail.</p>")
  type response = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The bootstrap actions associated with the cluster.</p>") @as("BootstrapActions")
    bootstrapActions: option<commandList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "ListBootstrapActionsCommand"
  let make = (~clusterId, ~marker=?, ()) => new({marker: marker, clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStudio = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon EMR Studio ID.</p>") @as("StudioId") studioId: xmlStringMaxLen256,
  }
  type response = {
    @ocaml.doc("<p>The Amazon EMR Studio details.</p>") @as("Studio") studio: option<studio>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "DescribeStudioCommand"
  let make = (~studioId, ()) => new({studioId: studioId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStep = {
  type t
  @ocaml.doc("<p>This input determines which step to describe.</p>")
  type request = {
    @ocaml.doc("<p>The identifier of the step to describe.</p>") @as("StepId") stepId: stepId,
    @ocaml.doc("<p>The identifier of the cluster with steps to describe.</p>") @as("ClusterId")
    clusterId: clusterId,
  }
  @ocaml.doc("<p>This output contains the description of the cluster step.</p>")
  type response = {
    @ocaml.doc("<p>The step details for the requested step identifier.</p>") @as("Step")
    step: option<step>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "DescribeStepCommand"
  let make = (~stepId, ~clusterId, ()) => new({stepId: stepId, clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNotebookExecution = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the notebook execution.</p>") @as("NotebookExecutionId")
    notebookExecutionId: xmlStringMaxLen256,
  }
  type response = {
    @ocaml.doc("<p>Properties of the notebook execution.</p>") @as("NotebookExecution")
    notebookExecution: option<notebookExecution>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "DescribeNotebookExecutionCommand"
  let make = (~notebookExecutionId, ()) => new({notebookExecutionId: notebookExecutionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSteps = {
  type t
  @ocaml.doc("<p>This input determines which steps to list.</p>")
  type request = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The filter to limit the step list based on the identifier of the steps. You can specify
         a maximum of ten Step IDs. The character constraint applies to the overall length of the
         array.</p>")
    @as("StepIds")
    stepIds: option<xmlStringList>,
    @ocaml.doc("<p>The filter to limit the step list based on certain states.</p>")
    @as("StepStates")
    stepStates: option<stepStateList>,
    @ocaml.doc("<p>The identifier of the cluster for which to list the steps.</p>") @as("ClusterId")
    clusterId: clusterId,
  }
  @ocaml.doc("<p>This output contains the list of steps returned in reverse order. This means that the
         last step is the first element in the list.</p>")
  type response = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The filtered list of steps for the cluster.</p>") @as("Steps")
    steps: option<stepSummaryList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new external new: request => t = "ListStepsCommand"
  let make = (~clusterId, ~marker=?, ~stepIds=?, ~stepStates=?, ()) =>
    new({marker: marker, stepIds: stepIds, stepStates: stepStates, clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInstances = {
  type t
  @ocaml.doc("<p>This input determines which instances to list.</p>")
  type request = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>A list of instance states that will filter the instances returned with this
         request.</p>")
    @as("InstanceStates")
    instanceStates: option<instanceStateList>,
    @ocaml.doc("<p>The node type of the instance fleet. For example MASTER, CORE, or TASK.</p>")
    @as("InstanceFleetType")
    instanceFleetType: option<instanceFleetType>,
    @ocaml.doc("<p>The unique identifier of the instance fleet.</p>") @as("InstanceFleetId")
    instanceFleetId: option<instanceFleetId>,
    @ocaml.doc("<p>The type of instance group for which to list the instances.</p>")
    @as("InstanceGroupTypes")
    instanceGroupTypes: option<instanceGroupTypeList>,
    @ocaml.doc("<p>The identifier of the instance group for which to list the instances.</p>")
    @as("InstanceGroupId")
    instanceGroupId: option<instanceGroupId>,
    @ocaml.doc("<p>The identifier of the cluster for which to list the instances.</p>")
    @as("ClusterId")
    clusterId: clusterId,
  }
  @ocaml.doc("<p>This output contains the list of instances.</p>")
  type response = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The list of instances for the cluster and given filters.</p>") @as("Instances")
    instances: option<instanceList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "ListInstancesCommand"
  let make = (
    ~clusterId,
    ~marker=?,
    ~instanceStates=?,
    ~instanceFleetType=?,
    ~instanceFleetId=?,
    ~instanceGroupTypes=?,
    ~instanceGroupId=?,
    (),
  ) =>
    new({
      marker: marker,
      instanceStates: instanceStates,
      instanceFleetType: instanceFleetType,
      instanceFleetId: instanceFleetId,
      instanceGroupTypes: instanceGroupTypes,
      instanceGroupId: instanceGroupId,
      clusterId: clusterId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListClusters = {
  type t
  @ocaml.doc("<p>This input determines how the ListClusters action filters the list of clusters that it
         returns.</p>")
  type request = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The cluster state filters to apply when listing clusters.</p>")
    @as("ClusterStates")
    clusterStates: option<clusterStateList>,
    @ocaml.doc("<p>The creation date and time end value filter for listing clusters.</p>")
    @as("CreatedBefore")
    createdBefore: option<date>,
    @ocaml.doc("<p>The creation date and time beginning value filter for listing clusters.</p>")
    @as("CreatedAfter")
    createdAfter: option<date>,
  }
  @ocaml.doc("<p>This contains a ClusterSummaryList with the cluster details; for example, the cluster
         IDs, names, and status.</p>")
  type response = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The list of clusters for the account based on the given filters.</p>")
    @as("Clusters")
    clusters: option<clusterSummaryList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "ListClustersCommand"
  let make = (~marker=?, ~clusterStates=?, ~createdBefore=?, ~createdAfter=?, ()) =>
    new({
      marker: marker,
      clusterStates: clusterStates,
      createdBefore: createdBefore,
      createdAfter: createdAfter,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddJobFlowSteps = {
  type t
  @ocaml.doc("<p> The input argument to the <a>AddJobFlowSteps</a> operation. </p>")
  type request = {
    @ocaml.doc("<p> A list of <a>StepConfig</a> to be executed by the job flow. </p>") @as("Steps")
    steps: stepConfigList,
    @ocaml.doc("<p>A string that uniquely identifies the job flow. This identifier is returned by <a>RunJobFlow</a> and can also be obtained from <a>ListClusters</a>.
      </p>")
    @as("JobFlowId")
    jobFlowId: xmlStringMaxLen256,
  }
  @ocaml.doc("<p> The output for the <a>AddJobFlowSteps</a> operation. </p>")
  type response = {
    @ocaml.doc("<p>The identifiers of the list of steps added to the job flow.</p>") @as("StepIds")
    stepIds: option<stepIdsList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "AddJobFlowStepsCommand"
  let make = (~steps, ~jobFlowId, ()) => new({steps: steps, jobFlowId: jobFlowId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutAutoScalingPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the definition of the automatic scaling policy.</p>")
    @as("AutoScalingPolicy")
    autoScalingPolicy: autoScalingPolicy,
    @ocaml.doc("<p>Specifies the ID of the instance group to which the automatic scaling policy is
         applied.</p>")
    @as("InstanceGroupId")
    instanceGroupId: instanceGroupId,
    @ocaml.doc("<p>Specifies the ID of a cluster. The instance group to which the automatic scaling policy
         is applied is within this cluster.</p>")
    @as("ClusterId")
    clusterId: clusterId,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") @as("ClusterArn")
    clusterArn: option<arnType>,
    @ocaml.doc("<p>The automatic scaling policy definition.</p>") @as("AutoScalingPolicy")
    autoScalingPolicy: option<autoScalingPolicyDescription>,
    @ocaml.doc(
      "<p>Specifies the ID of the instance group to which the scaling policy is applied.</p>"
    )
    @as("InstanceGroupId")
    instanceGroupId: option<instanceGroupId>,
    @ocaml.doc("<p>Specifies the ID of a cluster. The instance group to which the automatic scaling policy
         is applied is within this cluster.</p>")
    @as("ClusterId")
    clusterId: option<clusterId>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "PutAutoScalingPolicyCommand"
  let make = (~autoScalingPolicy, ~instanceGroupId, ~clusterId, ()) =>
    new({
      autoScalingPolicy: autoScalingPolicy,
      instanceGroupId: instanceGroupId,
      clusterId: clusterId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJobFlows = {
  type t
  @ocaml.doc("<p> The input for the <a>DescribeJobFlows</a> operation. </p>")
  type request = {
    @ocaml.doc("<p>Return only job flows whose state is contained in this list.</p>")
    @as("JobFlowStates")
    jobFlowStates: option<jobFlowExecutionStateList>,
    @ocaml.doc("<p>Return only job flows whose job flow ID is contained in this list.</p>")
    @as("JobFlowIds")
    jobFlowIds: option<xmlStringList>,
    @ocaml.doc("<p>Return only job flows created before this date and time.</p>")
    @as("CreatedBefore")
    createdBefore: option<date>,
    @ocaml.doc("<p>Return only job flows created after this date and time.</p>") @as("CreatedAfter")
    createdAfter: option<date>,
  }
  @ocaml.doc("<p> The output for the <a>DescribeJobFlows</a> operation. </p>")
  type response = {
    @ocaml.doc("<p>A list of job flows matching the parameters supplied.</p>") @as("JobFlows")
    jobFlows: option<jobFlowDetailList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "DescribeJobFlowsCommand"
  let make = (~jobFlowStates=?, ~jobFlowIds=?, ~createdBefore=?, ~createdAfter=?, ()) =>
    new({
      jobFlowStates: jobFlowStates,
      jobFlowIds: jobFlowIds,
      createdBefore: createdBefore,
      createdAfter: createdAfter,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBlockPublicAccessConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>A configuration for Amazon EMR block public access. The configuration applies to all
         clusters created in your account for the current Region. The configuration specifies
         whether block public access is enabled. If block public access is enabled, security groups
         associated with the cluster cannot have rules that allow inbound traffic from 0.0.0.0/0 or
         ::/0 on a port, unless the port is specified as an exception using
            <code>PermittedPublicSecurityGroupRuleRanges</code> in the
            <code>BlockPublicAccessConfiguration</code>. By default, Port 22 (SSH) is an exception,
         and public access is allowed on this port. You can change this by updating
            <code>BlockPublicSecurityGroupRules</code> to remove the exception.</p>
         <note>
            <p>For accounts that created clusters in a Region before November 25, 2019, block public
            access is disabled by default in that Region. To use this feature, you must manually
            enable and configure it. For accounts that did not create an EMR cluster in a Region
            before this date, block public access is enabled by default in that Region.</p>
         </note>")
    @as("BlockPublicAccessConfiguration")
    blockPublicAccessConfiguration: blockPublicAccessConfiguration,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "PutBlockPublicAccessConfigurationCommand"
  let make = (~blockPublicAccessConfiguration, ()) =>
    new({blockPublicAccessConfiguration: blockPublicAccessConfiguration})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetBlockPublicAccessConfiguration = {
  type t

  type response = {
    @ocaml.doc("<p>Properties that describe the AWS principal that created the
            <code>BlockPublicAccessConfiguration</code> using the
            <code>PutBlockPublicAccessConfiguration</code> action as well as the date and time that
         the configuration was created. Each time a configuration for block public access is
         updated, Amazon EMR updates this metadata.</p>")
    @as("BlockPublicAccessConfigurationMetadata")
    blockPublicAccessConfigurationMetadata: blockPublicAccessConfigurationMetadata,
    @ocaml.doc("<p>A configuration for Amazon EMR block public access. The configuration applies to all
         clusters created in your account for the current Region. The configuration specifies
         whether block public access is enabled. If block public access is enabled, security groups
         associated with the cluster cannot have rules that allow inbound traffic from 0.0.0.0/0 or
         ::/0 on a port, unless the port is specified as an exception using
            <code>PermittedPublicSecurityGroupRuleRanges</code> in the
            <code>BlockPublicAccessConfiguration</code>. By default, Port 22 (SSH) is an exception,
         and public access is allowed on this port. You can change this by updating the block public
         access configuration to remove the exception.</p>
         <note>
            <p>For accounts that created clusters in a Region before November 25, 2019, block public
            access is disabled by default in that Region. To use this feature, you must manually
            enable and configure it. For accounts that did not create an EMR cluster in a Region
            before this date, block public access is enabled by default in that Region.</p>
         </note>")
    @as("BlockPublicAccessConfiguration")
    blockPublicAccessConfiguration: blockPublicAccessConfiguration,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: unit => t = "GetBlockPublicAccessConfigurationCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCluster = {
  type t
  @ocaml.doc("<p>This input determines which cluster to describe.</p>")
  type request = {
    @ocaml.doc("<p>The identifier of the cluster to describe.</p>") @as("ClusterId")
    clusterId: clusterId,
  }
  @ocaml.doc("<p>This output contains the description of the cluster.</p>")
  type response = {
    @ocaml.doc("<p>This output contains the details for the requested cluster.</p>") @as("Cluster")
    cluster: option<cluster>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "DescribeClusterCommand"
  let make = (~clusterId, ()) => new({clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyInstanceGroups = {
  type t
  @ocaml.doc("<p>Change the size of some instance groups.</p>")
  type request = {
    @ocaml.doc("<p>Instance groups to change.</p>") @as("InstanceGroups")
    instanceGroups: option<instanceGroupModifyConfigList>,
    @ocaml.doc("<p>The ID of the cluster to which the instance group belongs.</p>") @as("ClusterId")
    clusterId: option<clusterId>,
  }

  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "ModifyInstanceGroupsCommand"
  let make = (~instanceGroups=?, ~clusterId=?, ()) =>
    new({instanceGroups: instanceGroups, clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListInstanceGroups = {
  type t
  @ocaml.doc("<p>This input determines which instance groups to retrieve.</p>")
  type request = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The identifier of the cluster for which to list the instance groups.</p>")
    @as("ClusterId")
    clusterId: clusterId,
  }
  @ocaml.doc("<p>This input determines which instance groups to retrieve.</p>")
  type response = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The list of instance groups for the cluster and given filters.</p>")
    @as("InstanceGroups")
    instanceGroups: option<instanceGroupList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "ListInstanceGroupsCommand"
  let make = (~clusterId, ~marker=?, ()) => new({marker: marker, clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddInstanceGroups = {
  type t
  @ocaml.doc("<p>Input to an AddInstanceGroups call.</p>")
  type request = {
    @ocaml.doc("<p>Job flow in which to add the instance groups.</p>") @as("JobFlowId")
    jobFlowId: xmlStringMaxLen256,
    @ocaml.doc("<p>Instance groups to add.</p>") @as("InstanceGroups")
    instanceGroups: instanceGroupConfigList,
  }
  @ocaml.doc("<p>Output from an AddInstanceGroups call.</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name of the cluster.</p>") @as("ClusterArn")
    clusterArn: option<arnType>,
    @ocaml.doc("<p>Instance group IDs of the newly created instance groups.</p>")
    @as("InstanceGroupIds")
    instanceGroupIds: option<instanceGroupIdsList>,
    @ocaml.doc("<p>The job flow ID in which the instance groups are added.</p>") @as("JobFlowId")
    jobFlowId: option<xmlStringMaxLen256>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "AddInstanceGroupsCommand"
  let make = (~jobFlowId, ~instanceGroups, ()) =>
    new({jobFlowId: jobFlowId, instanceGroups: instanceGroups})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddInstanceFleet = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the configuration of the instance fleet.</p>") @as("InstanceFleet")
    instanceFleet: instanceFleetConfig,
    @ocaml.doc("<p>The unique identifier of the cluster.</p>") @as("ClusterId")
    clusterId: xmlStringMaxLen256,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name of the cluster.</p>") @as("ClusterArn")
    clusterArn: option<arnType>,
    @ocaml.doc("<p>The unique identifier of the instance fleet.</p>") @as("InstanceFleetId")
    instanceFleetId: option<instanceFleetId>,
    @ocaml.doc("<p>The unique identifier of the cluster.</p>") @as("ClusterId")
    clusterId: option<xmlStringMaxLen256>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "AddInstanceFleetCommand"
  let make = (~instanceFleet, ~clusterId, ()) =>
    new({instanceFleet: instanceFleet, clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInstanceFleets = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The unique identifier of the cluster.</p>") @as("ClusterId")
    clusterId: clusterId,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The list of instance fleets for the cluster and given filters.</p>")
    @as("InstanceFleets")
    instanceFleets: option<instanceFleetList>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new
  external new: request => t = "ListInstanceFleetsCommand"
  let make = (~clusterId, ~marker=?, ()) => new({marker: marker, clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RunJobFlow = {
  type t
  @ocaml.doc("<p> Input to the <a>RunJobFlow</a> operation. </p>")
  type request = {
    @ocaml.doc("<p>The specified placement group configuration for an Amazon EMR cluster.</p>")
    @as("PlacementGroupConfigs")
    placementGroupConfigs: option<placementGroupConfigList>,
    @ocaml.doc("<p> The specified managed scaling policy for an Amazon EMR cluster. </p>")
    @as("ManagedScalingPolicy")
    managedScalingPolicy: option<managedScalingPolicy>,
    @ocaml.doc("<p>Specifies the number of steps that can be executed concurrently. The default value is
            <code>1</code>. The maximum value is <code>256</code>.</p>")
    @as("StepConcurrencyLevel")
    stepConcurrencyLevel: option<integer_>,
    @ocaml.doc("<p>Attributes for Kerberos configuration when Kerberos authentication is enabled using a
         security configuration. For more information see <a href=\"https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html\">Use Kerberos Authentication</a>
         in the <i>Amazon EMR Management Guide</i>.</p>")
    @as("KerberosAttributes")
    kerberosAttributes: option<kerberosAttributes>,
    @ocaml.doc("<p>Applies only when <code>CustomAmiID</code> is used. Specifies which updates from the
         Amazon Linux AMI package repositories to apply automatically when the instance boots using
         the AMI. If omitted, the default is <code>SECURITY</code>, which indicates that only
         security updates are applied. If <code>NONE</code> is specified, no updates are applied,
         and all updates must be applied manually.</p>")
    @as("RepoUpgradeOnBoot")
    repoUpgradeOnBoot: option<repoUpgradeOnBoot>,
    @ocaml.doc("<p>The size, in GiB, of the Amazon EBS root device volume of the Linux AMI that is used for
         each EC2 instance. Available in Amazon EMR version 4.x and later.</p>")
    @as("EbsRootVolumeSize")
    ebsRootVolumeSize: option<integer_>,
    @ocaml.doc("<p>Available only in Amazon EMR version 5.7.0 and later. The ID of a custom Amazon
         EBS-backed Linux AMI. If specified, Amazon EMR uses this AMI when it launches cluster EC2
         instances. For more information about custom AMIs in Amazon EMR, see <a href=\"https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-custom-ami.html\">Using a Custom
            AMI</a> in the <i>Amazon EMR Management Guide</i>. If omitted, the
         cluster uses the base Linux AMI for the <code>ReleaseLabel</code> specified. For Amazon EMR
         versions 2.x and 3.x, use <code>AmiVersion</code> instead.</p>
         <p>For information about creating a custom AMI, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html\">Creating an Amazon EBS-Backed
            Linux AMI</a> in the <i>Amazon Elastic Compute Cloud User Guide for Linux
            Instances</i>. For information about finding an AMI ID, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html\">Finding a Linux
            AMI</a>. </p>")
    @as("CustomAmiId")
    customAmiId: option<xmlStringMaxLen256>,
    @ocaml.doc("<p>Specifies the way that individual Amazon EC2 instances terminate when an automatic
         scale-in activity occurs or an instance group is resized.
            <code>TERMINATE_AT_INSTANCE_HOUR</code> indicates that Amazon EMR terminates nodes at
         the instance-hour boundary, regardless of when the request to terminate the instance was
         submitted. This option is only available with Amazon EMR 5.1.0 and later and is the default
         for clusters created using that version. <code>TERMINATE_AT_TASK_COMPLETION</code>
         indicates that Amazon EMR adds nodes to a deny list and drains tasks from nodes before
         terminating the Amazon EC2 instances, regardless of the instance-hour boundary. With either
         behavior, Amazon EMR removes the least active nodes first and blocks instance termination
         if it could lead to HDFS corruption. <code>TERMINATE_AT_TASK_COMPLETION</code> available
         only in Amazon EMR version 4.1.0 and later, and is the default for versions of Amazon EMR
         earlier than 5.1.0.</p>")
    @as("ScaleDownBehavior")
    scaleDownBehavior: option<scaleDownBehavior>,
    @ocaml.doc("<p>An IAM role for automatic scaling policies. The default role is
            <code>EMR_AutoScaling_DefaultRole</code>. The IAM role provides permissions that the
         automatic scaling feature requires to launch and terminate EC2 instances in an instance
         group.</p>")
    @as("AutoScalingRole")
    autoScalingRole: option<xmlString>,
    @ocaml.doc("<p>The name of a security configuration to apply to the cluster.</p>")
    @as("SecurityConfiguration")
    securityConfiguration: option<xmlString>,
    @ocaml.doc(
      "<p>A list of tags to associate with a cluster and propagate to Amazon EC2 instances.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The IAM role that will be assumed by the Amazon EMR service to access AWS resources on
         your behalf.</p>")
    @as("ServiceRole")
    serviceRole: option<xmlString>,
    @ocaml.doc("<p>Also called instance profile and EC2 role. An IAM role for an EMR cluster. The EC2
         instances of the cluster assume this role. The default role is
            <code>EMR_EC2_DefaultRole</code>. In order to use the default role, you must have
         already created it using the CLI or console.</p>")
    @as("JobFlowRole")
    jobFlowRole: option<xmlString>,
    @ocaml.doc("<p>A value of <code>true</code> indicates that all IAM users in the AWS account can perform
         cluster actions if they have the proper IAM policy permissions. This is the default. A
         value of <code>false</code> indicates that only the IAM user who created the cluster can
         perform actions.</p>")
    @as("VisibleToAllUsers")
    visibleToAllUsers: option<boolean_>,
    @ocaml.doc("<p>For Amazon EMR releases 4.0 and later. The list of configurations supplied for the EMR
         cluster you are creating.</p>")
    @as("Configurations")
    configurations: option<configurationList>,
    @ocaml.doc("<p>Applies to Amazon EMR releases 4.0 and later. A case-insensitive list of applications
         for Amazon EMR to install and configure when launching the cluster. For a list of
         applications available for each Amazon EMR release version, see the <a href=\"https://docs.aws.amazon.com/emr/latest/ReleaseGuide/\">Amazon EMR Release
         Guide</a>.</p>")
    @as("Applications")
    applications: option<applicationList>,
    @ocaml.doc("<note>
            <p>For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and later, use
            Applications.</p>
         </note>
         <p>A list of strings that indicates third-party software to use with the job flow that
         accepts a user argument list. EMR accepts and forwards the argument list to the
         corresponding installation script as bootstrap action arguments. For more information, see
         \"Launch a Job Flow on the MapR Distribution for Hadoop\" in the <a href=\"https://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf\">Amazon EMR Developer Guide</a>. Supported
         values are:</p>
         <ul>
            <li>
               <p>\"mapr-m3\" - launch the cluster using MapR M3 Edition.</p>
            </li>
            <li>
               <p>\"mapr-m5\" - launch the cluster using MapR M5 Edition.</p>
            </li>
            <li>
               <p>\"mapr\" with the user arguments specifying \"--edition,m3\" or \"--edition,m5\" -
               launch the job flow using MapR M3 or M5 Edition respectively.</p>
            </li>
            <li>
               <p>\"mapr-m7\" - launch the cluster using MapR M7 Edition.</p>
            </li>
            <li>
               <p>\"hunk\" - launch the cluster with the Hunk Big Data Analytics Platform.</p>
            </li>
            <li>
               <p>\"hue\"- launch the cluster with Hue installed.</p>
            </li>
            <li>
               <p>\"spark\" - launch the cluster with Apache Spark installed.</p>
            </li>
            <li>
               <p>\"ganglia\" - launch the cluster with the Ganglia Monitoring System
               installed.</p>
            </li>
         </ul>")
    @as("NewSupportedProducts")
    newSupportedProducts: option<newSupportedProductsList>,
    @ocaml.doc("<note>
            <p>For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and later, use
            Applications.</p>
         </note>
         <p>A list of strings that indicates third-party software to use. For more information, see
         the <a href=\"https://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf\">Amazon EMR
            Developer Guide</a>. Currently supported values are:</p>
         <ul>
            <li>
               <p>\"mapr-m3\" - launch the job flow using MapR M3 Edition.</p>
            </li>
            <li>
               <p>\"mapr-m5\" - launch the job flow using MapR M5 Edition.</p>
            </li>
         </ul>")
    @as("SupportedProducts")
    supportedProducts: option<supportedProductsList>,
    @ocaml.doc(
      "<p>A list of bootstrap actions to run before Hadoop starts on the cluster nodes.</p>"
    )
    @as("BootstrapActions")
    bootstrapActions: option<bootstrapActionConfigList>,
    @ocaml.doc("<p>A list of steps to run.</p>") @as("Steps") steps: option<stepConfigList>,
    @ocaml.doc("<p>A specification of the number and type of Amazon EC2 instances.</p>")
    @as("Instances")
    instances: jobFlowInstancesConfig,
    @ocaml.doc("<p>The Amazon EMR release label, which determines the version of open-source application
         packages installed on the cluster. Release labels are in the form <code>emr-x.x.x</code>,
         where x.x.x is an Amazon EMR release version such as <code>emr-5.14.0</code>. For more
         information about Amazon EMR release versions and included application versions and
         features, see <a href=\"https://docs.aws.amazon.com/emr/latest/ReleaseGuide/\">https://docs.aws.amazon.com/emr/latest/ReleaseGuide/</a>. The release
         label applies only to Amazon EMR releases version 4.0 and later. Earlier versions use
            <code>AmiVersion</code>.</p>")
    @as("ReleaseLabel")
    releaseLabel: option<xmlStringMaxLen256>,
    @ocaml.doc("<p>Applies only to Amazon EMR AMI versions 3.x and 2.x. For Amazon EMR releases 4.0 and
         later, <code>ReleaseLabel</code> is used. To specify a custom AMI, use
            <code>CustomAmiID</code>.</p>")
    @as("AmiVersion")
    amiVersion: option<xmlStringMaxLen256>,
    @ocaml.doc("<p>A JSON string for selecting additional features.</p>") @as("AdditionalInfo")
    additionalInfo: option<xmlString>,
    @ocaml.doc("<p>The AWS KMS customer master key (CMK) used for encrypting log files. If a value is not
         provided, the logs remain encrypted by AES-256. This attribute is only available with
         Amazon EMR version 5.30.0 and later, excluding Amazon EMR 6.0.0.</p>")
    @as("LogEncryptionKmsKeyId")
    logEncryptionKmsKeyId: option<xmlString>,
    @ocaml.doc("<p>The location in Amazon S3 to write the log files of the job flow. If a value is not
         provided, logs are not created.</p>")
    @as("LogUri")
    logUri: option<xmlString>,
    @ocaml.doc("<p>The name of the job flow.</p>") @as("Name") name: xmlStringMaxLen256,
  }
  @ocaml.doc("<p> The result of the <a>RunJobFlow</a> operation. </p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") @as("ClusterArn")
    clusterArn: option<arnType>,
    @ocaml.doc("<p>A unique identifier for the job flow.</p>") @as("JobFlowId")
    jobFlowId: option<xmlStringMaxLen256>,
  }
  @module("@aws-sdk/client-elasticmapreduce") @new external new: request => t = "RunJobFlowCommand"
  let make = (
    ~instances,
    ~name,
    ~placementGroupConfigs=?,
    ~managedScalingPolicy=?,
    ~stepConcurrencyLevel=?,
    ~kerberosAttributes=?,
    ~repoUpgradeOnBoot=?,
    ~ebsRootVolumeSize=?,
    ~customAmiId=?,
    ~scaleDownBehavior=?,
    ~autoScalingRole=?,
    ~securityConfiguration=?,
    ~tags=?,
    ~serviceRole=?,
    ~jobFlowRole=?,
    ~visibleToAllUsers=?,
    ~configurations=?,
    ~applications=?,
    ~newSupportedProducts=?,
    ~supportedProducts=?,
    ~bootstrapActions=?,
    ~steps=?,
    ~releaseLabel=?,
    ~amiVersion=?,
    ~additionalInfo=?,
    ~logEncryptionKmsKeyId=?,
    ~logUri=?,
    (),
  ) =>
    new({
      placementGroupConfigs: placementGroupConfigs,
      managedScalingPolicy: managedScalingPolicy,
      stepConcurrencyLevel: stepConcurrencyLevel,
      kerberosAttributes: kerberosAttributes,
      repoUpgradeOnBoot: repoUpgradeOnBoot,
      ebsRootVolumeSize: ebsRootVolumeSize,
      customAmiId: customAmiId,
      scaleDownBehavior: scaleDownBehavior,
      autoScalingRole: autoScalingRole,
      securityConfiguration: securityConfiguration,
      tags: tags,
      serviceRole: serviceRole,
      jobFlowRole: jobFlowRole,
      visibleToAllUsers: visibleToAllUsers,
      configurations: configurations,
      applications: applications,
      newSupportedProducts: newSupportedProducts,
      supportedProducts: supportedProducts,
      bootstrapActions: bootstrapActions,
      steps: steps,
      instances: instances,
      releaseLabel: releaseLabel,
      amiVersion: amiVersion,
      additionalInfo: additionalInfo,
      logEncryptionKmsKeyId: logEncryptionKmsKeyId,
      logUri: logUri,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
