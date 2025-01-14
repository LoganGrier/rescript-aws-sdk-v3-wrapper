type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-rds") @new external createClient: unit => awsServiceClient = "DocDBClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type tstamp = Js.Date.t
type string_ = string
type sourceType = [
  | @as("db-cluster-snapshot") #Db_Cluster_Snapshot
  | @as("db-cluster") #Db_Cluster
  | @as("db-snapshot") #Db_Snapshot
  | @as("db-security-group") #Db_Security_Group
  | @as("db-parameter-group") #Db_Parameter_Group
  | @as("db-instance") #Db_Instance
]
type integerOptional = int
type integer_ = int
type exceptionMessage = string
type booleanOptional = bool
type boolean_ = bool
type applyMethod = [@as("pending-reboot") #Pending_Reboot | @as("immediate") #Immediate]
@ocaml.doc("<p>Used as a response element for queries on virtual private cloud (VPC) security group
            membership.</p>")
type vpcSecurityGroupMembership = {
  @ocaml.doc("<p>The status of the VPC security group.</p>") @as("Status") status: option<string_>,
  @ocaml.doc("<p>The name of the VPC security group.</p>") @as("VpcSecurityGroupId")
  vpcSecurityGroupId: option<string_>,
}
type vpcSecurityGroupIdList = array<string_>
@ocaml.doc("<p>The version of the database engine that an instance can be upgraded to.</p>")
type upgradeTarget = {
  @ocaml.doc("<p>A value that indicates whether a database engine is upgraded to a major
            version.</p>")
  @as("IsMajorVersionUpgrade")
  isMajorVersionUpgrade: option<boolean_>,
  @ocaml.doc("<p>A value that indicates whether the target version is applied to any source DB
            instances that have <code>AutoMinorVersionUpgrade</code> set to
            <code>true</code>.</p>")
  @as("AutoUpgrade")
  autoUpgrade: option<boolean_>,
  @ocaml.doc("<p>The version of the database engine that an instance can be upgraded to.</p>")
  @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The version number of the upgrade target database engine.</p>")
  @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>The name of the upgrade target database engine.</p>") @as("Engine")
  engine: option<string_>,
}
@ocaml.doc(
  "<p>Metadata assigned to an Amazon DocumentDB resource consisting of a key-value pair.</p>"
)
type tag = {
  @ocaml.doc("<p>The optional value of the tag. The string value can be from 1 to 256 Unicode
            characters in length and can't be prefixed with \"aws:\" or \"rds:\". The string can contain
            only the set of Unicode letters, digits, white space, '_', '.', '/', '=', '+', '-' (Java
            regex: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-]*)$\").</p>")
  @as("Value")
  value: option<string_>,
  @ocaml.doc("<p>The required name of the tag. The string value can be from 1 to 128 Unicode characters
            in length and can't be prefixed with \"aws:\" or \"rds:\". The string can contain only the
            set of Unicode letters, digits, white space, '_', '.', '/', '=', '+', '-' (Java regex:
            \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-]*)$\").</p>")
  @as("Key")
  key: option<string_>,
}
type subnetIdentifierList = array<string_>
@ocaml.doc("<p>Provides information about a pending maintenance action for a resource.</p>")
type pendingMaintenanceAction = {
  @ocaml.doc("<p>A description providing more detail about the maintenance action.</p>")
  @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The effective date when the pending maintenance action is applied to the
            resource.</p>")
  @as("CurrentApplyDate")
  currentApplyDate: option<tstamp>,
  @ocaml.doc("<p>Indicates the type of opt-in request that has been received for the resource.</p>")
  @as("OptInStatus")
  optInStatus: option<string_>,
  @ocaml.doc("<p>The date when the maintenance action is automatically applied. The maintenance action
            is applied to the resource on this date regardless of the maintenance window for the
            resource. If this date is specified, any <code>immediate</code> opt-in requests are
            ignored.</p>")
  @as("ForcedApplyDate")
  forcedApplyDate: option<tstamp>,
  @ocaml.doc("<p>The date of the maintenance window when the action is applied. The maintenance action
            is applied to the resource during its first maintenance window after this date. If this
            date is specified, any <code>next-maintenance</code> opt-in requests are ignored.</p>")
  @as("AutoAppliedAfterDate")
  autoAppliedAfterDate: option<tstamp>,
  @ocaml.doc("<p>The type of pending maintenance action that is available for the resource.</p>")
  @as("Action")
  action: option<string_>,
}
@ocaml.doc("<p>Detailed information about an individual parameter.</p>")
type parameter = {
  @ocaml.doc("<p>Indicates when to apply parameter updates.</p>") @as("ApplyMethod")
  applyMethod: option<applyMethod>,
  @ocaml.doc("<p>The earliest engine version to which the parameter can apply.</p>")
  @as("MinimumEngineVersion")
  minimumEngineVersion: option<string_>,
  @ocaml.doc("<p> Indicates whether (<code>true</code>) or not (<code>false</code>) the parameter can
            be modified. Some parameters have security or operational implications that prevent them
            from being changed. </p>")
  @as("IsModifiable")
  isModifiable: option<boolean_>,
  @ocaml.doc("<p>Specifies the valid range of values for the parameter.</p>") @as("AllowedValues")
  allowedValues: option<string_>,
  @ocaml.doc("<p>Specifies the valid data type for the parameter.</p>") @as("DataType")
  dataType: option<string_>,
  @ocaml.doc("<p>Specifies the engine-specific parameters type.</p>") @as("ApplyType")
  applyType: option<string_>,
  @ocaml.doc("<p>Indicates the source of the parameter value.</p>") @as("Source")
  source: option<string_>,
  @ocaml.doc("<p>Provides a description of the parameter.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>Specifies the value of the parameter.</p>") @as("ParameterValue")
  parameterValue: option<string_>,
  @ocaml.doc("<p>Specifies the name of the parameter.</p>") @as("ParameterName")
  parameterName: option<string_>,
}
type logTypeList = array<string_>
type keyList = array<string_>
type filterValueList = array<string_>
type eventCategoriesList = array<string_>
@ocaml.doc("<p>Network information for accessing a cluster or instance. Client programs must
            specify a valid endpoint to access these Amazon DocumentDB resources.</p>")
type endpoint = {
  @ocaml.doc("<p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>")
  @as("HostedZoneId")
  hostedZoneId: option<string_>,
  @ocaml.doc("<p>Specifies the port that the database engine is listening on.</p>") @as("Port")
  port: option<integer_>,
  @ocaml.doc("<p>Specifies the DNS address of the instance.</p>") @as("Address")
  address: option<string_>,
}
@ocaml.doc("<p>Provides a list of status information for an instance.</p>")
type dbinstanceStatusInfo = {
  @ocaml.doc("<p>Details of the error if there is an error for the instance. If the instance is not in
            an error state, this value is blank.</p>")
  @as("Message")
  message: option<string_>,
  @ocaml.doc("<p>Status of the instance. For a <code>StatusType</code> of read replica, the values
            can be <code>replicating</code>, error, <code>stopped</code>, or
            <code>terminated</code>.</p>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>A Boolean value that is <code>true</code> if the instance is operating normally, or
                <code>false</code> if the instance is in an error state.</p>")
  @as("Normal")
  normal: option<boolean_>,
  @ocaml.doc("<p>This value is currently \"<code>read replication</code>.\"</p>") @as("StatusType")
  statusType: option<string_>,
}
@ocaml.doc("<p>Describes an AWS Identity and Access Management (IAM) role that is associated with a
            cluster.</p>")
type dbclusterRole = {
  @ocaml.doc("<p>Describes the state of association between the IAM role and the cluster. The
                <code>Status</code> property returns one of the following values:</p>
        <ul>
            <li>
                <p>
                  <code>ACTIVE</code> - The IAM role ARN is associated with the cluster and
                    can be used to access other AWS services on your behalf.</p>
            </li>
            <li>
                <p>
                  <code>PENDING</code> - The IAM role ARN is being associated with the DB
                    cluster.</p>
            </li>
            <li>
                <p>
                  <code>INVALID</code> - The IAM role ARN is associated with the cluster, but
                    the cluster cannot assume the IAM role to access other AWS services on your
                    behalf.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role that is associated with the DB
            cluster.</p>")
  @as("RoleArn")
  roleArn: option<string_>,
}
@ocaml.doc("<p>Detailed information about a cluster parameter group. </p>")
type dbclusterParameterGroup = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the cluster parameter group.</p>")
  @as("DBClusterParameterGroupArn")
  dbclusterParameterGroupArn: option<string_>,
  @ocaml.doc("<p>Provides the customer-specified description for this cluster parameter
            group.</p>")
  @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>Provides the name of the parameter group family that this cluster parameter
            group is compatible with.</p>")
  @as("DBParameterGroupFamily")
  dbparameterGroupFamily: option<string_>,
  @ocaml.doc("<p>Provides the name of the cluster parameter group.</p>")
  @as("DBClusterParameterGroupName")
  dbclusterParameterGroupName: option<string_>,
}
@ocaml.doc("<p>Contains information about an instance that is part of a cluster.</p>")
type dbclusterMember = {
  @ocaml.doc("<p>A value that specifies the order in which an Amazon DocumentDB replica is promoted to the
            primary instance after a failure of the existing primary instance. </p>")
  @as("PromotionTier")
  promotionTier: option<integerOptional>,
  @ocaml.doc("<p>Specifies the status of the cluster parameter group for this member of the DB
            cluster.</p>")
  @as("DBClusterParameterGroupStatus")
  dbclusterParameterGroupStatus: option<string_>,
  @ocaml.doc("<p>A value that is <code>true</code> if the cluster member is the primary instance for
            the cluster and <code>false</code> otherwise.</p>")
  @as("IsClusterWriter")
  isClusterWriter: option<boolean_>,
  @ocaml.doc("<p>Specifies the instance identifier for this member of the cluster.</p>")
  @as("DBInstanceIdentifier")
  dbinstanceIdentifier: option<string_>,
}
@ocaml.doc("<p>A certificate authority (CA) certificate for an AWS account.</p>")
type certificate = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the certificate.</p>
         <p>Example: <code>arn:aws:rds:us-east-1::cert:rds-ca-2019</code>
         </p>")
  @as("CertificateArn")
  certificateArn: option<string_>,
  @ocaml.doc("<p>The date-time after which the certificate is no longer valid.</p>
         <p>Example: <code>2024-07-31T17:57:09Z</code>
         </p>")
  @as("ValidTill")
  validTill: option<tstamp>,
  @ocaml.doc("<p>The starting date-time from which the certificate is valid.</p>
         <p>Example: <code>2019-07-31T17:57:09Z</code>
         </p>")
  @as("ValidFrom")
  validFrom: option<tstamp>,
  @ocaml.doc("<p>The thumbprint of the certificate.</p>") @as("Thumbprint")
  thumbprint: option<string_>,
  @ocaml.doc("<p>The type of the certificate.</p>
         <p>Example: <code>CA</code>
         </p>")
  @as("CertificateType")
  certificateType: option<string_>,
  @ocaml.doc("<p>The unique key that identifies a certificate.</p>
         <p>Example: <code>rds-ca-2019</code>
         </p>")
  @as("CertificateIdentifier")
  certificateIdentifier: option<string_>,
}
type availabilityZones = array<string_>
@ocaml.doc("<p>Information about an Availability Zone.</p>")
type availabilityZone = {
  @ocaml.doc("<p>The name of the Availability Zone.</p>") @as("Name") name: option<string_>,
}
type attributeValueList = array<string_>
type vpcSecurityGroupMembershipList = array<vpcSecurityGroupMembership>
type validUpgradeTargetList = array<upgradeTarget>
type tagList_ = array<tag>
@ocaml.doc("<p> Detailed information about a subnet. </p>")
type subnet = {
  @ocaml.doc("<p>Specifies the status of the subnet.</p>") @as("SubnetStatus")
  subnetStatus: option<string_>,
  @ocaml.doc("<p>Specifies the Availability Zone for the subnet.</p>") @as("SubnetAvailabilityZone")
  subnetAvailabilityZone: option<availabilityZone>,
  @ocaml.doc("<p>Specifies the identifier of the subnet.</p>") @as("SubnetIdentifier")
  subnetIdentifier: option<string_>,
}
type pendingMaintenanceActionDetails = array<pendingMaintenanceAction>
@ocaml.doc("<p>A list of the log types whose configuration is still pending. These log types are in
            the process of being activated or deactivated.</p>")
type pendingCloudwatchLogsExports = {
  @ocaml.doc("<p>Log types that are in the process of being enabled. After they are enabled, these log
            types are exported to Amazon CloudWatch Logs.</p>")
  @as("LogTypesToDisable")
  logTypesToDisable: option<logTypeList>,
  @ocaml.doc("<p>Log types that are in the process of being deactivated. After they are deactivated,
            these log types aren't exported to CloudWatch Logs.</p>")
  @as("LogTypesToEnable")
  logTypesToEnable: option<logTypeList>,
}
type parametersList = array<parameter>
@ocaml.doc("<p>A named set of filter values, used to return a more specific list of results. You can
            use a filter to match a set of resources by specific criteria, such as IDs.</p>
        <p>Wildcards are not supported in filters.</p>")
type filter = {
  @ocaml.doc("<p>One or more filter values. Filter values are case sensitive.</p>") @as("Values")
  values: filterValueList,
  @ocaml.doc("<p>The name of the filter. Filter names are case sensitive.</p>") @as("Name")
  name: string_,
}
@ocaml.doc("<p>An event source type, accompanied by one or more event category names.</p>")
type eventCategoriesMap = {
  @ocaml.doc("<p>The event categories for the specified source type.</p>") @as("EventCategories")
  eventCategories: option<eventCategoriesList>,
  @ocaml.doc("<p>The source type that the returned categories belong to.</p>") @as("SourceType")
  sourceType: option<string_>,
}
@ocaml.doc("<p>Detailed information about an event.</p>")
type event = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the event.</p>") @as("SourceArn")
  sourceArn: option<string_>,
  @ocaml.doc("<p>Specifies the date and time of the event.</p>") @as("Date") date: option<tstamp>,
  @ocaml.doc("<p>Specifies the category for the event.</p>") @as("EventCategories")
  eventCategories: option<eventCategoriesList>,
  @ocaml.doc("<p>Provides the text of this event.</p>") @as("Message") message: option<string_>,
  @ocaml.doc("<p>Specifies the source type for this event.</p>") @as("SourceType")
  sourceType: option<sourceType>,
  @ocaml.doc("<p>Provides the identifier for the source of the event.</p>") @as("SourceIdentifier")
  sourceIdentifier: option<string_>,
}
type dbinstanceStatusInfoList = array<dbinstanceStatusInfo>
@ocaml.doc("<p>Contains the name and values of a manual cluster snapshot attribute.</p>
        <p>Manual cluster snapshot attributes are used to authorize other AWS accounts to
            restore a manual cluster snapshot.</p>")
type dbclusterSnapshotAttribute = {
  @ocaml.doc("<p>The values for the manual cluster snapshot attribute.</p>
        <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this
            element returns a list of IDs of the AWS accounts that are authorized to copy or restore
            the manual cluster snapshot. If a value of <code>all</code> is in the list, then the
            manual cluster snapshot is public and available for any AWS account to copy or
            restore.</p>")
  @as("AttributeValues")
  attributeValues: option<attributeValueList>,
  @ocaml.doc("<p>The name of the manual cluster snapshot attribute.</p>
        <p>The attribute named <code>restore</code> refers to the list of AWS accounts that have
            permission to copy or restore the manual cluster snapshot.</p>")
  @as("AttributeName")
  attributeName: option<string_>,
}
@ocaml.doc("<p>Detailed information about a cluster snapshot. </p>")
type dbclusterSnapshot = {
  @ocaml.doc("<p>If the cluster snapshot was copied from a source cluster snapshot, the ARN for
            the source cluster snapshot; otherwise, a null value.</p>")
  @as("SourceDBClusterSnapshotArn")
  sourceDBClusterSnapshotArn: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the cluster snapshot.</p>")
  @as("DBClusterSnapshotArn")
  dbclusterSnapshotArn: option<string_>,
  @ocaml.doc("<p>If <code>StorageEncrypted</code> is <code>true</code>, the AWS KMS key identifier for
            the encrypted cluster snapshot.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc("<p>Specifies whether the cluster snapshot is encrypted.</p>") @as("StorageEncrypted")
  storageEncrypted: option<boolean_>,
  @ocaml.doc("<p>Specifies the percentage of the estimated data that has been transferred.</p>")
  @as("PercentProgress")
  percentProgress: option<integer_>,
  @ocaml.doc("<p>Provides the type of the cluster snapshot.</p>") @as("SnapshotType")
  snapshotType: option<string_>,
  @ocaml.doc("<p>Provides the version of the database engine for this cluster snapshot.</p>")
  @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>Provides the master user name for the cluster snapshot.</p>") @as("MasterUsername")
  masterUsername: option<string_>,
  @ocaml.doc("<p>Specifies the time when the cluster was created, in Universal Coordinated Time
            (UTC).</p>")
  @as("ClusterCreateTime")
  clusterCreateTime: option<tstamp>,
  @ocaml.doc("<p>Provides the virtual private cloud (VPC) ID that is associated with the cluster
            snapshot.</p>")
  @as("VpcId")
  vpcId: option<string_>,
  @ocaml.doc("<p>Specifies the port that the cluster was listening on at the time of the
            snapshot.</p>")
  @as("Port")
  port: option<integer_>,
  @ocaml.doc("<p>Specifies the status of this cluster snapshot.</p>") @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>Specifies the name of the database engine.</p>") @as("Engine")
  engine: option<string_>,
  @ocaml.doc("<p>Provides the time when the snapshot was taken, in UTC.</p>")
  @as("SnapshotCreateTime")
  snapshotCreateTime: option<tstamp>,
  @ocaml.doc("<p>Specifies the cluster identifier of the cluster that this cluster snapshot
            was created from.</p>")
  @as("DBClusterIdentifier")
  dbclusterIdentifier: option<string_>,
  @ocaml.doc("<p>Specifies the identifier for the cluster snapshot.</p>")
  @as("DBClusterSnapshotIdentifier")
  dbclusterSnapshotIdentifier: option<string_>,
  @ocaml.doc("<p>Provides the list of Amazon EC2 Availability Zones that instances in the cluster
            snapshot can be restored in.</p>")
  @as("AvailabilityZones")
  availabilityZones: option<availabilityZones>,
}
type dbclusterRoles = array<dbclusterRole>
type dbclusterParameterGroupList = array<dbclusterParameterGroup>
type dbclusterMemberList = array<dbclusterMember>
@ocaml.doc("<p>The configuration setting for the log types to be enabled for export to Amazon
            CloudWatch Logs for a specific instance or cluster.</p>
        <p>The <code>EnableLogTypes</code> and <code>DisableLogTypes</code> arrays determine
            which logs are exported (or not exported) to CloudWatch Logs. The values within these
            arrays depend on the engine that is being used.</p>")
type cloudwatchLogsExportConfiguration = {
  @ocaml.doc("<p>The list of log types to disable.</p>") @as("DisableLogTypes")
  disableLogTypes: option<logTypeList>,
  @ocaml.doc("<p>The list of log types to enable.</p>") @as("EnableLogTypes")
  enableLogTypes: option<logTypeList>,
}
type certificateList = array<certificate>
type availabilityZoneList = array<availabilityZone>
type subnetList = array<subnet>
@ocaml.doc("<p>Represents the output of <a>ApplyPendingMaintenanceAction</a>.
        </p>")
type resourcePendingMaintenanceActions = {
  @ocaml.doc("<p>A list that provides details about the pending maintenance actions
            for the resource.</p>")
  @as("PendingMaintenanceActionDetails")
  pendingMaintenanceActionDetails: option<pendingMaintenanceActionDetails>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource that has pending 
            maintenance actions.</p>")
  @as("ResourceIdentifier")
  resourceIdentifier: option<string_>,
}
@ocaml.doc("<p> One or more modified settings for an instance. These modified settings have been
            requested, but haven't been applied yet.</p>")
type pendingModifiedValues = {
  @ocaml.doc("<p>A list of the log types whose configuration is still pending. These log types are in
            the process of being activated or deactivated.</p>")
  @as("PendingCloudwatchLogsExports")
  pendingCloudwatchLogsExports: option<pendingCloudwatchLogsExports>,
  @ocaml.doc("<p>The new subnet group for the instance. </p>") @as("DBSubnetGroupName")
  dbsubnetGroupName: option<string_>,
  @ocaml.doc("<p>Specifies the identifier of the certificate authority (CA) certificate for the DB
            instance.</p>")
  @as("CACertificateIdentifier")
  cacertificateIdentifier: option<string_>,
  @ocaml.doc("<p>Specifies the storage type to be associated with the instance.</p>")
  @as("StorageType")
  storageType: option<string_>,
  @ocaml.doc("<p> Contains the new <code>DBInstanceIdentifier</code> for the instance that will be
            applied or is currently being applied. </p>")
  @as("DBInstanceIdentifier")
  dbinstanceIdentifier: option<string_>,
  @ocaml.doc("<p>Specifies the new Provisioned IOPS value for the instance that will be applied or
            is currently being applied.</p>")
  @as("Iops")
  iops: option<integerOptional>,
  @ocaml.doc("<p>The license model for the instance.</p>
        <p>Valid values: <code>license-included</code>, <code>bring-your-own-license</code>,
                <code>general-public-license</code>
         </p>")
  @as("LicenseModel")
  licenseModel: option<string_>,
  @ocaml.doc("<p>Indicates the database engine version.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>Indicates that the Single-AZ instance is to change to a Multi-AZ deployment.</p>")
  @as("MultiAZ")
  multiAZ: option<booleanOptional>,
  @ocaml.doc(
    "<p>Specifies the pending number of days for which automated backups are retained.</p>"
  )
  @as("BackupRetentionPeriod")
  backupRetentionPeriod: option<integerOptional>,
  @ocaml.doc("<p>Specifies the pending port for the instance.</p>") @as("Port")
  port: option<integerOptional>,
  @ocaml.doc("<p>Contains the pending or currently in-progress change of the master credentials for the
            instance.</p>")
  @as("MasterUserPassword")
  masterUserPassword: option<string_>,
  @ocaml.doc("<p> Contains the new <code>AllocatedStorage</code> size for then instance that will be
            applied or is currently being applied. </p>")
  @as("AllocatedStorage")
  allocatedStorage: option<integerOptional>,
  @ocaml.doc("<p> Contains the new <code>DBInstanceClass</code> for the instance that will be
            applied or is currently being applied. </p>")
  @as("DBInstanceClass")
  dbinstanceClass: option<string_>,
}
@ocaml.doc("<p>The options that are available for an instance.</p>")
type orderableDBInstanceOption = {
  @ocaml.doc("<p>Indicates whether an instance is in a virtual private cloud (VPC).</p>") @as("Vpc")
  vpc: option<boolean_>,
  @ocaml.doc("<p>A list of Availability Zones for an instance.</p>") @as("AvailabilityZones")
  availabilityZones: option<availabilityZoneList>,
  @ocaml.doc("<p>The license model for an instance.</p>") @as("LicenseModel")
  licenseModel: option<string_>,
  @ocaml.doc("<p>The instance class for an instance.</p>") @as("DBInstanceClass")
  dbinstanceClass: option<string_>,
  @ocaml.doc("<p>The engine version of an instance.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>The engine type of an instance.</p>") @as("Engine") engine: option<string_>,
}
type filterList = array<filter>
type eventList = array<event>
type eventCategoriesMapList = array<eventCategoriesMap>
@ocaml.doc("<p>Contains the result of a successful invocation of the
                <code>DescribeEngineDefaultClusterParameters</code> operation. </p>")
type engineDefaults = {
  @ocaml.doc("<p>The parameters of a particular cluster parameter group family.</p>")
  @as("Parameters")
  parameters: option<parametersList>,
  @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
  @as("Marker")
  marker: option<string_>,
  @ocaml.doc("<p>The name of the cluster parameter group family to return the engine parameter
            information for.</p>")
  @as("DBParameterGroupFamily")
  dbparameterGroupFamily: option<string_>,
}
@ocaml.doc("<p> Detailed information about an engine version. </p>")
type dbengineVersion = {
  @ocaml.doc("<p>A value that indicates whether the engine version supports exporting the log types
            specified by <code>ExportableLogTypes</code> to CloudWatch Logs.</p>")
  @as("SupportsLogExportsToCloudwatchLogs")
  supportsLogExportsToCloudwatchLogs: option<boolean_>,
  @ocaml.doc("<p>The types of logs that the database engine has available for export to Amazon
            CloudWatch Logs.</p>")
  @as("ExportableLogTypes")
  exportableLogTypes: option<logTypeList>,
  @ocaml.doc(
    "<p>A list of engine versions that this database engine version can be upgraded to.</p>"
  )
  @as("ValidUpgradeTarget")
  validUpgradeTarget: option<validUpgradeTargetList>,
  @ocaml.doc("<p>The description of the database engine version.</p>")
  @as("DBEngineVersionDescription")
  dbengineVersionDescription: option<string_>,
  @ocaml.doc("<p>The description of the database engine.</p>") @as("DBEngineDescription")
  dbengineDescription: option<string_>,
  @ocaml.doc("<p>The name of the parameter group family for the database engine.</p>")
  @as("DBParameterGroupFamily")
  dbparameterGroupFamily: option<string_>,
  @ocaml.doc("<p>The version number of the database engine.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>The name of the database engine.</p>") @as("Engine") engine: option<string_>,
}
type dbclusterSnapshotList = array<dbclusterSnapshot>
type dbclusterSnapshotAttributeList = array<dbclusterSnapshotAttribute>
@ocaml.doc("<p>Detailed information about a cluster. </p>")
type dbcluster = {
  @ocaml.doc("<p>Specifies whether this cluster can be deleted. If <code>DeletionProtection</code> is
            enabled, the cluster cannot be deleted unless it is modified and
                <code>DeletionProtection</code> is disabled. <code>DeletionProtection</code>
            protects clusters from being accidentally deleted.</p>")
  @as("DeletionProtection")
  deletionProtection: option<boolean_>,
  @ocaml.doc("<p>A list of log types that this cluster is configured to export to Amazon CloudWatch
            Logs.</p>")
  @as("EnabledCloudwatchLogsExports")
  enabledCloudwatchLogsExports: option<logTypeList>,
  @ocaml.doc("<p>Specifies the time when the cluster was created, in Universal Coordinated Time
            (UTC).</p>")
  @as("ClusterCreateTime")
  clusterCreateTime: option<tstamp>,
  @ocaml.doc("<p>Provides a list of the AWS Identity and Access Management (IAM) roles that are
            associated with the cluster. IAM roles that are associated with a cluster grant
            permission for the cluster to access other AWS services on your behalf.</p>")
  @as("AssociatedRoles")
  associatedRoles: option<dbclusterRoles>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the cluster.</p>") @as("DBClusterArn")
  dbclusterArn: option<string_>,
  @ocaml.doc("<p>The AWS Region-unique, immutable identifier for the cluster. This identifier is
            found in AWS CloudTrail log entries whenever the AWS KMS key for the cluster is
            accessed.</p>")
  @as("DbClusterResourceId")
  dbClusterResourceId: option<string_>,
  @ocaml.doc("<p>If <code>StorageEncrypted</code> is <code>true</code>, the AWS KMS key identifier for
            the encrypted cluster.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc("<p>Specifies whether the cluster is encrypted.</p>") @as("StorageEncrypted")
  storageEncrypted: option<boolean_>,
  @ocaml.doc("<p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>")
  @as("HostedZoneId")
  hostedZoneId: option<string_>,
  @ocaml.doc("<p>Provides a list of virtual private cloud (VPC) security groups that the cluster
            belongs to.</p>")
  @as("VpcSecurityGroups")
  vpcSecurityGroups: option<vpcSecurityGroupMembershipList>,
  @ocaml.doc("<p>Provides the list of instances that make up the cluster.</p>")
  @as("DBClusterMembers")
  dbclusterMembers: option<dbclusterMemberList>,
  @ocaml.doc("<p>Specifies the weekly time range during which system maintenance can occur, in
            Universal Coordinated Time (UTC).</p>")
  @as("PreferredMaintenanceWindow")
  preferredMaintenanceWindow: option<string_>,
  @ocaml.doc("<p>Specifies the daily time range during which automated backups are created if automated
            backups are enabled, as determined by the <code>BackupRetentionPeriod</code>. </p>")
  @as("PreferredBackupWindow")
  preferredBackupWindow: option<string_>,
  @ocaml.doc("<p>Contains the master user name for the cluster.</p>") @as("MasterUsername")
  masterUsername: option<string_>,
  @ocaml.doc("<p>Specifies the port that the database engine is listening on.</p>") @as("Port")
  port: option<integerOptional>,
  @ocaml.doc("<p>Specifies the latest time to which a database can be restored with point-in-time
            restore.</p>")
  @as("LatestRestorableTime")
  latestRestorableTime: option<tstamp>,
  @ocaml.doc("<p>Indicates the database engine version.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>Provides the name of the database engine to be used for this cluster.</p>")
  @as("Engine")
  engine: option<string_>,
  @ocaml.doc("<p>Specifies whether the cluster has instances in multiple Availability Zones.</p>")
  @as("MultiAZ")
  multiAZ: option<boolean_>,
  @ocaml.doc("<p>The reader endpoint for the cluster. The reader endpoint for a cluster load
            balances connections across the Amazon DocumentDB replicas that are available in a cluster. As
            clients request new connections to the reader endpoint, Amazon DocumentDB distributes the
            connection requests among the Amazon DocumentDB replicas in the cluster. This functionality can
            help balance your read workload across multiple Amazon DocumentDB replicas in your cluster. </p>
        <p>If a failover occurs, and the Amazon DocumentDB replica that you are connected to is promoted to
            be the primary instance, your connection is dropped. To continue sending your read
            workload to other Amazon DocumentDB replicas in the cluster, you can then reconnect to the reader
            endpoint.</p>")
  @as("ReaderEndpoint")
  readerEndpoint: option<string_>,
  @ocaml.doc("<p>Specifies the connection endpoint for the primary instance of the cluster.</p>")
  @as("Endpoint")
  endpoint: option<string_>,
  @ocaml.doc("<p>The earliest time to which a database can be restored with point-in-time
            restore.</p>")
  @as("EarliestRestorableTime")
  earliestRestorableTime: option<tstamp>,
  @ocaml.doc("<p>Specifies the progress of the operation as a percentage.</p>")
  @as("PercentProgress")
  percentProgress: option<string_>,
  @ocaml.doc("<p>Specifies the current state of this cluster.</p>") @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>Specifies information on the subnet group that is associated with the cluster,
            including the name, description, and subnets in the subnet group.</p>")
  @as("DBSubnetGroup")
  dbsubnetGroup: option<string_>,
  @ocaml.doc("<p>Specifies the name of the cluster parameter group for the cluster.</p>")
  @as("DBClusterParameterGroup")
  dbclusterParameterGroup: option<string_>,
  @ocaml.doc("<p>Contains a user-supplied cluster identifier. This identifier is the unique key that
            identifies a cluster.</p>")
  @as("DBClusterIdentifier")
  dbclusterIdentifier: option<string_>,
  @ocaml.doc("<p>Specifies the number of days for which automatic snapshots are retained.</p>")
  @as("BackupRetentionPeriod")
  backupRetentionPeriod: option<integerOptional>,
  @ocaml.doc("<p>Provides the list of Amazon EC2 Availability Zones that instances in the cluster
            can be created in.</p>")
  @as("AvailabilityZones")
  availabilityZones: option<availabilityZones>,
}
type pendingMaintenanceActions = array<resourcePendingMaintenanceActions>
type orderableDBInstanceOptionsList = array<orderableDBInstanceOption>
@ocaml.doc("<p>Detailed information about a subnet group. </p>")
type dbsubnetGroup = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the DB subnet group.</p>")
  @as("DBSubnetGroupArn")
  dbsubnetGroupArn: option<string_>,
  @ocaml.doc("<p>Detailed information about one or more subnets within a subnet group.</p>")
  @as("Subnets")
  subnets: option<subnetList>,
  @ocaml.doc("<p>Provides the status of the subnet group.</p>") @as("SubnetGroupStatus")
  subnetGroupStatus: option<string_>,
  @ocaml.doc("<p>Provides the virtual private cloud (VPC) ID of the subnet group.</p>") @as("VpcId")
  vpcId: option<string_>,
  @ocaml.doc("<p>Provides the description of the subnet group.</p>") @as("DBSubnetGroupDescription")
  dbsubnetGroupDescription: option<string_>,
  @ocaml.doc("<p>The name of the subnet group.</p>") @as("DBSubnetGroupName")
  dbsubnetGroupName: option<string_>,
}
type dbengineVersionList = array<dbengineVersion>
@ocaml.doc("<p>Detailed information about the attributes that are associated with a cluster
            snapshot.</p>")
type dbclusterSnapshotAttributesResult = {
  @ocaml.doc("<p>The list of attributes and values for the cluster snapshot.</p>")
  @as("DBClusterSnapshotAttributes")
  dbclusterSnapshotAttributes: option<dbclusterSnapshotAttributeList>,
  @ocaml.doc("<p>The identifier of the cluster snapshot that the attributes apply to.</p>")
  @as("DBClusterSnapshotIdentifier")
  dbclusterSnapshotIdentifier: option<string_>,
}
type dbclusterList = array<dbcluster>
type dbsubnetGroups = array<dbsubnetGroup>
@ocaml.doc("<p>Detailed information about an instance. </p>")
type dbinstance = {
  @ocaml.doc("<p>A list of log types that this instance is configured to export to Amazon CloudWatch
            Logs.</p>")
  @as("EnabledCloudwatchLogsExports")
  enabledCloudwatchLogsExports: option<logTypeList>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the instance.</p>") @as("DBInstanceArn")
  dbinstanceArn: option<string_>,
  @ocaml.doc("<p>A value that specifies the order in which an Amazon DocumentDB replica is promoted to the
            primary instance after a failure of the existing primary instance.</p>")
  @as("PromotionTier")
  promotionTier: option<integerOptional>,
  @ocaml.doc("<p>The identifier of the CA certificate for this DB instance.</p>")
  @as("CACertificateIdentifier")
  cacertificateIdentifier: option<string_>,
  @ocaml.doc("<p>The AWS Region-unique, immutable identifier for the instance. This identifier is
            found in AWS CloudTrail log entries whenever the AWS KMS key for the instance is
            accessed.</p>")
  @as("DbiResourceId")
  dbiResourceId: option<string_>,
  @ocaml.doc("<p> If <code>StorageEncrypted</code> is <code>true</code>, the AWS KMS key identifier for
            the encrypted instance. </p>")
  @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc("<p>Specifies whether or not the instance is encrypted.</p>") @as("StorageEncrypted")
  storageEncrypted: option<boolean_>,
  @ocaml.doc("<p>Contains the name of the cluster that the instance is a member of if the 
            instance is a member of a cluster.</p>")
  @as("DBClusterIdentifier")
  dbclusterIdentifier: option<string_>,
  @ocaml.doc("<p>The status of a read replica. If the instance is not a read replica, this is
            blank.</p>")
  @as("StatusInfos")
  statusInfos: option<dbinstanceStatusInfoList>,
  @ocaml.doc("<p>Not supported. Amazon DocumentDB does not currently support public endpoints. The value 
          of <code>PubliclyAccessible</code> is always <code>false</code>.</p>")
  @as("PubliclyAccessible")
  publiclyAccessible: option<boolean_>,
  @ocaml.doc("<p>Indicates that minor version patches are applied automatically.</p>")
  @as("AutoMinorVersionUpgrade")
  autoMinorVersionUpgrade: option<boolean_>,
  @ocaml.doc("<p>Indicates the database engine version.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>Specifies the latest time to which a database can be restored with point-in-time
            restore.</p>")
  @as("LatestRestorableTime")
  latestRestorableTime: option<tstamp>,
  @ocaml.doc("<p>Specifies that changes to the instance are pending. This element is included only
            when changes are pending. Specific changes are identified by subelements.</p>")
  @as("PendingModifiedValues")
  pendingModifiedValues: option<pendingModifiedValues>,
  @ocaml.doc("<p>Specifies the weekly time range during which system maintenance can occur, in
            Universal Coordinated Time (UTC).</p>")
  @as("PreferredMaintenanceWindow")
  preferredMaintenanceWindow: option<string_>,
  @ocaml.doc("<p>Specifies information on the subnet group that is associated with the instance,
            including the name, description, and subnets in the subnet group.</p>")
  @as("DBSubnetGroup")
  dbsubnetGroup: option<dbsubnetGroup>,
  @ocaml.doc("<p>Specifies the name of the Availability Zone that the instance is located in.</p>")
  @as("AvailabilityZone")
  availabilityZone: option<string_>,
  @ocaml.doc("<p>Provides a list of VPC security group elements that the instance belongs to.</p>")
  @as("VpcSecurityGroups")
  vpcSecurityGroups: option<vpcSecurityGroupMembershipList>,
  @ocaml.doc("<p>Specifies the number of days for which automatic snapshots are retained.</p>")
  @as("BackupRetentionPeriod")
  backupRetentionPeriod: option<integer_>,
  @ocaml.doc("<p> Specifies the daily time range during which automated backups are created if
            automated backups are enabled, as determined by the <code>BackupRetentionPeriod</code>.
        </p>")
  @as("PreferredBackupWindow")
  preferredBackupWindow: option<string_>,
  @ocaml.doc("<p>Provides the date and time that the instance was created.</p>")
  @as("InstanceCreateTime")
  instanceCreateTime: option<tstamp>,
  @ocaml.doc("<p>Specifies the connection endpoint.</p>") @as("Endpoint")
  endpoint: option<endpoint>,
  @ocaml.doc("<p>Specifies the current state of this database.</p>") @as("DBInstanceStatus")
  dbinstanceStatus: option<string_>,
  @ocaml.doc("<p>Provides the name of the database engine to be used for this instance.</p>")
  @as("Engine")
  engine: option<string_>,
  @ocaml.doc("<p>Contains the name of the compute and memory capacity class of the instance.</p>")
  @as("DBInstanceClass")
  dbinstanceClass: option<string_>,
  @ocaml.doc("<p>Contains a user-provided database identifier. This identifier is the unique key that
            identifies an instance.</p>")
  @as("DBInstanceIdentifier")
  dbinstanceIdentifier: option<string_>,
}
type dbinstanceList = array<dbinstance>
@ocaml.doc("<p>Amazon DocumentDB API documentation</p>")
module DeleteDBSubnetGroup = {
  type t
  @ocaml.doc("<p>Represents the input to <a>DeleteDBSubnetGroup</a>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the database subnet group to delete.</p>
        <note>
            <p>You can't delete the default subnet group.</p>
        </note>
        <p>Constraints:</p>
        <p>Must match the name of an existing <code>DBSubnetGroup</code>. Must not be
            default.</p>
        <p>Example: <code>mySubnetgroup</code>
        </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: string_,
  }

  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteDBSubnetGroupCommand"
  let make = (~dbsubnetGroupName, ()) => new({dbsubnetGroupName: dbsubnetGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDBClusterParameterGroup = {
  type t
  @ocaml.doc("<p>Represents the input to <a>DeleteDBClusterParameterGroup</a>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the cluster parameter group.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be the name of an existing cluster parameter group.</p>
            </li>
            <li>
                <p>You can't delete a default cluster parameter group.</p>
            </li>
            <li>
                <p>Cannot be associated with any clusters.</p>
            </li>
         </ul>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: string_,
  }

  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DeleteDBClusterParameterGroupCommand"
  let make = (~dbclusterParameterGroupName, ()) =>
    new({dbclusterParameterGroupName: dbclusterParameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveTagsFromResource = {
  type t
  @ocaml.doc("<p>Represents the input to <a>RemoveTagsFromResource</a>.</p>")
  type request = {
    @ocaml.doc("<p>The tag key (name) of the tag to be removed.</p>") @as("TagKeys")
    tagKeys: keyList,
    @ocaml.doc("<p>The Amazon DocumentDB resource that the tags are removed from. This value is an Amazon Resource
            Name (ARN).</p>")
    @as("ResourceName")
    resourceName: string_,
  }

  @module("@aws-sdk/client-rds") @new external new: request => t = "RemoveTagsFromResourceCommand"
  let make = (~tagKeys, ~resourceName, ()) => new({tagKeys: tagKeys, resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ResetDBClusterParameterGroup = {
  type t
  @ocaml.doc("<p>Represents the input to <a>ResetDBClusterParameterGroup</a>.</p>")
  type request = {
    @ocaml.doc("<p>A list of parameter names in the cluster parameter group to reset to the default
            values. You can't use this parameter if the <code>ResetAllParameters</code> parameter is
            set to <code>true</code>.</p>")
    @as("Parameters")
    parameters: option<parametersList>,
    @ocaml.doc("<p>A value that is set to <code>true</code> to reset all parameters in the cluster
            parameter group to their default values, and <code>false</code> otherwise. You can't use
            this parameter if there is a list of parameter names specified for the
                <code>Parameters</code> parameter.</p>")
    @as("ResetAllParameters")
    resetAllParameters: option<boolean_>,
    @ocaml.doc("<p>The name of the cluster parameter group to reset.</p>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: string_,
  }
  @ocaml.doc("<p>Contains the name of a cluster parameter group.</p>")
  type response = {
    @ocaml.doc("<p>The name of a cluster parameter group.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be from 1 to 255 letters or numbers.</p>
            </li>
            <li>
                <p>The first character must be a letter.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
        <note>
            <p>This value is stored as a lowercase string.</p>
        </note>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "ResetDBClusterParameterGroupCommand"
  let make = (~dbclusterParameterGroupName, ~parameters=?, ~resetAllParameters=?, ()) =>
    new({
      parameters: parameters,
      resetAllParameters: resetAllParameters,
      dbclusterParameterGroupName: dbclusterParameterGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBClusterParameterGroup = {
  type t
  @ocaml.doc("<p>Represents the input to <a>ModifyDBClusterParameterGroup</a>.</p>")
  type request = {
    @ocaml.doc("<p>A list of parameters in the cluster parameter group to modify.</p>")
    @as("Parameters")
    parameters: parametersList,
    @ocaml.doc("<p>The name of the cluster parameter group to modify.</p>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: string_,
  }
  @ocaml.doc("<p>Contains the name of a cluster parameter group.</p>")
  type response = {
    @ocaml.doc("<p>The name of a cluster parameter group.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be from 1 to 255 letters or numbers.</p>
            </li>
            <li>
                <p>The first character must be a letter.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
        <note>
            <p>This value is stored as a lowercase string.</p>
        </note>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "ModifyDBClusterParameterGroupCommand"
  let make = (~parameters, ~dbclusterParameterGroupName, ()) =>
    new({parameters: parameters, dbclusterParameterGroupName: dbclusterParameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBClusterSnapshot = {
  type t
  @ocaml.doc("<p>Represents the input to <a>DeleteDBClusterSnapshot</a>.</p>")
  type request = {
    @ocaml.doc("<p>The identifier of the cluster snapshot to delete.</p>
        <p>Constraints: Must be the name of an existing cluster snapshot in the
                <code>available</code> state.</p>")
    @as("DBClusterSnapshotIdentifier")
    dbclusterSnapshotIdentifier: string_,
  }
  type response = {@as("DBClusterSnapshot") dbclusterSnapshot: option<dbclusterSnapshot>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteDBClusterSnapshotCommand"
  let make = (~dbclusterSnapshotIdentifier, ()) =>
    new({dbclusterSnapshotIdentifier: dbclusterSnapshotIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBClusterSnapshot = {
  type t
  @ocaml.doc("<p>Represents the input of <a>CreateDBClusterSnapshot</a>.</p>")
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the cluster snapshot.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The identifier of the cluster to create a snapshot for. This 
            parameter is not case sensitive.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must match the identifier of an existing 
                    <code>DBCluster</code>.</p>
            </li>
         </ul>
        <p>Example: <code>my-cluster</code>
        </p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
    @ocaml.doc("<p>The identifier of the cluster snapshot. This parameter is stored 
            as a lowercase string.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
            </li>
            <li>
                <p>The first character must be a letter.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.
                    </p>
            </li>
         </ul>
        <p>Example: <code>my-cluster-snapshot1</code>
        </p>")
    @as("DBClusterSnapshotIdentifier")
    dbclusterSnapshotIdentifier: string_,
  }
  type response = {@as("DBClusterSnapshot") dbclusterSnapshot: option<dbclusterSnapshot>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CreateDBClusterSnapshotCommand"
  let make = (~dbclusterIdentifier, ~dbclusterSnapshotIdentifier, ~tags=?, ()) =>
    new({
      tags: tags,
      dbclusterIdentifier: dbclusterIdentifier,
      dbclusterSnapshotIdentifier: dbclusterSnapshotIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBClusterParameterGroup = {
  type t
  @ocaml.doc("<p>Represents the input of <a>CreateDBClusterParameterGroup</a>.</p>")
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the cluster parameter group.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The description for the cluster parameter group.</p>") @as("Description")
    description: string_,
    @ocaml.doc("<p>The cluster parameter group family name.</p>") @as("DBParameterGroupFamily")
    dbparameterGroupFamily: string_,
    @ocaml.doc("<p>The name of the cluster parameter group.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must not match the name of an existing
                    <code>DBClusterParameterGroup</code>.</p>
            </li>
         </ul>
        <note>
            <p>This value is stored as a lowercase string.</p>
        </note>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: string_,
  }
  type response = {
    @as("DBClusterParameterGroup") dbclusterParameterGroup: option<dbclusterParameterGroup>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "CreateDBClusterParameterGroupCommand"
  let make = (~description, ~dbparameterGroupFamily, ~dbclusterParameterGroupName, ~tags=?, ()) =>
    new({
      tags: tags,
      description: description,
      dbparameterGroupFamily: dbparameterGroupFamily,
      dbclusterParameterGroupName: dbclusterParameterGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyDBClusterSnapshot = {
  type t
  @ocaml.doc("<p>Represents the input to <a>CopyDBClusterSnapshot</a>.
        </p>")
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the cluster snapshot.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Set to <code>true</code> to copy all tags from the source cluster 
            snapshot to the target cluster snapshot, and otherwise 
            <code>false</code>. The default is <code>false</code>.</p>")
    @as("CopyTags")
    copyTags: option<booleanOptional>,
    @ocaml.doc("<p>The URL that contains a Signature Version 4 signed request for the
            <code>CopyDBClusterSnapshot</code> API action in the AWS Region that 
            contains the source cluster snapshot to copy. You must use the 
            <code>PreSignedUrl</code> parameter when copying a cluster snapshot
            from another AWS Region.</p>
            
        <p>If you are using an AWS SDK tool or the AWS CLI, you can specify 
            <code>SourceRegion</code> (or <code>--source-region</code> for the
            AWS CLI) instead of specifying <code>PreSignedUrl</code> manually. 
            Specifying <code>SourceRegion</code> autogenerates a pre-signed URL 
            that is a valid request for the operation that can be executed in
            the source AWS Region.</p>
            
        <p>The presigned URL must be a valid request for the 
            <code>CopyDBClusterSnapshot</code> API action that can be executed 
            in the source AWS Region that contains the cluster snapshot to be 
            copied. The presigned URL request must contain the following
            parameter values:</p>
        <ul>
            <li>
                <p>
                  <code>SourceRegion</code> - The ID of the region that 
                    contains the snapshot to be copied.</p>
            </li>
            <li>
                <p>
                  <code>SourceDBClusterSnapshotIdentifier</code> - The 
                    identifier for the the encrypted cluster snapshot to be 
                    copied. This identifier must be in the Amazon Resource Name
                    (ARN) format for the source AWS Region. For example, if you 
                    are copying an encrypted cluster snapshot from the us-east-1
                    AWS Region, then your 
                    <code>SourceDBClusterSnapshotIdentifier</code> looks 
                    something like the following: 
                    <code>arn:aws:rds:us-east-1:12345678012:sample-cluster:sample-cluster-snapshot</code>.</p>
            </li>
            <li>
                <p>
                  <code>TargetDBClusterSnapshotIdentifier</code> - The 
                    identifier for the new cluster snapshot to be created. This
                    parameter isn't case sensitive.</p>
            </li>
         </ul>")
    @as("PreSignedUrl")
    preSignedUrl: option<string_>,
    @ocaml.doc("<p>The AWS KMS key ID for an encrypted cluster snapshot. The AWS KMS
            key ID is the Amazon Resource Name (ARN), AWS KMS key identifier, or
            the AWS KMS key alias for the AWS KMS encryption key. </p>
            
        <p>If you copy an encrypted cluster snapshot from your AWS account, 
            you can specify a value for <code>KmsKeyId</code> to encrypt the 
            copy with a new AWS KMS encryption key. If you don't specify a value
            for <code>KmsKeyId</code>, then the copy of the cluster snapshot is 
            encrypted with the same AWS KMS key as the source cluster snapshot.
            </p>
            
        <p>If you copy an encrypted cluster snapshot that is shared from 
            another AWS account, then you must specify a value for 
            <code>KmsKeyId</code>.</p>
        
            
        <p>To copy an encrypted cluster snapshot to another AWS Region, set
            <code>KmsKeyId</code> to the AWS KMS key ID that you want to use to 
            encrypt the copy of the cluster snapshot in the destination Region. 
            AWS KMS encryption keys are specific to the AWS Region that they are 
            created in, and you can't use encryption keys from one AWS Region in 
            another AWS Region.</p>
            
        <p>If you copy an unencrypted cluster snapshot and specify a value 
            for the <code>KmsKeyId</code> parameter, an error is returned.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>The identifier of the new cluster snapshot to create from the 
            source cluster snapshot. This parameter is not case sensitive.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must contain from 1 to 63 letters, numbers, or hyphens.
                    </p>
            </li>
            <li>
                <p>The first character must be a letter.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.
                    </p>
            </li>
         </ul>
        <p>Example: <code>my-cluster-snapshot2</code>
        </p>")
    @as("TargetDBClusterSnapshotIdentifier")
    targetDBClusterSnapshotIdentifier: string_,
    @ocaml.doc("<p>The identifier of the cluster snapshot to copy. This parameter is
            not case sensitive.</p>
            
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must specify a valid system snapshot in the 
                    <i>available</i> state.</p>
            </li>
            <li>
                <p>If the source snapshot is in the same AWS Region as the 
                    copy, specify a valid snapshot identifier.</p>
            </li>
            <li>
                
                <p>If the source snapshot is in a different AWS Region than
                    the copy, specify a valid cluster snapshot ARN.</p>
            </li>
         </ul>
        <p>Example: <code>my-cluster-snapshot1</code>
        </p>")
    @as("SourceDBClusterSnapshotIdentifier")
    sourceDBClusterSnapshotIdentifier: string_,
  }
  type response = {@as("DBClusterSnapshot") dbclusterSnapshot: option<dbclusterSnapshot>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CopyDBClusterSnapshotCommand"
  let make = (
    ~targetDBClusterSnapshotIdentifier,
    ~sourceDBClusterSnapshotIdentifier,
    ~tags=?,
    ~copyTags=?,
    ~preSignedUrl=?,
    ~kmsKeyId=?,
    (),
  ) =>
    new({
      tags: tags,
      copyTags: copyTags,
      preSignedUrl: preSignedUrl,
      kmsKeyId: kmsKeyId,
      targetDBClusterSnapshotIdentifier: targetDBClusterSnapshotIdentifier,
      sourceDBClusterSnapshotIdentifier: sourceDBClusterSnapshotIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyDBClusterParameterGroup = {
  type t
  @ocaml.doc("<p>Represents the input to <a>CopyDBClusterParameterGroup</a>.
        </p>")
  type request = {
    @ocaml.doc("<p>The tags that are to be assigned to the parameter group.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A description for the copied cluster parameter group.</p>")
    @as("TargetDBClusterParameterGroupDescription")
    targetDBClusterParameterGroupDescription: string_,
    @ocaml.doc("<p>The identifier for the copied cluster parameter group.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Cannot be null, empty, or blank.</p>
            </li>
            <li>
                <p>Must contain from 1 to 255 letters, numbers, or hyphens.
                    </p>
            </li>
            <li>
                <p>The first character must be a letter.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.
                    </p>
            </li>
         </ul>
        <p>Example: <code>my-cluster-param-group1</code>
        </p>")
    @as("TargetDBClusterParameterGroupIdentifier")
    targetDBClusterParameterGroupIdentifier: string_,
    @ocaml.doc("<p>The identifier or Amazon Resource Name (ARN) for the source cluster
            parameter group.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must specify a valid cluster parameter group.</p>
            </li>
            <li>
                <p>If the source cluster parameter group is in the same AWS 
                    Region as the copy, specify a valid parameter group 
                    identifier; for example, 
                    <code>my-db-cluster-param-group</code>, or a valid ARN.</p>
            </li>
            <li>
                <p>If the source parameter group is in a different AWS Region 
                    than the copy, specify a valid cluster parameter group ARN; 
                    for example,
                    <code>arn:aws:rds:us-east-1:123456789012:sample-cluster:sample-parameter-group</code>.</p>
            </li>
         </ul>")
    @as("SourceDBClusterParameterGroupIdentifier")
    sourceDBClusterParameterGroupIdentifier: string_,
  }
  type response = {
    @as("DBClusterParameterGroup") dbclusterParameterGroup: option<dbclusterParameterGroup>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "CopyDBClusterParameterGroupCommand"
  let make = (
    ~targetDBClusterParameterGroupDescription,
    ~targetDBClusterParameterGroupIdentifier,
    ~sourceDBClusterParameterGroupIdentifier,
    ~tags=?,
    (),
  ) =>
    new({
      tags: tags,
      targetDBClusterParameterGroupDescription: targetDBClusterParameterGroupDescription,
      targetDBClusterParameterGroupIdentifier: targetDBClusterParameterGroupIdentifier,
      sourceDBClusterParameterGroupIdentifier: sourceDBClusterParameterGroupIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTagsToResource = {
  type t
  @ocaml.doc("<p>Represents the input to <a>AddTagsToResource</a>.
        </p>")
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the Amazon DocumentDB resource.</p>") @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon DocumentDB resource that the tags are added to. This value is an
            Amazon Resource Name .</p>")
    @as("ResourceName")
    resourceName: string_,
  }

  @module("@aws-sdk/client-rds") @new external new: request => t = "AddTagsToResourceCommand"
  let make = (~tags, ~resourceName, ()) => new({tags: tags, resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopDBCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the cluster to stop. Example:
            <code>docdb-2019-05-28-15-24-52</code>
         </p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "StopDBClusterCommand"
  let make = (~dbclusterIdentifier, ()) => new({dbclusterIdentifier: dbclusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartDBCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the cluster to restart. Example:
                <code>docdb-2019-05-28-15-24-52</code>
         </p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "StartDBClusterCommand"
  let make = (~dbclusterIdentifier, ()) => new({dbclusterIdentifier: dbclusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreDBClusterToPointInTime = {
  type t
  @ocaml.doc("<p>Represents the input to <a>RestoreDBClusterToPointInTime</a>.</p>")
  type request = {
    @ocaml.doc("<p>Specifies whether this cluster can be deleted. If <code>DeletionProtection</code> is
            enabled, the cluster cannot be deleted unless it is modified and
                <code>DeletionProtection</code> is disabled. <code>DeletionProtection</code>
            protects clusters from being accidentally deleted.</p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc("<p>A list of log types that must be enabled for exporting to Amazon CloudWatch
            Logs.</p>")
    @as("EnableCloudwatchLogsExports")
    enableCloudwatchLogsExports: option<logTypeList>,
    @ocaml.doc("<p>The AWS KMS key identifier to use when restoring an encrypted cluster from an
            encrypted cluster.</p>
        <p>The AWS KMS key identifier is the Amazon Resource Name (ARN) for the AWS KMS
            encryption key. If you are restoring a cluster with the same AWS account that owns
            the AWS KMS encryption key used to encrypt the new cluster, then you can use the AWS
            KMS key alias instead of the ARN for the AWS KMS encryption key.</p>
        <p>You can restore to a new cluster and encrypt the new cluster with an AWS KMS key
            that is different from the AWS KMS key used to encrypt the source cluster. The new DB
            cluster is encrypted with the AWS KMS key identified by the <code>KmsKeyId</code>
            parameter.</p>
        <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the
            following occurs:</p>
        <ul>
            <li>
                <p>If the cluster is encrypted, then the restored cluster is encrypted
                    using the AWS KMS key that was used to encrypt the source cluster.</p>
            </li>
            <li>
                <p>If the cluster is not encrypted, then the restored cluster is not
                    encrypted.</p>
            </li>
         </ul>
        <p>If <code>DBClusterIdentifier</code> refers to a cluster that is not encrypted, then
            the restore request is rejected.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>The tags to be assigned to the restored cluster.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A list of VPC security groups that the new cluster belongs to.</p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>The subnet group name to use for the new cluster.</p>
        <p>Constraints: If provided, must match the name of an existing
                <code>DBSubnetGroup</code>.</p>
        <p>Example: <code>mySubnetgroup</code>
        </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
    @ocaml.doc("<p>The port number on which the new cluster accepts connections.</p>
        <p>Constraints: Must be a value from <code>1150</code> to <code>65535</code>. </p>
        <p>Default: The default port for the engine.</p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>A value that is set to <code>true</code> to restore the cluster to the latest
            restorable backup time, and <code>false</code> otherwise. </p>
        <p>Default: <code>false</code>
        </p>
        <p>Constraints: Cannot be specified if the <code>RestoreToTime</code> parameter is
            provided.</p>")
    @as("UseLatestRestorableTime")
    useLatestRestorableTime: option<boolean_>,
    @ocaml.doc("<p>The date and time to restore the cluster to.</p>
        <p>Valid values: A time in Universal Coordinated Time (UTC) format.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be before the latest restorable time for the instance.</p>
            </li>
            <li>
                <p>Must be specified if the <code>UseLatestRestorableTime</code> parameter is not
                    provided.</p>
            </li>
            <li>
                <p>Cannot be specified if the <code>UseLatestRestorableTime</code> parameter is
                        <code>true</code>.</p>
            </li>
            <li>
                <p>Cannot be specified if the <code>RestoreType</code> parameter is
                        <code>copy-on-write</code>.</p>
            </li>
         </ul>
        <p>Example: <code>2015-03-07T23:45:00Z</code>
        </p>")
    @as("RestoreToTime")
    restoreToTime: option<tstamp>,
    @ocaml.doc("<p>The identifier of the source cluster from which to restore.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must match the identifier of an existing <code>DBCluster</code>.</p>
            </li>
         </ul>")
    @as("SourceDBClusterIdentifier")
    sourceDBClusterIdentifier: string_,
    @ocaml.doc("<p>The name of the new cluster to be created.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
            </li>
            <li>
                <p>The first character must be a letter.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "RestoreDBClusterToPointInTimeCommand"
  let make = (
    ~sourceDBClusterIdentifier,
    ~dbclusterIdentifier,
    ~deletionProtection=?,
    ~enableCloudwatchLogsExports=?,
    ~kmsKeyId=?,
    ~tags=?,
    ~vpcSecurityGroupIds=?,
    ~dbsubnetGroupName=?,
    ~port=?,
    ~useLatestRestorableTime=?,
    ~restoreToTime=?,
    (),
  ) =>
    new({
      deletionProtection: deletionProtection,
      enableCloudwatchLogsExports: enableCloudwatchLogsExports,
      kmsKeyId: kmsKeyId,
      tags: tags,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      dbsubnetGroupName: dbsubnetGroupName,
      port: port,
      useLatestRestorableTime: useLatestRestorableTime,
      restoreToTime: restoreToTime,
      sourceDBClusterIdentifier: sourceDBClusterIdentifier,
      dbclusterIdentifier: dbclusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreDBClusterFromSnapshot = {
  type t
  @ocaml.doc("<p>Represents the input to <a>RestoreDBClusterFromSnapshot</a>.</p>")
  type request = {
    @ocaml.doc("<p>Specifies whether this cluster can be deleted. If <code>DeletionProtection</code> is
            enabled, the cluster cannot be deleted unless it is modified and
                <code>DeletionProtection</code> is disabled. <code>DeletionProtection</code>
            protects clusters from being accidentally deleted.</p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc("<p>A list of log types that must be enabled for exporting to Amazon CloudWatch
            Logs.</p>")
    @as("EnableCloudwatchLogsExports")
    enableCloudwatchLogsExports: option<logTypeList>,
    @ocaml.doc("<p>The AWS KMS key identifier to use when restoring an encrypted cluster from a DB
            snapshot or cluster snapshot.</p>
        <p>The AWS KMS key identifier is the Amazon Resource Name (ARN) for the AWS KMS
            encryption key. If you are restoring a cluster with the same AWS account that owns
            the AWS KMS encryption key used to encrypt the new cluster, then you can use the AWS
            KMS key alias instead of the ARN for the AWS KMS encryption key.</p>
        <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the
            following occurs:</p>
        <ul>
            <li>
                <p>If the snapshot or cluster snapshot in <code>SnapshotIdentifier</code>
                    is encrypted, then the restored cluster is encrypted using the AWS KMS key
                    that was used to encrypt the snapshot or the cluster snapshot.</p>
            </li>
            <li>
                <p>If the snapshot or the cluster snapshot in
                        <code>SnapshotIdentifier</code> is not encrypted, then the restored DB
                    cluster is not encrypted.</p>
            </li>
         </ul>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>The tags to be assigned to the restored cluster.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A list of virtual private cloud (VPC) security groups that the new cluster will
            belong to.</p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>The name of the subnet group to use for the new cluster.</p>
        <p>Constraints: If provided, must match the name of an existing
                <code>DBSubnetGroup</code>.</p>
        <p>Example: <code>mySubnetgroup</code>
        </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
    @ocaml.doc("<p>The port number on which the new cluster accepts connections.</p>
        <p>Constraints: Must be a value from <code>1150</code> to <code>65535</code>.</p>
        <p>Default: The same port as the original cluster.</p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>The version of the database engine to use for the new cluster.</p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>The database engine to use for the new cluster.</p>
        <p>Default: The same as source.</p>
        <p>Constraint: Must be compatible with the engine of the source.</p>")
    @as("Engine")
    engine: string_,
    @ocaml.doc("<p>The identifier for the snapshot or cluster snapshot to restore from.</p>
        <p>You can use either the name or the Amazon Resource Name (ARN) to specify a cluster
            snapshot. However, you can use only the ARN to specify a snapshot.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must match the identifier of an existing snapshot.</p>
            </li>
         </ul>")
    @as("SnapshotIdentifier")
    snapshotIdentifier: string_,
    @ocaml.doc("<p>The name of the cluster to create from the snapshot or cluster snapshot. This
            parameter isn't case sensitive.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
            </li>
            <li>
                <p>The first character must be a letter.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
        <p>Example: <code>my-snapshot-id</code>
        </p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
    @ocaml.doc("<p>Provides the list of Amazon EC2 Availability Zones that instances in the restored DB
            cluster can be created in.</p>")
    @as("AvailabilityZones")
    availabilityZones: option<availabilityZones>,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "RestoreDBClusterFromSnapshotCommand"
  let make = (
    ~engine,
    ~snapshotIdentifier,
    ~dbclusterIdentifier,
    ~deletionProtection=?,
    ~enableCloudwatchLogsExports=?,
    ~kmsKeyId=?,
    ~tags=?,
    ~vpcSecurityGroupIds=?,
    ~dbsubnetGroupName=?,
    ~port=?,
    ~engineVersion=?,
    ~availabilityZones=?,
    (),
  ) =>
    new({
      deletionProtection: deletionProtection,
      enableCloudwatchLogsExports: enableCloudwatchLogsExports,
      kmsKeyId: kmsKeyId,
      tags: tags,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      dbsubnetGroupName: dbsubnetGroupName,
      port: port,
      engineVersion: engineVersion,
      engine: engine,
      snapshotIdentifier: snapshotIdentifier,
      dbclusterIdentifier: dbclusterIdentifier,
      availabilityZones: availabilityZones,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBCluster = {
  type t
  @ocaml.doc("<p>Represents the input to <a>ModifyDBCluster</a>.</p>")
  type request = {
    @ocaml.doc("<p>Specifies whether this cluster can be deleted. If <code>DeletionProtection</code> is
            enabled, the cluster cannot be deleted unless it is modified and
                <code>DeletionProtection</code> is disabled. <code>DeletionProtection</code>
            protects clusters from being accidentally deleted.</p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc("<p>The version number of the database engine to which you want to upgrade. Changing this
            parameter results in an outage. The change is applied during the next maintenance window
            unless the <code>ApplyImmediately</code> parameter is set to <code>true</code>.</p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>The configuration setting for the log types to be enabled for export to Amazon
            CloudWatch Logs for a specific instance or cluster. The
                <code>EnableLogTypes</code> and <code>DisableLogTypes</code> arrays determine which
            logs are exported (or not exported) to CloudWatch Logs.</p>")
    @as("CloudwatchLogsExportConfiguration")
    cloudwatchLogsExportConfiguration: option<cloudwatchLogsExportConfiguration>,
    @ocaml.doc("<p>The weekly time range during which system maintenance can occur, in Universal
            Coordinated Time (UTC).</p>
        <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
        </p>
        <p>The default is a 30-minute window selected at random from an 8-hour block of time for
            each AWS Region, occurring on a random day of the week. </p>
        <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
        <p>Constraints: Minimum 30-minute window.</p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>The daily time range during which automated backups are created if automated backups
            are enabled, using the <code>BackupRetentionPeriod</code> parameter. </p>
        <p>The default is a 30-minute window selected at random from an 8-hour block of time for
            each AWS Region. </p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
            </li>
            <li>
                <p>Must be in Universal Coordinated Time (UTC).</p>
            </li>
            <li>
                <p>Must not conflict with the preferred maintenance window.</p>
            </li>
            <li>
                <p>Must be at least 30 minutes.</p>
            </li>
         </ul>")
    @as("PreferredBackupWindow")
    preferredBackupWindow: option<string_>,
    @ocaml.doc("<p>The password for the master database user. This password can contain any printable
            ASCII character except forward slash (/), double quote (\"), or the \"at\" symbol
            (@).</p>
        <p>Constraints: Must contain from 8 to 100 characters.</p>")
    @as("MasterUserPassword")
    masterUserPassword: option<string_>,
    @ocaml.doc("<p>The port number on which the cluster accepts connections.</p>
        <p>Constraints: Must be a value from <code>1150</code> to <code>65535</code>. </p>
        <p>Default: The same port as the original cluster.</p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>A list of virtual private cloud (VPC) security groups that the cluster will belong
            to.</p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>The name of the cluster parameter group to use for the cluster.</p>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: option<string_>,
    @ocaml.doc("<p>The number of days for which automated backups are retained. You must specify a
            minimum value of 1.</p>
        <p>Default: 1</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be a value from 1 to 35.</p>
            </li>
         </ul>")
    @as("BackupRetentionPeriod")
    backupRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>A value that specifies whether the changes in this request and any pending changes are
            asynchronously applied as soon as possible, regardless of the
                <code>PreferredMaintenanceWindow</code> setting for the cluster. If this
            parameter is set to <code>false</code>, changes to the cluster are applied during the
            next maintenance window.</p>
        <p>The <code>ApplyImmediately</code> parameter affects only the
                <code>NewDBClusterIdentifier</code> and <code>MasterUserPassword</code> values. If
            you set this parameter value to <code>false</code>, the changes to the
                <code>NewDBClusterIdentifier</code> and <code>MasterUserPassword</code> values are
            applied during the next maintenance window. All other changes are applied immediately,
            regardless of the value of the <code>ApplyImmediately</code> parameter.</p>
        <p>Default: <code>false</code>
        </p>")
    @as("ApplyImmediately")
    applyImmediately: option<boolean_>,
    @ocaml.doc("<p>The new cluster identifier for the cluster when renaming a cluster. This
            value is stored as a lowercase string.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
            </li>
            <li>
                <p>The first character must be a letter.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
        <p>Example: <code>my-cluster2</code>
        </p>")
    @as("NewDBClusterIdentifier")
    newDBClusterIdentifier: option<string_>,
    @ocaml.doc("<p>The cluster identifier for the cluster that is being modified. This parameter is
            not case sensitive.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must match the identifier of an existing <code>DBCluster</code>.</p>
            </li>
         </ul>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "ModifyDBClusterCommand"
  let make = (
    ~dbclusterIdentifier,
    ~deletionProtection=?,
    ~engineVersion=?,
    ~cloudwatchLogsExportConfiguration=?,
    ~preferredMaintenanceWindow=?,
    ~preferredBackupWindow=?,
    ~masterUserPassword=?,
    ~port=?,
    ~vpcSecurityGroupIds=?,
    ~dbclusterParameterGroupName=?,
    ~backupRetentionPeriod=?,
    ~applyImmediately=?,
    ~newDBClusterIdentifier=?,
    (),
  ) =>
    new({
      deletionProtection: deletionProtection,
      engineVersion: engineVersion,
      cloudwatchLogsExportConfiguration: cloudwatchLogsExportConfiguration,
      preferredMaintenanceWindow: preferredMaintenanceWindow,
      preferredBackupWindow: preferredBackupWindow,
      masterUserPassword: masterUserPassword,
      port: port,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      dbclusterParameterGroupName: dbclusterParameterGroupName,
      backupRetentionPeriod: backupRetentionPeriod,
      applyImmediately: applyImmediately,
      newDBClusterIdentifier: newDBClusterIdentifier,
      dbclusterIdentifier: dbclusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  @ocaml.doc("<p>Represents the input to <a>ListTagsForResource</a>.</p>")
  type request = {
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The Amazon DocumentDB resource with tags to be listed. This value is an Amazon Resource Name
            (ARN).</p>")
    @as("ResourceName")
    resourceName: string_,
  }
  @ocaml.doc("<p>Represents the output of <a>ListTagsForResource</a>.</p>")
  type response = {
    @ocaml.doc("<p>A list of one or more tags.</p>") @as("TagList") tagList_: option<tagList_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceName, ~filters=?, ()) => new({filters: filters, resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module FailoverDBCluster = {
  type t
  @ocaml.doc("<p>Represents the input to <a>FailoverDBCluster</a>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the instance to promote to the primary instance.</p>
        <p>You must specify the instance identifier for an Amazon DocumentDB replica in the cluster. For
            example, <code>mydbcluster-replica1</code>.</p>")
    @as("TargetDBInstanceIdentifier")
    targetDBInstanceIdentifier: option<string_>,
    @ocaml.doc("<p>A cluster identifier to force a failover for. This parameter is not case
            sensitive.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must match the identifier of an existing <code>DBCluster</code>.</p>
            </li>
         </ul>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: option<string_>,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "FailoverDBClusterCommand"
  let make = (~targetDBInstanceIdentifier=?, ~dbclusterIdentifier=?, ()) =>
    new({
      targetDBInstanceIdentifier: targetDBInstanceIdentifier,
      dbclusterIdentifier: dbclusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEvents = {
  type t
  @ocaml.doc("<p>Represents the input to <a>DescribeEvents</a>.</p>")
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token (marker) is included
         in the response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
        <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>A list of event categories that trigger notifications for an event notification
            subscription.</p>")
    @as("EventCategories")
    eventCategories: option<eventCategoriesList>,
    @ocaml.doc("<p>The number of minutes to retrieve events for.</p>
        <p>Default: 60</p>")
    @as("Duration")
    duration: option<integerOptional>,
    @ocaml.doc("<p> The end of the time interval for which to retrieve events, specified in ISO 8601
            format. </p>
        <p>Example: 2009-07-08T18:00Z</p>")
    @as("EndTime")
    endTime: option<tstamp>,
    @ocaml.doc("<p> The beginning of the time interval to retrieve events for, specified in ISO 8601
            format. </p>
        <p>Example: 2009-07-08T18:00Z</p>")
    @as("StartTime")
    startTime: option<tstamp>,
    @ocaml.doc("<p>The event source to retrieve events for. If no value is specified, all events are
            returned.</p>")
    @as("SourceType")
    sourceType: option<sourceType>,
    @ocaml.doc("<p>The identifier of the event source for which events are returned. If not specified,
            then all sources are included in the response.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>If <code>SourceIdentifier</code> is provided, <code>SourceType</code> must
                    also be provided.</p>
            </li>
            <li>
                <p>If the source type is <code>DBInstance</code>, a
                        <code>DBInstanceIdentifier</code> must be provided.</p>
            </li>
            <li>
                <p>If the source type is <code>DBSecurityGroup</code>, a
                        <code>DBSecurityGroupName</code> must be provided.</p>
            </li>
            <li>
                <p>If the source type is <code>DBParameterGroup</code>, a
                        <code>DBParameterGroupName</code> must be provided.</p>
            </li>
            <li>
                <p>If the source type is <code>DBSnapshot</code>, a
                        <code>DBSnapshotIdentifier</code> must be provided.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>")
    @as("SourceIdentifier")
    sourceIdentifier: option<string_>,
  }
  @ocaml.doc("<p>Represents the output of <a>DescribeEvents</a>.</p>")
  type response = {
    @ocaml.doc("<p>Detailed information about one or more events. </p>") @as("Events")
    events: option<eventList>,
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeEventsCommand"
  let make = (
    ~marker=?,
    ~maxRecords=?,
    ~filters=?,
    ~eventCategories=?,
    ~duration=?,
    ~endTime=?,
    ~startTime=?,
    ~sourceType=?,
    ~sourceIdentifier=?,
    (),
  ) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      eventCategories: eventCategories,
      duration: duration,
      endTime: endTime,
      startTime: startTime,
      sourceType: sourceType,
      sourceIdentifier: sourceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventCategories = {
  type t
  @ocaml.doc("<p>Represents the input to <a>DescribeEventCategories</a>.</p>")
  type request = {
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The type of source that is generating the events.</p>
        <p>Valid values: <code>db-instance</code>, <code>db-parameter-group</code>,
                <code>db-security-group</code>, <code>db-snapshot</code>
         </p>")
    @as("SourceType")
    sourceType: option<string_>,
  }
  @ocaml.doc("<p>Represents the output of <a>DescribeEventCategories</a>.</p>")
  type response = {
    @ocaml.doc("<p>A list of event category maps.</p>") @as("EventCategoriesMapList")
    eventCategoriesMapList: option<eventCategoriesMapList>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeEventCategoriesCommand"
  let make = (~filters=?, ~sourceType=?, ()) => new({filters: filters, sourceType: sourceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEngineDefaultClusterParameters = {
  type t
  @ocaml.doc("<p>Represents the input to <a>DescribeEngineDefaultClusterParameters</a>.</p>")
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token (marker) is included
         in the response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
        <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The name of the cluster parameter group family to return the engine parameter
            information for.</p>")
    @as("DBParameterGroupFamily")
    dbparameterGroupFamily: string_,
  }
  type response = {@as("EngineDefaults") engineDefaults: option<engineDefaults>}
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeEngineDefaultClusterParametersCommand"
  let make = (~dbparameterGroupFamily, ~marker=?, ~maxRecords=?, ~filters=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      dbparameterGroupFamily: dbparameterGroupFamily,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusterSnapshots = {
  type t
  @ocaml.doc("<p>Represents the input to <a>DescribeDBClusterSnapshots</a>.</p>")
  type request = {
    @ocaml.doc("<p>Set to <code>true</code> to include manual cluster snapshots that are public and
            can be copied or restored by any AWS account, and otherwise <code>false</code>. The
            default is <code>false</code>.</p>")
    @as("IncludePublic")
    includePublic: option<boolean_>,
    @ocaml.doc("<p>Set to <code>true</code> to include shared manual cluster snapshots from other AWS
            accounts that this AWS account has been given permission to copy or restore, and
            otherwise <code>false</code>. The default is <code>false</code>.</p>")
    @as("IncludeShared")
    includeShared: option<boolean_>,
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token (marker) is included
         in the response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
        <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The type of cluster snapshots to be returned. You can specify one of the following
            values:</p>
        <ul>
            <li>
                <p>
                    <code>automated</code> - Return all cluster snapshots that Amazon DocumentDB has
                    automatically created for your AWS account.</p>
            </li>
            <li>
                <p>
                    <code>manual</code> - Return all cluster snapshots that you have manually
                    created for your AWS account.</p>
            </li>
            <li>
                <p>
                    <code>shared</code> - Return all manual cluster snapshots that have been
                    shared to your AWS account.</p>
            </li>
            <li>
                <p>
                    <code>public</code> - Return all cluster snapshots that have been marked as
                    public.</p>
            </li>
         </ul>
        <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual
            cluster snapshots are returned. You can include shared cluster snapshots with
            these results by setting the <code>IncludeShared</code> parameter to <code>true</code>.
            You can include public cluster snapshots with these results by setting the
                <code>IncludePublic</code> parameter to <code>true</code>.</p>
        <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply
            for <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>.
            The <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is
            set to <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when
                <code>SnapshotType</code> is set to <code>public</code>.</p>")
    @as("SnapshotType")
    snapshotType: option<string_>,
    @ocaml.doc("<p>A specific cluster snapshot identifier to describe. This parameter can't be used
            with the <code>DBClusterIdentifier</code> parameter. This value is stored as a lowercase
            string. </p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>If provided, must match the identifier of an existing
                        <code>DBClusterSnapshot</code>.</p>
            </li>
            <li>
                <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code>
                    parameter must also be specified.</p>
            </li>
         </ul>")
    @as("DBClusterSnapshotIdentifier")
    dbclusterSnapshotIdentifier: option<string_>,
    @ocaml.doc("<p>The ID of the cluster to retrieve the list of cluster snapshots for. This
            parameter can't be used with the <code>DBClusterSnapshotIdentifier</code> parameter.
            This parameter is not case sensitive. </p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>If provided, must match the identifier of an existing
                    <code>DBCluster</code>.</p>
            </li>
         </ul>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: option<string_>,
  }
  @ocaml.doc("<p>Represents the output of <a>DescribeDBClusterSnapshots</a>.</p>")
  type response = {
    @ocaml.doc("<p>Provides a list of cluster snapshots.</p>") @as("DBClusterSnapshots")
    dbclusterSnapshots: option<dbclusterSnapshotList>,
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeDBClusterSnapshotsCommand"
  let make = (
    ~includePublic=?,
    ~includeShared=?,
    ~marker=?,
    ~maxRecords=?,
    ~filters=?,
    ~snapshotType=?,
    ~dbclusterSnapshotIdentifier=?,
    ~dbclusterIdentifier=?,
    (),
  ) =>
    new({
      includePublic: includePublic,
      includeShared: includeShared,
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      snapshotType: snapshotType,
      dbclusterSnapshotIdentifier: dbclusterSnapshotIdentifier,
      dbclusterIdentifier: dbclusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusterParameters = {
  type t
  @ocaml.doc("<p>Represents the input to <a>DescribeDBClusterParameters</a>.</p>")
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token (marker) is included
         in the response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
        <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p> A value that indicates to return only parameters for a specific source. Parameter
            sources can be <code>engine</code>, <code>service</code>, or <code>customer</code>.
        </p>")
    @as("Source")
    source: option<string_>,
    @ocaml.doc("<p>The name of a specific cluster parameter group to return parameter details
            for.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>If provided, must match the name of an existing
                        <code>DBClusterParameterGroup</code>.</p>
            </li>
         </ul>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: string_,
  }
  @ocaml.doc("<p>Represents the output of <a>DBClusterParameterGroup</a>.</p>")
  type response = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>Provides a list of parameters for the cluster parameter group.</p>")
    @as("Parameters")
    parameters: option<parametersList>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeDBClusterParametersCommand"
  let make = (~dbclusterParameterGroupName, ~marker=?, ~maxRecords=?, ~filters=?, ~source=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      source: source,
      dbclusterParameterGroupName: dbclusterParameterGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusterParameterGroups = {
  type t
  @ocaml.doc("<p>Represents the input to <a>DescribeDBClusterParameterGroups</a>.</p>")
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token (marker) is included
         in the response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
        <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The name of a specific cluster parameter group to return details for.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>If provided, must match the name of an existing
                        <code>DBClusterParameterGroup</code>.</p>
            </li>
         </ul>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: option<string_>,
  }
  @ocaml.doc("<p>Represents the output of <a>DBClusterParameterGroups</a>.</p>")
  type response = {
    @ocaml.doc("<p>A list of cluster parameter groups.</p>") @as("DBClusterParameterGroups")
    dbclusterParameterGroups: option<dbclusterParameterGroupList>,
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeDBClusterParameterGroupsCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ~dbclusterParameterGroupName=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      dbclusterParameterGroupName: dbclusterParameterGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCertificates = {
  type t
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous <code>DescribeCertificates</code> request. 
         If this parameter is specified, the response includes only records beyond the marker, up to the 
         value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records 
         exist than the specified <code>MaxRecords</code> value, a pagination token 
         called a marker is included in the response so that the remaining results can 
         be retrieved.</p>
         <p>Default: 100</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Minimum: 20</p>
            </li>
            <li>
               <p>Maximum: 100</p>
            </li>
         </ul>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The user-supplied certificate identifier. If this parameter is specified, information
            for only the specified certificate is returned. If this parameter is omitted, a list of
            up to <code>MaxRecords</code> certificates is returned. This parameter is not case
            sensitive.</p>
         <p>Constraints</p>
         <ul>
            <li>
               <p>Must match an existing <code>CertificateIdentifier</code>.</p>
            </li>
         </ul>")
    @as("CertificateIdentifier")
    certificateIdentifier: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>An optional pagination token provided if the number of records retrieved is greater than
         <code>MaxRecords</code>.  If this parameter is specified, the marker specifies the next record
         in the list. Including the value of <code>Marker</code> in the next call to 
         <code>DescribeCertificates</code> results in the next page of certificates.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A list of certificates for this AWS account.</p>") @as("Certificates")
    certificates: option<certificateList>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeCertificatesCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ~certificateIdentifier=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      certificateIdentifier: certificateIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBCluster = {
  type t
  @ocaml.doc("<p>Represents the input to <a>DeleteDBCluster</a>.</p>")
  type request = {
    @ocaml.doc("<p> The cluster snapshot identifier of the new cluster snapshot created when
                <code>SkipFinalSnapshot</code> is set to <code>false</code>. </p>
        <note>
            <p> Specifying this parameter and also setting the <code>SkipFinalShapshot</code>
                parameter to <code>true</code> results in an error. </p>
        </note>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be from 1 to 255 letters, numbers, or hyphens.</p>
            </li>
            <li>
                <p>The first character must be a letter.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>")
    @as("FinalDBSnapshotIdentifier")
    finalDBSnapshotIdentifier: option<string_>,
    @ocaml.doc("<p> Determines whether a final cluster snapshot is created before the cluster is
            deleted. If <code>true</code> is specified, no cluster snapshot is created. If
                <code>false</code> is specified, a cluster snapshot is created before the DB
            cluster is deleted. </p>
        <note>
            <p>If <code>SkipFinalSnapshot</code> is <code>false</code>, you must specify a
                    <code>FinalDBSnapshotIdentifier</code> parameter.</p>
        </note>
        <p>Default: <code>false</code>
        </p>")
    @as("SkipFinalSnapshot")
    skipFinalSnapshot: option<boolean_>,
    @ocaml.doc("<p>The cluster identifier for the cluster to be deleted. This parameter isn't case
            sensitive.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must match an existing <code>DBClusterIdentifier</code>.</p>
            </li>
         </ul>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteDBClusterCommand"
  let make = (~dbclusterIdentifier, ~finalDBSnapshotIdentifier=?, ~skipFinalSnapshot=?, ()) =>
    new({
      finalDBSnapshotIdentifier: finalDBSnapshotIdentifier,
      skipFinalSnapshot: skipFinalSnapshot,
      dbclusterIdentifier: dbclusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBCluster = {
  type t
  @ocaml.doc("<p>Represents the input to <a>CreateDBCluster</a>.
        </p>")
  type request = {
    @ocaml.doc("<p>Specifies whether this cluster can be deleted. If 
            <code>DeletionProtection</code> is enabled, the cluster cannot be 
            deleted unless it is modified and <code>DeletionProtection</code> is 
            disabled. <code>DeletionProtection</code> protects clusters from 
            being accidentally deleted.</p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc("<p>A list of log types that need to be enabled for exporting to Amazon 
            CloudWatch Logs. You can enable audit logs or profiler logs. For more 
            information, see <a href=\"https://docs.aws.amazon.com/documentdb/latest/developerguide/event-auditing.html\">
                Auditing Amazon DocumentDB Events</a> 
            and <a href=\"https://docs.aws.amazon.com/documentdb/latest/developerguide/profiling.html\">
                Profiling Amazon DocumentDB Operations</a>.
        </p>")
    @as("EnableCloudwatchLogsExports")
    enableCloudwatchLogsExports: option<logTypeList>,
    @ocaml.doc("<p>Not currently supported.
            </p>")
    @as("PreSignedUrl")
    preSignedUrl: option<string_>,
    @ocaml.doc("<p>The AWS KMS key identifier for an encrypted cluster.</p>
        <p>The AWS KMS key identifier is the Amazon Resource Name (ARN) for 
            the AWS KMS encryption key. If you are creating a cluster using the
            same AWS account that owns the AWS KMS encryption key that is used 
            to encrypt the new cluster, you can use the AWS KMS key alias 
            instead of the ARN for the AWS KMS encryption key.</p>
        <p>If an encryption key is not specified in <code>KmsKeyId</code>:
            </p>
        <ul>
            <li>
                <p>If the <code>StorageEncrypted</code> parameter is 
                    <code>true</code>, Amazon DocumentDB uses your default encryption key.
                    </p>
            </li>
         </ul>
        <p>AWS KMS creates the default encryption key for your AWS account. 
            Your AWS account has a different default encryption key for each AWS
            Region.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>Specifies whether the cluster is encrypted.</p>") @as("StorageEncrypted")
    storageEncrypted: option<booleanOptional>,
    @ocaml.doc("<p>The tags to be assigned to the cluster.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The weekly time range during which system maintenance can occur, 
            in Universal Coordinated Time (UTC).</p>
        <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
        </p>
        <p>The default is a 30-minute window selected at random from an 8-hour
            block of time for each AWS Region, occurring on a random day of the 
            week.</p>
        <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
        <p>Constraints: Minimum 30-minute window.</p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>The daily time range during which automated backups are created if
            automated backups are enabled using the 
            <code>BackupRetentionPeriod</code> parameter. </p>
        <p>The default is a 30-minute window selected at random from an 8-hour
            block of time for each AWS Region. </p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
            </li>
            <li>
                <p>Must be in Universal Coordinated Time (UTC).</p>
            </li>
            <li>
                <p>Must not conflict with the preferred maintenance window.
                    </p>
            </li>
            <li>
                <p>Must be at least 30 minutes.</p>
            </li>
         </ul>")
    @as("PreferredBackupWindow")
    preferredBackupWindow: option<string_>,
    @ocaml.doc("<p>The password for the master database user. This password can 
            contain any printable ASCII character except forward slash (/), 
            double quote (\"), or the \"at\" symbol (@).</p>
        <p>Constraints: Must contain from 8 to 100 characters.</p>")
    @as("MasterUserPassword")
    masterUserPassword: string_,
    @ocaml.doc("<p>The name of the master user for the cluster.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be from 1 to 63 letters or numbers.</p>
            </li>
            <li>
                <p>The first character must be a letter.</p>
            </li>
            <li>
                <p>Cannot be a reserved word for the chosen database engine.
                    </p>
            </li>
         </ul>")
    @as("MasterUsername")
    masterUsername: string_,
    @ocaml.doc("<p>The port number on which the instances in the cluster accept 
            connections.</p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc(
      "<p>The version number of the database engine to use. The --engine-version will default to the latest major engine version. For production workloads, we recommend explicitly declaring this parameter with the intended major engine version.</p>"
    )
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>The name of the database engine to be used for this cluster.</p>
        <p>Valid values: <code>docdb</code>
        </p>")
    @as("Engine")
    engine: string_,
    @ocaml.doc("<p>A subnet group to associate with this cluster.</p>
        <p>Constraints: Must match the name of an existing 
            <code>DBSubnetGroup</code>. Must not be default.</p>
        <p>Example: <code>mySubnetgroup</code>
        </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
    @ocaml.doc("<p>A list of EC2 VPC security groups to associate with this cluster.
            </p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>The name of the cluster parameter group to associate with this 
            cluster.</p>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: option<string_>,
    @ocaml.doc("<p>The cluster identifier. This parameter is stored as a lowercase
            string.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must contain from 1 to 63 letters, numbers, or hyphens.
                    </p>
            </li>
            <li>
                <p>The first character must be a letter.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.
                    </p>
            </li>
         </ul>
        <p>Example: <code>my-cluster</code>
        </p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
    @ocaml.doc("<p>The number of days for which automated backups are retained. You 
            must specify a minimum value of 1.</p>
        <p>Default: 1</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be a value from 1 to 35.</p>
            </li>
         </ul>")
    @as("BackupRetentionPeriod")
    backupRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>A list of Amazon EC2 Availability Zones that instances in the 
            cluster can be created in.</p>")
    @as("AvailabilityZones")
    availabilityZones: option<availabilityZones>,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CreateDBClusterCommand"
  let make = (
    ~masterUserPassword,
    ~masterUsername,
    ~engine,
    ~dbclusterIdentifier,
    ~deletionProtection=?,
    ~enableCloudwatchLogsExports=?,
    ~preSignedUrl=?,
    ~kmsKeyId=?,
    ~storageEncrypted=?,
    ~tags=?,
    ~preferredMaintenanceWindow=?,
    ~preferredBackupWindow=?,
    ~port=?,
    ~engineVersion=?,
    ~dbsubnetGroupName=?,
    ~vpcSecurityGroupIds=?,
    ~dbclusterParameterGroupName=?,
    ~backupRetentionPeriod=?,
    ~availabilityZones=?,
    (),
  ) =>
    new({
      deletionProtection: deletionProtection,
      enableCloudwatchLogsExports: enableCloudwatchLogsExports,
      preSignedUrl: preSignedUrl,
      kmsKeyId: kmsKeyId,
      storageEncrypted: storageEncrypted,
      tags: tags,
      preferredMaintenanceWindow: preferredMaintenanceWindow,
      preferredBackupWindow: preferredBackupWindow,
      masterUserPassword: masterUserPassword,
      masterUsername: masterUsername,
      port: port,
      engineVersion: engineVersion,
      engine: engine,
      dbsubnetGroupName: dbsubnetGroupName,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      dbclusterParameterGroupName: dbclusterParameterGroupName,
      dbclusterIdentifier: dbclusterIdentifier,
      backupRetentionPeriod: backupRetentionPeriod,
      availabilityZones: availabilityZones,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ApplyPendingMaintenanceAction = {
  type t
  @ocaml.doc("<p>Represents the input to <a>ApplyPendingMaintenanceAction</a>.
        </p>")
  type request = {
    @ocaml.doc("<p>A value that specifies the type of opt-in request or undoes an 
            opt-in request. An opt-in request of type <code>immediate</code> 
            can't be undone.</p>
        <p>Valid values:</p>
        <ul>
            <li>
                <p>
                  <code>immediate</code> - Apply the maintenance action 
                    immediately.</p>
            </li>
            <li>
                <p>
                  <code>next-maintenance</code> - Apply the maintenance 
                    action during the next maintenance window for the resource.
                    </p>
            </li>
            <li>
                <p>
                  <code>undo-opt-in</code> - Cancel any existing 
                    <code>next-maintenance</code> opt-in requests.</p>
            </li>
         </ul>")
    @as("OptInType")
    optInType: string_,
    @ocaml.doc("<p>The pending maintenance action to apply to this resource.</p>
        <p>Valid values: <code>system-update</code>, <code>db-upgrade</code>
        </p>")
    @as("ApplyAction")
    applyAction: string_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource that the pending 
            maintenance action applies to.</p>")
    @as("ResourceIdentifier")
    resourceIdentifier: string_,
  }
  type response = {
    @as("ResourcePendingMaintenanceActions")
    resourcePendingMaintenanceActions: option<resourcePendingMaintenanceActions>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "ApplyPendingMaintenanceActionCommand"
  let make = (~optInType, ~applyAction, ~resourceIdentifier, ()) =>
    new({optInType: optInType, applyAction: applyAction, resourceIdentifier: resourceIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBSubnetGroup = {
  type t
  @ocaml.doc("<p>Represents the input to <a>ModifyDBSubnetGroup</a>.</p>")
  type request = {
    @ocaml.doc("<p>The Amazon EC2 subnet IDs for the subnet group.</p>") @as("SubnetIds")
    subnetIds: subnetIdentifierList,
    @ocaml.doc("<p>The description for the subnet group.</p>") @as("DBSubnetGroupDescription")
    dbsubnetGroupDescription: option<string_>,
    @ocaml.doc("<p>The name for the subnet group. This value is stored as a lowercase string. You
            can't modify the default subnet group. </p>
        <p>Constraints: Must match the name of an existing <code>DBSubnetGroup</code>. Must not
            be default.</p>
        <p>Example: <code>mySubnetgroup</code>
        </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: string_,
  }
  type response = {@as("DBSubnetGroup") dbsubnetGroup: option<dbsubnetGroup>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "ModifyDBSubnetGroupCommand"
  let make = (~subnetIds, ~dbsubnetGroupName, ~dbsubnetGroupDescription=?, ()) =>
    new({
      subnetIds: subnetIds,
      dbsubnetGroupDescription: dbsubnetGroupDescription,
      dbsubnetGroupName: dbsubnetGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBClusterSnapshotAttribute = {
  type t
  @ocaml.doc("<p>Represents the input to <a>ModifyDBClusterSnapshotAttribute</a>.</p>")
  type request = {
    @ocaml.doc("<p>A list of cluster snapshot attributes to remove from the attribute specified by
                <code>AttributeName</code>.</p>
        <p>To remove authorization for other AWS accounts to copy or restore a manual cluster
            snapshot, set this list to include one or more AWS account identifiers. To remove
            authorization for any AWS account to copy or restore the cluster snapshot, set it to
                <code>all</code> . If you specify <code>all</code>, an AWS account whose account ID
            is explicitly added to the <code>restore</code> attribute can still copy or restore a
            manual cluster snapshot.</p>")
    @as("ValuesToRemove")
    valuesToRemove: option<attributeValueList>,
    @ocaml.doc("<p>A list of cluster snapshot attributes to add to the attribute specified by
                <code>AttributeName</code>.</p>
        <p>To authorize other AWS accounts to copy or restore a manual cluster snapshot, set
            this list to include one or more AWS account IDs. To make the manual cluster snapshot
            restorable by any AWS account, set it to <code>all</code>. Do not add the
                <code>all</code> value for any manual cluster snapshots that contain private
            information that you don't want to be available to all AWS accounts.</p>")
    @as("ValuesToAdd")
    valuesToAdd: option<attributeValueList>,
    @ocaml.doc("<p>The name of the cluster snapshot attribute to modify.</p>
        <p>To manage authorization for other AWS accounts to copy or restore a manual cluster
            snapshot, set this value to <code>restore</code>.</p>")
    @as("AttributeName")
    attributeName: string_,
    @ocaml.doc("<p>The identifier for the cluster snapshot to modify the attributes for.</p>")
    @as("DBClusterSnapshotIdentifier")
    dbclusterSnapshotIdentifier: string_,
  }
  type response = {
    @as("DBClusterSnapshotAttributesResult")
    dbclusterSnapshotAttributesResult: option<dbclusterSnapshotAttributesResult>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "ModifyDBClusterSnapshotAttributeCommand"
  let make = (
    ~attributeName,
    ~dbclusterSnapshotIdentifier,
    ~valuesToRemove=?,
    ~valuesToAdd=?,
    (),
  ) =>
    new({
      valuesToRemove: valuesToRemove,
      valuesToAdd: valuesToAdd,
      attributeName: attributeName,
      dbclusterSnapshotIdentifier: dbclusterSnapshotIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePendingMaintenanceActions = {
  type t
  @ocaml.doc("<p>Represents the input to <a>DescribePendingMaintenanceActions</a>.</p>")
  type request = {
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token (marker) is included
         in the response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
        <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A filter that specifies one or more resources to return pending maintenance actions
            for.</p>
        <p>Supported filters:</p>
        <ul>
            <li>
                <p>
                    <code>db-cluster-id</code> - Accepts cluster identifiers and cluster
                    Amazon Resource Names (ARNs). The results list includes only pending maintenance
                    actions for the clusters identified by these ARNs.</p>
            </li>
            <li>
                <p>
                    <code>db-instance-id</code> - Accepts instance identifiers and instance
                    ARNs. The results list includes only pending maintenance actions for the DB
                    instances identified by these ARNs.</p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The ARN of a resource to return pending maintenance actions for.</p>")
    @as("ResourceIdentifier")
    resourceIdentifier: option<string_>,
  }
  @ocaml.doc("<p>Represents the output of <a>DescribePendingMaintenanceActions</a>.</p>")
  type response = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maintenance actions to be applied.</p>") @as("PendingMaintenanceActions")
    pendingMaintenanceActions: option<pendingMaintenanceActions>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribePendingMaintenanceActionsCommand"
  let make = (~maxRecords=?, ~marker=?, ~filters=?, ~resourceIdentifier=?, ()) =>
    new({
      maxRecords: maxRecords,
      marker: marker,
      filters: filters,
      resourceIdentifier: resourceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOrderableDBInstanceOptions = {
  type t
  @ocaml.doc("<p>Represents the input to <a>DescribeOrderableDBInstanceOptions</a>.</p>")
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token (marker) is included
         in the response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
        <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The virtual private cloud (VPC) filter value. Specify this parameter to show only the
            available VPC or non-VPC offerings.</p>")
    @as("Vpc")
    vpc: option<booleanOptional>,
    @ocaml.doc("<p>The license model filter value. Specify this parameter to show only the available
            offerings that match the specified license model.</p>")
    @as("LicenseModel")
    licenseModel: option<string_>,
    @ocaml.doc("<p>The instance class filter value. Specify this parameter to show only the available
            offerings that match the specified instance class.</p>")
    @as("DBInstanceClass")
    dbinstanceClass: option<string_>,
    @ocaml.doc("<p>The engine version filter value. Specify this parameter to show only the available
            offerings that match the specified engine version.</p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>The name of the engine to retrieve instance options for.</p>") @as("Engine")
    engine: string_,
  }
  @ocaml.doc("<p>Represents the output of <a>DescribeOrderableDBInstanceOptions</a>.</p>")
  type response = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The options that are available for a particular orderable instance.</p>")
    @as("OrderableDBInstanceOptions")
    orderableDBInstanceOptions: option<orderableDBInstanceOptionsList>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeOrderableDBInstanceOptionsCommand"
  let make = (
    ~engine,
    ~marker=?,
    ~maxRecords=?,
    ~filters=?,
    ~vpc=?,
    ~licenseModel=?,
    ~dbinstanceClass=?,
    ~engineVersion=?,
    (),
  ) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      vpc: vpc,
      licenseModel: licenseModel,
      dbinstanceClass: dbinstanceClass,
      engineVersion: engineVersion,
      engine: engine,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBEngineVersions = {
  type t
  @ocaml.doc("<p>Represents the input to <a>DescribeDBEngineVersions</a>.</p>")
  type request = {
    @ocaml.doc("<p>If this parameter is specified and the requested engine supports the
                <code>TimeZone</code> parameter for <code>CreateDBInstance</code>, the response
            includes a list of supported time zones for each engine version. </p>")
    @as("ListSupportedTimezones")
    listSupportedTimezones: option<booleanOptional>,
    @ocaml.doc("<p>If this parameter is specified and the requested engine supports the
                <code>CharacterSetName</code> parameter for <code>CreateDBInstance</code>, the
            response includes a list of supported character sets for each engine version. </p>")
    @as("ListSupportedCharacterSets")
    listSupportedCharacterSets: option<booleanOptional>,
    @ocaml.doc("<p>Indicates that only the default version of the specified engine or engine and major
            version combination is returned.</p>")
    @as("DefaultOnly")
    defaultOnly: option<boolean_>,
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token (marker) is included
         in the response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
        <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The name of a specific parameter group family to return details for.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>If provided, must match an existing
                    <code>DBParameterGroupFamily</code>.</p>
            </li>
         </ul>")
    @as("DBParameterGroupFamily")
    dbparameterGroupFamily: option<string_>,
    @ocaml.doc("<p>The database engine version to return.</p>
        <p>Example: <code>3.6.0</code>
        </p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>The database engine to return.</p>") @as("Engine") engine: option<string_>,
  }
  @ocaml.doc("<p>Represents the output of <a>DescribeDBEngineVersions</a>.</p>")
  type response = {
    @ocaml.doc("<p>Detailed information about one or more engine versions.</p>")
    @as("DBEngineVersions")
    dbengineVersions: option<dbengineVersionList>,
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeDBEngineVersionsCommand"
  let make = (
    ~listSupportedTimezones=?,
    ~listSupportedCharacterSets=?,
    ~defaultOnly=?,
    ~marker=?,
    ~maxRecords=?,
    ~filters=?,
    ~dbparameterGroupFamily=?,
    ~engineVersion=?,
    ~engine=?,
    (),
  ) =>
    new({
      listSupportedTimezones: listSupportedTimezones,
      listSupportedCharacterSets: listSupportedCharacterSets,
      defaultOnly: defaultOnly,
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      dbparameterGroupFamily: dbparameterGroupFamily,
      engineVersion: engineVersion,
      engine: engine,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusters = {
  type t
  @ocaml.doc("<p>Represents the input to <a>DescribeDBClusters</a>.</p>")
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token (marker) is included
         in the response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
        <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>A filter that specifies one or more clusters to describe.</p>
        <p>Supported filters:</p>
        <ul>
            <li>
                <p>
                    <code>db-cluster-id</code> - Accepts cluster identifiers and cluster
                    Amazon Resource Names (ARNs). The results list only includes information about
                    the clusters identified by these ARNs.</p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The user-provided cluster identifier. If this parameter is specified, information
            from only the specific cluster is returned. This parameter isn't case
            sensitive.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>If provided, must match an existing <code>DBClusterIdentifier</code>.</p>
            </li>
         </ul>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: option<string_>,
  }
  @ocaml.doc("<p>Represents the output of <a>DescribeDBClusters</a>.</p>")
  type response = {
    @ocaml.doc("<p>A list of clusters.</p>") @as("DBClusters") dbclusters: option<dbclusterList>,
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeDBClustersCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ~dbclusterIdentifier=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      dbclusterIdentifier: dbclusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusterSnapshotAttributes = {
  type t
  @ocaml.doc("<p>Represents the input to <a>DescribeDBClusterSnapshotAttributes</a>.</p>")
  type request = {
    @ocaml.doc("<p>The identifier for the cluster snapshot to describe the attributes for.</p>")
    @as("DBClusterSnapshotIdentifier")
    dbclusterSnapshotIdentifier: string_,
  }
  type response = {
    @as("DBClusterSnapshotAttributesResult")
    dbclusterSnapshotAttributesResult: option<dbclusterSnapshotAttributesResult>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeDBClusterSnapshotAttributesCommand"
  let make = (~dbclusterSnapshotIdentifier, ()) =>
    new({dbclusterSnapshotIdentifier: dbclusterSnapshotIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBSubnetGroup = {
  type t
  @ocaml.doc("<p>Represents the input to <a>CreateDBSubnetGroup</a>.</p>")
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the subnet group.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The Amazon EC2 subnet IDs for the subnet group.</p>") @as("SubnetIds")
    subnetIds: subnetIdentifierList,
    @ocaml.doc("<p>The description for the subnet group.</p>") @as("DBSubnetGroupDescription")
    dbsubnetGroupDescription: string_,
    @ocaml.doc("<p>The name for the subnet group. This value is stored as a lowercase string.</p>
        <p>Constraints: Must contain no more than 255 letters, numbers, periods, underscores,
            spaces, or hyphens. Must not be default.</p>
        <p>Example: <code>mySubnetgroup</code>
        </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: string_,
  }
  type response = {@as("DBSubnetGroup") dbsubnetGroup: option<dbsubnetGroup>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CreateDBSubnetGroupCommand"
  let make = (~subnetIds, ~dbsubnetGroupDescription, ~dbsubnetGroupName, ~tags=?, ()) =>
    new({
      tags: tags,
      subnetIds: subnetIds,
      dbsubnetGroupDescription: dbsubnetGroupDescription,
      dbsubnetGroupName: dbsubnetGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RebootDBInstance = {
  type t
  @ocaml.doc("<p>Represents the input to <a>RebootDBInstance</a>.</p>")
  type request = {
    @ocaml.doc("<p> When <code>true</code>, the reboot is conducted through a Multi-AZ failover. </p>
        <p>Constraint: You can't specify <code>true</code> if the instance is not configured for
            Multi-AZ.</p>")
    @as("ForceFailover")
    forceFailover: option<booleanOptional>,
    @ocaml.doc("<p>The instance identifier. This parameter is stored as a lowercase string.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must match the identifier of an existing <code>DBInstance</code>.</p>
            </li>
         </ul>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "RebootDBInstanceCommand"
  let make = (~dbinstanceIdentifier, ~forceFailover=?, ()) =>
    new({forceFailover: forceFailover, dbinstanceIdentifier: dbinstanceIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBInstance = {
  type t
  @ocaml.doc("<p>Represents the input to <a>ModifyDBInstance</a>.</p>")
  type request = {
    @ocaml.doc("<p>A value that specifies the order in which an Amazon DocumentDB replica is promoted to the
            primary instance after a failure of the existing primary instance.</p>
        <p>Default: 1</p>
        <p>Valid values: 0-15</p>")
    @as("PromotionTier")
    promotionTier: option<integerOptional>,
    @ocaml.doc("<p>Indicates the certificate that needs to be associated with the instance.</p>")
    @as("CACertificateIdentifier")
    cacertificateIdentifier: option<string_>,
    @ocaml.doc("<p> The new instance identifier for the instance when renaming an instance. When
            you change the instance identifier, an instance reboot occurs immediately if you set
                <code>Apply Immediately</code> to <code>true</code>. It occurs during the next
            maintenance window if you set <code>Apply Immediately</code> to <code>false</code>. This
            value is stored as a lowercase string. </p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
            </li>
            <li>
                <p>The first character must be a letter.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
        <p>Example: <code>mydbinstance</code>
        </p>")
    @as("NewDBInstanceIdentifier")
    newDBInstanceIdentifier: option<string_>,
    @ocaml.doc("<p>Indicates that minor version upgrades are applied automatically to the instance
            during the maintenance window. Changing this parameter doesn't result in an outage
            except in the following case, and the change is asynchronously applied as soon as
            possible. An outage results if this parameter is set to <code>true</code> during the
            maintenance window, and a newer minor version is available, and Amazon DocumentDB has enabled
            automatic patching for that engine version. </p>")
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>The weekly time range (in UTC) during which system maintenance can occur, which might
            result in an outage. Changing this parameter doesn't result in an outage except in the
            following situation, and the change is asynchronously applied as soon as possible. If
            there are pending actions that cause a reboot, and the maintenance window is changed to
            include the current time, changing this parameter causes a reboot of the instance. If
            you are moving this window to the current time, there must be at least 30 minutes
            between the current time and end of the window to ensure that pending changes are
            applied.</p>
        <p>Default: Uses existing setting.</p>
        <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
         </p>
        <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
        <p>Constraints: Must be at least 30 minutes.</p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>Specifies whether the modifications in this request and any pending modifications are
            asynchronously applied as soon as possible, regardless of the
                <code>PreferredMaintenanceWindow</code> setting for the instance. </p>
        <p> If this parameter is set to <code>false</code>, changes to the instance are
            applied during the next maintenance window. Some parameter changes can cause an outage
            and are applied on the next reboot.</p>
        <p>Default: <code>false</code>
        </p>")
    @as("ApplyImmediately")
    applyImmediately: option<boolean_>,
    @ocaml.doc("<p>The new compute and memory capacity of the instance; for example,
                <code>db.r5.large</code>. Not all instance classes are available in all AWS
            Regions. </p>
        <p>If you modify the instance class, an outage occurs during the change. The change is
            applied during the next maintenance window, unless <code>ApplyImmediately</code> is
            specified as <code>true</code> for this request. </p>
        <p>Default: Uses existing setting.</p>")
    @as("DBInstanceClass")
    dbinstanceClass: option<string_>,
    @ocaml.doc("<p>The instance identifier. This value is stored as a lowercase string.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must match the identifier of an existing <code>DBInstance</code>.</p>
            </li>
         </ul>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "ModifyDBInstanceCommand"
  let make = (
    ~dbinstanceIdentifier,
    ~promotionTier=?,
    ~cacertificateIdentifier=?,
    ~newDBInstanceIdentifier=?,
    ~autoMinorVersionUpgrade=?,
    ~preferredMaintenanceWindow=?,
    ~applyImmediately=?,
    ~dbinstanceClass=?,
    (),
  ) =>
    new({
      promotionTier: promotionTier,
      cacertificateIdentifier: cacertificateIdentifier,
      newDBInstanceIdentifier: newDBInstanceIdentifier,
      autoMinorVersionUpgrade: autoMinorVersionUpgrade,
      preferredMaintenanceWindow: preferredMaintenanceWindow,
      applyImmediately: applyImmediately,
      dbinstanceClass: dbinstanceClass,
      dbinstanceIdentifier: dbinstanceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBSubnetGroups = {
  type t
  @ocaml.doc("<p>Represents the input to <a>DescribeDBSubnetGroups</a>.</p>")
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token (marker) is included
         in the response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
        <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The name of the subnet group to return details for.</p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
  }
  @ocaml.doc("<p>Represents the output of <a>DescribeDBSubnetGroups</a>.</p>")
  type response = {
    @ocaml.doc("<p>Detailed information about one or more subnet groups.</p>") @as("DBSubnetGroups")
    dbsubnetGroups: option<dbsubnetGroups>,
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeDBSubnetGroupsCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ~dbsubnetGroupName=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      dbsubnetGroupName: dbsubnetGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBInstance = {
  type t
  @ocaml.doc("<p>Represents the input to <a>DeleteDBInstance</a>.</p>")
  type request = {
    @ocaml.doc("<p>The instance identifier for the instance to be deleted. This parameter isn't
            case sensitive.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must match the name of an existing instance.</p>
            </li>
         </ul>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteDBInstanceCommand"
  let make = (~dbinstanceIdentifier, ()) => new({dbinstanceIdentifier: dbinstanceIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBInstance = {
  type t
  @ocaml.doc("<p>Represents the input to <a>CreateDBInstance</a>.</p>")
  type request = {
    @ocaml.doc("<p>A value that specifies the order in which an Amazon DocumentDB replica is promoted to the
            primary instance after a failure of the existing primary instance.</p>
        <p>Default: 1</p>
        <p>Valid values: 0-15</p>")
    @as("PromotionTier")
    promotionTier: option<integerOptional>,
    @ocaml.doc("<p>The identifier of the cluster that the instance will belong to.</p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
    @ocaml.doc("<p>The tags to be assigned to the instance. You can assign up to 
           10 tags to an instance.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Indicates that minor engine upgrades are applied automatically to the instance
            during the maintenance window.</p>
        <p>Default: <code>true</code>
        </p>")
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>The time range each week during which system maintenance can occur, in Universal
            Coordinated Time (UTC).</p>
        <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
        </p>
        <p>The default is a 30-minute window selected at random from an 8-hour block of time for
            each AWS Region, occurring on a random day of the week. </p>
        <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
        <p>Constraints: Minimum 30-minute window.</p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>The Amazon EC2 Availability Zone that the instance is created in. </p>
        <p>Default: A random, system-chosen Availability Zone in the endpoint's AWS Region.</p>
        <p>Example: <code>us-east-1d</code>
         </p>")
    @as("AvailabilityZone")
    availabilityZone: option<string_>,
    @ocaml.doc("<p>The name of the database engine to be used for this instance.</p>
        <p>Valid value: <code>docdb</code>
         </p>")
    @as("Engine")
    engine: string_,
    @ocaml.doc("<p>The compute and memory capacity of the instance; for example,
                <code>db.r5.large</code>. </p>")
    @as("DBInstanceClass")
    dbinstanceClass: string_,
    @ocaml.doc("<p>The instance identifier. This parameter is stored as a lowercase string.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
            </li>
            <li>
                <p>The first character must be a letter.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
        <p>Example: <code>mydbinstance</code>
        </p>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CreateDBInstanceCommand"
  let make = (
    ~dbclusterIdentifier,
    ~engine,
    ~dbinstanceClass,
    ~dbinstanceIdentifier,
    ~promotionTier=?,
    ~tags=?,
    ~autoMinorVersionUpgrade=?,
    ~preferredMaintenanceWindow=?,
    ~availabilityZone=?,
    (),
  ) =>
    new({
      promotionTier: promotionTier,
      dbclusterIdentifier: dbclusterIdentifier,
      tags: tags,
      autoMinorVersionUpgrade: autoMinorVersionUpgrade,
      preferredMaintenanceWindow: preferredMaintenanceWindow,
      availabilityZone: availabilityZone,
      engine: engine,
      dbinstanceClass: dbinstanceClass,
      dbinstanceIdentifier: dbinstanceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBInstances = {
  type t
  @ocaml.doc("<p>Represents the input to <a>DescribeDBInstances</a>.</p>")
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than
         the specified <code>MaxRecords</code> value, a pagination token (marker) is included
         in the response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
        <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>A filter that specifies one or more instances to describe.</p>
        <p>Supported filters:</p>
        <ul>
            <li>
                <p>
                    <code>db-cluster-id</code> - Accepts cluster identifiers and cluster
                    Amazon Resource Names (ARNs). The results list includes only the information
                    about the instances that are associated with the clusters that are
                    identified by these ARNs.</p>
            </li>
            <li>
                <p>
                    <code>db-instance-id</code> - Accepts instance identifiers and instance
                    ARNs. The results list includes only the information about the instances that
                    are identified by these ARNs.</p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The user-provided instance identifier. If this parameter is specified, information
            from only the specific instance is returned. This parameter isn't case
            sensitive.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>If provided, must match the identifier of an existing
                    <code>DBInstance</code>.</p>
            </li>
         </ul>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: option<string_>,
  }
  @ocaml.doc("<p>Represents the output of <a>DescribeDBInstances</a>.</p>")
  type response = {
    @ocaml.doc("<p>Detailed information about one or more instances. </p>") @as("DBInstances")
    dbinstances: option<dbinstanceList>,
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is specified, the response
         includes only records beyond the marker, up to the value specified by
         <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeDBInstancesCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ~dbinstanceIdentifier=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      dbinstanceIdentifier: dbinstanceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
