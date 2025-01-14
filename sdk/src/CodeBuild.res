type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-codebuild") @new
external createClient: unit => awsServiceClient = "CodeBuildClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type wrapperLong = float
type wrapperInt = int
type wrapperBoolean = bool
type webhookFilterType = [
  | @as("COMMIT_MESSAGE") #COMMIT_MESSAGE
  | @as("FILE_PATH") #FILE_PATH
  | @as("ACTOR_ACCOUNT_ID") #ACTOR_ACCOUNT_ID
  | @as("HEAD_REF") #HEAD_REF
  | @as("BASE_REF") #BASE_REF
  | @as("EVENT") #EVENT
]
type webhookBuildType = [@as("BUILD_BATCH") #BUILD_BATCH | @as("BUILD") #BUILD]
type valueInput = string
type timestamp_ = Js.Date.t
type timeOut = int
type string_ = string
type statusType = [
  | @as("STOPPED") #STOPPED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("TIMED_OUT") #TIMED_OUT
  | @as("FAULT") #FAULT
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
]
type sourceType = [
  | @as("NO_SOURCE") #NO_SOURCE
  | @as("GITHUB_ENTERPRISE") #GITHUB_ENTERPRISE
  | @as("BITBUCKET") #BITBUCKET
  | @as("S3") #S3
  | @as("GITHUB") #GITHUB
  | @as("CODEPIPELINE") #CODEPIPELINE
  | @as("CODECOMMIT") #CODECOMMIT
]
type sourceAuthType = [@as("OAUTH") #OAUTH]
type sortOrderType = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type sharedResourceSortByType = [@as("MODIFIED_TIME") #MODIFIED_TIME | @as("ARN") #ARN]
type serverType = [
  | @as("GITHUB_ENTERPRISE") #GITHUB_ENTERPRISE
  | @as("BITBUCKET") #BITBUCKET
  | @as("GITHUB") #GITHUB
]
type sensitiveNonEmptyString = string
type retryBuildBatchType = [
  | @as("RETRY_FAILED_BUILDS") #RETRY_FAILED_BUILDS
  | @as("RETRY_ALL_BUILDS") #RETRY_ALL_BUILDS
]
type reportType = [@as("CODE_COVERAGE") #CODE_COVERAGE | @as("TEST") #TEST]
type reportStatusType = [
  | @as("DELETING") #DELETING
  | @as("INCOMPLETE") #INCOMPLETE
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("GENERATING") #GENERATING
]
type reportPackagingType = [@as("NONE") #NONE | @as("ZIP") #ZIP]
type reportGroupTrendFieldType = [
  | @as("BRANCHES_MISSED") #BRANCHES_MISSED
  | @as("BRANCHES_COVERED") #BRANCHES_COVERED
  | @as("BRANCH_COVERAGE") #BRANCH_COVERAGE
  | @as("LINES_MISSED") #LINES_MISSED
  | @as("LINES_COVERED") #LINES_COVERED
  | @as("LINE_COVERAGE") #LINE_COVERAGE
  | @as("TOTAL") #TOTAL
  | @as("DURATION") #DURATION
  | @as("PASS_RATE") #PASS_RATE
]
type reportGroupStatusType = [@as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE]
type reportGroupSortByType = [
  | @as("LAST_MODIFIED_TIME") #LAST_MODIFIED_TIME
  | @as("CREATED_TIME") #CREATED_TIME
  | @as("NAME") #NAME
]
type reportGroupName = string
type reportExportConfigType = [@as("NO_EXPORT") #NO_EXPORT | @as("S3") #S3]
type reportCodeCoverageSortByType = [
  | @as("FILE_PATH") #FILE_PATH
  | @as("LINE_COVERAGE_PERCENTAGE") #LINE_COVERAGE_PERCENTAGE
]
type projectSortByType = [
  | @as("LAST_MODIFIED_TIME") #LAST_MODIFIED_TIME
  | @as("CREATED_TIME") #CREATED_TIME
  | @as("NAME") #NAME
]
type projectName = string
type projectDescription = string
type platformType = [
  | @as("WINDOWS_SERVER") #WINDOWS_SERVER
  | @as("UBUNTU") #UBUNTU
  | @as("AMAZON_LINUX") #AMAZON_LINUX
  | @as("DEBIAN") #DEBIAN
]
type percentage = float
type pageSize = int
type nonNegativeInt = int
type nonEmptyString = string
type logsConfigStatusType = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type languageType = [
  | @as("PHP") #PHP
  | @as("BASE") #BASE
  | @as("DOTNET") #DOTNET
  | @as("ANDROID") #ANDROID
  | @as("DOCKER") #DOCKER
  | @as("GOLANG") #GOLANG
  | @as("RUBY") #RUBY
  | @as("NODE_JS") #NODE_JS
  | @as("PYTHON") #PYTHON
  | @as("JAVA") #JAVA
]
type keyInput = string
type imagePullCredentialsType = [@as("SERVICE_ROLE") #SERVICE_ROLE | @as("CODEBUILD") #CODEBUILD]
type gitCloneDepth = int
type fileSystemType = [@as("EFS") #EFS]
type environmentVariableType = [
  | @as("SECRETS_MANAGER") #SECRETS_MANAGER
  | @as("PARAMETER_STORE") #PARAMETER_STORE
  | @as("PLAINTEXT") #PLAINTEXT
]
type environmentType = [
  | @as("WINDOWS_SERVER_2019_CONTAINER") #WINDOWS_SERVER_2019_CONTAINER
  | @as("ARM_CONTAINER") #ARM_CONTAINER
  | @as("LINUX_GPU_CONTAINER") #LINUX_GPU_CONTAINER
  | @as("LINUX_CONTAINER") #LINUX_CONTAINER
  | @as("WINDOWS_CONTAINER") #WINDOWS_CONTAINER
]
type credentialProviderType = [@as("SECRETS_MANAGER") #SECRETS_MANAGER]
type computeType = [
  | @as("BUILD_GENERAL1_2XLARGE") #BUILD_GENERAL1_2XLARGE
  | @as("BUILD_GENERAL1_LARGE") #BUILD_GENERAL1_LARGE
  | @as("BUILD_GENERAL1_MEDIUM") #BUILD_GENERAL1_MEDIUM
  | @as("BUILD_GENERAL1_SMALL") #BUILD_GENERAL1_SMALL
]
type cacheType = [@as("LOCAL") #LOCAL | @as("S3") #S3 | @as("NO_CACHE") #NO_CACHE]
type cacheMode = [
  | @as("LOCAL_CUSTOM_CACHE") #LOCAL_CUSTOM_CACHE
  | @as("LOCAL_SOURCE_CACHE") #LOCAL_SOURCE_CACHE
  | @as("LOCAL_DOCKER_LAYER_CACHE") #LOCAL_DOCKER_LAYER_CACHE
]
type buildPhaseType = [
  | @as("COMPLETED") #COMPLETED
  | @as("FINALIZING") #FINALIZING
  | @as("UPLOAD_ARTIFACTS") #UPLOAD_ARTIFACTS
  | @as("POST_BUILD") #POST_BUILD
  | @as("BUILD") #BUILD
  | @as("PRE_BUILD") #PRE_BUILD
  | @as("INSTALL") #INSTALL
  | @as("DOWNLOAD_SOURCE") #DOWNLOAD_SOURCE
  | @as("PROVISIONING") #PROVISIONING
  | @as("QUEUED") #QUEUED
  | @as("SUBMITTED") #SUBMITTED
]
type buildBatchPhaseType = [
  | @as("STOPPED") #STOPPED
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("COMBINE_ARTIFACTS") #COMBINE_ARTIFACTS
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("DOWNLOAD_BATCHSPEC") #DOWNLOAD_BATCHSPEC
  | @as("SUBMITTED") #SUBMITTED
]
@ocaml.doc("<p>Specifies the access for objects that are uploaded to an Amazon S3 bucket that is owned by
            another account.</p>
        <p>By default, only the account that uploads the objects to the bucket has access to
            these objects. This property allows you to give the bucket owner access to these
            objects.</p>
         <dl>
            <dt>NONE</dt>
            <dd>
                <p>The bucket owner does not have access to the objects. This is the
                        default.</p>
            </dd>
            <dt>READ_ONLY</dt>
            <dd>
              <p>The bucket owner has read only access to the objects. The uploading account
                        retains ownership of the objects.</p>
            </dd>
            <dt>FULL</dt>
            <dd>
              <p>The bucket owner has full access to the objects. Object ownership is determined
                        by the following criteria:</p>
                    <ul>
                  <li>
                            <p>If the bucket is configured with the <b>Bucket
                                    owner preferred</b> setting, the bucket owner owns the
                                objects. The uploading account will have object access as specified
                                by the bucket's policy.</p>
                        </li>
                  <li>
                            <p>Otherwise, the uploading account retains ownership of the
                                objects.</p>
                        </li>
               </ul>
                    <p>For more information about Amazon S3 object ownership, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html\">Controlling ownership of uploaded objects using S3
                            Object Ownership</a> in the <i>Amazon Simple Storage Service User
                        Guide</i>.</p>
            </dd>
         </dl>")
type bucketOwnerAccess = [@as("FULL") #FULL | @as("READ_ONLY") #READ_ONLY | @as("NONE") #NONE]
type boolean_ = bool
type authType = [
  | @as("PERSONAL_ACCESS_TOKEN") #PERSONAL_ACCESS_TOKEN
  | @as("BASIC_AUTH") #BASIC_AUTH
  | @as("OAUTH") #OAUTH
]
type artifactsType = [
  | @as("NO_ARTIFACTS") #NO_ARTIFACTS
  | @as("S3") #S3
  | @as("CODEPIPELINE") #CODEPIPELINE
]
type artifactPackaging = [@as("ZIP") #ZIP | @as("NONE") #NONE]
type artifactNamespace = [@as("BUILD_ID") #BUILD_ID | @as("NONE") #NONE]
@ocaml.doc("<p> A filter used to determine which webhooks trigger a build. </p>")
type webhookFilter = {
  @ocaml.doc("<p> Used to indicate that the <code>pattern</code> determines which webhook events do not
            trigger a build. If true, then a webhook event that does not match the
                <code>pattern</code> triggers a build. If false, then a webhook event that matches
            the <code>pattern</code> triggers a build. </p>")
  excludeMatchedPattern: option<wrapperBoolean>,
  @ocaml.doc("<p> For a <code>WebHookFilter</code> that uses <code>EVENT</code> type, a comma-separated
            string that specifies one or more events. For example, the webhook filter <code>PUSH,
                PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED</code> allows all push, pull request
            created, and pull request updated events to trigger a build. </p>
        <p> For a <code>WebHookFilter</code> that uses any of the other filter types, a regular
            expression pattern. For example, a <code>WebHookFilter</code> that uses
                <code>HEAD_REF</code> for its <code>type</code> and the pattern
                <code>^refs/heads/</code> triggers a build when the head reference is a branch with
            a reference name <code>refs/heads/branch-name</code>. </p>")
  pattern: string_,
  @ocaml.doc("<p> The type of webhook filter. There are six webhook filter types: <code>EVENT</code>,
                <code>ACTOR_ACCOUNT_ID</code>, <code>HEAD_REF</code>, <code>BASE_REF</code>,
                <code>FILE_PATH</code>, and <code>COMMIT_MESSAGE</code>. </p>
        <dl>
            <dt>
               EVENT
            </dt>
            <dd>
                    <p> A webhook event triggers a build when the provided <code>pattern</code>
                        matches one of five event types: <code>PUSH</code>,
                            <code>PULL_REQUEST_CREATED</code>, <code>PULL_REQUEST_UPDATED</code>,
                            <code>PULL_REQUEST_REOPENED</code>, and
                        <code>PULL_REQUEST_MERGED</code>. The <code>EVENT</code> patterns are
                        specified as a comma-separated string. For example, <code>PUSH,
                            PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED</code> filters all push, pull
                        request created, and pull request updated events. </p>
                    <note>
                        <p> The <code>PULL_REQUEST_REOPENED</code> works with GitHub and GitHub
                            Enterprise only. </p>
                    </note>
                </dd>
            <dt>
               ACTOR_ACCOUNT_ID
            </dt>
            <dd>
                    <p> A webhook event triggers a build when a GitHub, GitHub Enterprise, or
                        Bitbucket account ID matches the regular expression <code>pattern</code>.
                    </p>
                </dd>
            <dt>
               HEAD_REF
            </dt>
            <dd>
                    <p> A webhook event triggers a build when the head reference matches the
                        regular expression <code>pattern</code>. For example,
                            <code>refs/heads/branch-name</code> and <code>refs/tags/tag-name</code>. </p>
                    <p> Works with GitHub and GitHub Enterprise push, GitHub and GitHub
                        Enterprise pull request, Bitbucket push, and Bitbucket pull request events.
                    </p>
                </dd>
            <dt>
               BASE_REF
            </dt>
            <dd>
                    <p> A webhook event triggers a build when the base reference matches the
                        regular expression <code>pattern</code>. For example,
                            <code>refs/heads/branch-name</code>. </p>
                    <note>
                        <p> Works with pull request events only. </p>
                    </note>
                </dd>
            <dt>
               FILE_PATH
            </dt>
            <dd>
                    <p> A webhook triggers a build when the path of a changed file matches the
                        regular expression <code>pattern</code>. </p>
                    <note>
                        <p> Works with GitHub and Bitbucket events push and pull requests events.
                            Also works with GitHub Enterprise push events, but does not work with
                            GitHub Enterprise pull request events. </p>
                    </note>
                </dd>
            <dt>COMMIT_MESSAGE</dt>
            <dd>
                    <p>A webhook triggers a build when the head commit message matches the
                        regular expression <code>pattern</code>.</p>
                    <note>
                        <p> Works with GitHub and Bitbucket events push and pull requests events.
                            Also works with GitHub Enterprise push events, but does not work with
                            GitHub Enterprise pull request events. </p>
                    </note>
                </dd>
         </dl>")
  @as("type")
  type_: webhookFilterType,
}
@ocaml.doc("<p>A filter used to return specific types of test cases. In order to pass the filter, the
            report must meet all of the filter properties.</p>")
type testCaseFilter = {
  @ocaml.doc("<p>A keyword that is used to filter on the <code>name</code> or the <code>prefix</code>
            of the test cases. Only test cases where the keyword is a substring of the
                <code>name</code> or the <code>prefix</code> will be returned.</p>")
  keyword: option<string_>,
  @ocaml.doc("<p>The status used to filter test cases. A <code>TestCaseFilter</code> can have one
            status. Valid values are:</p>
        <ul>
            <li>
                <p>
                  <code>SUCCEEDED</code>
               </p>
            </li>
            <li>
                <p>
                  <code>FAILED</code>
               </p>
            </li>
            <li>
                <p>
                  <code>ERROR</code>
               </p>
            </li>
            <li>
                <p>
                  <code>SKIPPED</code>
               </p>
            </li>
            <li>
                <p>
                  <code>UNKNOWN</code>
               </p>
            </li>
         </ul>")
  status: option<string_>,
}
@ocaml.doc("<p> Information about a test case created using a framework such as NUnit or Cucumber. A
            test case might be a unit test or a configuration test. </p>")
type testCase = {
  @ocaml.doc("<p> The date and time a test case expires. A test case expires 30 days after it is
            created. An expired test case is not available to view in CodeBuild. </p>")
  expired: option<timestamp_>,
  @ocaml.doc("<p> A message associated with a test case. For example, an error message or stack trace.
        </p>")
  message: option<string_>,
  @ocaml.doc("<p> The number of nanoseconds it took to run this test case. </p>")
  durationInNanoSeconds: option<wrapperLong>,
  @ocaml.doc("<p> The status returned by the test case after it was run. Valid statuses are
                <code>SUCCEEDED</code>, <code>FAILED</code>, <code>ERROR</code>,
                <code>SKIPPED</code>, and <code>UNKNOWN</code>. </p>")
  status: option<string_>,
  @ocaml.doc("<p> The name of the test case. </p>") name: option<string_>,
  @ocaml.doc("<p> A string that is applied to a series of related test cases. CodeBuild generates the
            prefix. The prefix depends on the framework used to generate the tests. </p>")
  prefix: option<string_>,
  @ocaml.doc("<p> The path to the raw data file that contains the test result. </p>")
  testRawDataPath: option<string_>,
  @ocaml.doc("<p> The ARN of the report to which the test case belongs. </p>")
  reportArn: option<nonEmptyString>,
}
@ocaml.doc("<p>A tag, consisting of a key and a value.</p>
        <p>This tag is available for use by AWS services that support tags in AWS CodeBuild.</p>")
type tag = {
  @ocaml.doc("<p>The tag's value.</p>") value: option<valueInput>,
  @ocaml.doc("<p>The tag's key.</p>") key: option<keyInput>,
}
type subnets = array<nonEmptyString>
@ocaml.doc("<p> Information about the credentials for a GitHub, GitHub Enterprise, or Bitbucket
            repository. </p>")
type sourceCredentialsInfo = {
  @ocaml.doc("<p> The type of authentication used by the credentials. Valid options are OAUTH,
            BASIC_AUTH, or PERSONAL_ACCESS_TOKEN. </p>")
  authType: option<authType>,
  @ocaml.doc("<p> The type of source provider. The valid options are GITHUB, GITHUB_ENTERPRISE, or
            BITBUCKET. </p>")
  serverType: option<serverType>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the token. </p>") arn: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about the authorization settings for AWS CodeBuild to access the source code to be
            built.</p>
        <p>This information is for the AWS CodeBuild console's use only. Your code should not get or set
            this information directly.</p>")
type sourceAuth = {
  @ocaml.doc("<p>The resource value that applies to the specified authorization type.</p>")
  resource: option<string_>,
  @ocaml.doc("<note>
            <p> This data type is deprecated and is no longer accurate or used. </p>
        </note>
        <p>The authorization type to use. The only valid value is <code>OAUTH</code>, which
            represents the OAuth authorization type.</p>")
  @as("type")
  type_: sourceAuthType,
}
type securityGroupIds = array<nonEmptyString>
@ocaml.doc("<p> Information about the S3 bucket where the raw data of a report are exported. </p>")
type s3ReportExportConfig = {
  @ocaml.doc("<p> A boolean value that specifies if the results of a report are encrypted. </p>")
  encryptionDisabled: option<wrapperBoolean>,
  @ocaml.doc("<p> The encryption key for the report's encrypted raw data. </p>")
  encryptionKey: option<nonEmptyString>,
  @ocaml.doc("<p> The type of build output artifact to create. Valid values include: </p>
        <ul>
            <li>
                <p>
                    <code>NONE</code>: AWS CodeBuild creates the raw data in the output bucket. This
                    is the default if packaging is not specified. </p>
            </li>
            <li>
                <p>
                    <code>ZIP</code>: AWS CodeBuild creates a ZIP file with the raw data in the
                    output bucket. </p>
            </li>
         </ul>")
  packaging: option<reportPackagingType>,
  @ocaml.doc("<p> The path to the exported report's raw data results. </p>") path: option<string_>,
  @ocaml.doc("<p>The AWS account identifier of the owner of the Amazon S3 bucket. This allows report data to be exported to an Amazon S3 bucket
        that is owned by an account other than the account running the build.</p>")
  bucketOwner: option<string_>,
  @ocaml.doc("<p> The name of the S3 bucket where the raw data of a report are exported. </p>")
  bucket: option<nonEmptyString>,
}
@ocaml.doc("<p> Information about S3 logs for a build project. </p>")
type s3LogsConfig = {
  bucketOwnerAccess: option<bucketOwnerAccess>,
  @ocaml.doc("<p> Set to true if you do not want your S3 build log output encrypted. By default S3
            build logs are encrypted. </p>")
  encryptionDisabled: option<wrapperBoolean>,
  @ocaml.doc("<p> The ARN of an S3 bucket and the path prefix for S3 logs. If your Amazon S3 bucket
            name is <code>my-bucket</code>, and your path prefix is <code>build-log</code>, then
            acceptable formats are <code>my-bucket/build-log</code> or
                <code>arn:aws:s3:::my-bucket/build-log</code>. </p>")
  location: option<string_>,
  @ocaml.doc("<p>The current status of the S3 build logs. Valid values are:</p>
        <ul>
            <li>
                <p>
                  <code>ENABLED</code>: S3 build logs are enabled for this build project.</p>
            </li>
            <li>
                <p>
                  <code>DISABLED</code>: S3 build logs are not enabled for this build
                    project.</p>
            </li>
         </ul>")
  status: logsConfigStatusType,
}
@ocaml.doc("<p>Represents a resolved build artifact. A resolve artifact is an artifact that is built and
            deployed to the destination, such as Amazon S3.</p>")
type resolvedArtifact = {
  @ocaml.doc("<p>The identifier of the artifact.</p>") identifier: option<string_>,
  @ocaml.doc("<p>The location of the artifact.</p>") location: option<string_>,
  @ocaml.doc("<p>Specifies the type of artifact.</p>") @as("type") type_: option<artifactsType>,
}
@ocaml.doc("<p>Contains the unmodified data for the report. For more information, see .</p>")
type reportWithRawData = {
  @ocaml.doc("<p>The value of the requested data field from the report.</p>") data: option<string_>,
  @ocaml.doc("<p>The ARN of the report.</p>") reportArn: option<nonEmptyString>,
}
type reportStatusCounts = Js.Dict.t<wrapperInt>
@ocaml.doc("<p>Contains trend statistics for a set of reports. The actual values depend on the type of
            trend being collected. For more information, see .</p>")
type reportGroupTrendStats = {
  @ocaml.doc("<p>Contains the minimum value analyzed.</p>") min: option<string_>,
  @ocaml.doc("<p>Contains the maximum value analyzed.</p>") max: option<string_>,
  @ocaml.doc("<p>Contains the average of all values analyzed.</p>") average: option<string_>,
}
type reportGroupArns = array<nonEmptyString>
@ocaml.doc("<p> A filter used to return reports with the status specified by the input
                <code>status</code> parameter. </p>")
type reportFilter = {
  @ocaml.doc("<p> The status used to filter reports. You can filter using one status only. </p>")
  status: option<reportStatusType>,
}
type reportArns = array<nonEmptyString>
@ocaml.doc("<p> Information about credentials that provide access to a private Docker registry. When
            this is set: </p>
        <ul>
            <li>
                <p>
                    <code>imagePullCredentialsType</code> must be set to <code>SERVICE_ROLE</code>.
                </p>
            </li>
            <li>
                <p> images cannot be curated or an Amazon ECR image.</p>
            </li>
         </ul>
        <p> For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/sample-private-registry.html\">Private Registry with
                AWS Secrets Manager Sample for AWS CodeBuild</a>. </p>")
type registryCredential = {
  @ocaml.doc("<p> The service that created the credentials to access a private Docker registry. The
            valid value, SECRETS_MANAGER, is for AWS Secrets Manager. </p>")
  credentialProvider: credentialProviderType,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) or name of credentials created using AWS Secrets Manager. </p>
        <note>
            <p> The <code>credential</code> can use the name of the credentials only if they
                exist in your current AWS Region. </p>
        </note>")
  credential: nonEmptyString,
}
@ocaml.doc("<p> A source identifier and its corresponding version. </p>")
type projectSourceVersion = {
  @ocaml.doc("<p>The source version for the corresponding source identifier. If specified, must be one
          of:</p>
         <ul>
            <li>
              <p>For AWS CodeCommit: the commit ID, branch, or Git tag to use.</p>
            </li>
            <li>
              <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
                  corresponds to the version of the source code you want to build. If a pull
                  request ID is specified, it must use the format <code>pr/pull-request-ID</code>
                  (for example, <code>pr/25</code>). If a branch name is specified, the branch's
                  HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
                  used.</p>
            </li>
            <li>
              <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
                  version of the source code you want to build. If a branch name is specified, the
                  branch's HEAD commit ID is used. If not specified, the default branch's HEAD
                  commit ID is used.</p>
            </li>
            <li>
              <p>For Amazon S3: the version ID of the object that represents the build input ZIP
                  file to use.</p>
            </li>
         </ul>
         <p> For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html\">Source Version Sample
              with CodeBuild</a> in the <i>AWS CodeBuild User Guide</i>. </p>")
  sourceVersion: string_,
  @ocaml.doc("<p>An identifier for a source in the build project. The identifier can only contain
            alphanumeric characters and underscores, and must be less than 128 characters in length. </p>")
  sourceIdentifier: string_,
}
type projectNames = array<nonEmptyString>
@ocaml.doc("<p> Information about a file system created by Amazon Elastic File System (EFS). For more
            information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html\">What Is
                Amazon Elastic File System?</a>
        </p>")
type projectFileSystemLocation = {
  @ocaml.doc("<p> The mount options for a file system created by AWS EFS. The default mount options
            used by CodeBuild are
                <code>nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2</code>. For
            more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/mounting-fs-nfs-mount-settings.html\">Recommended NFS Mount
                Options</a>. </p>")
  mountOptions: option<string_>,
  @ocaml.doc("<p>The name used to access a file system created by Amazon EFS. CodeBuild creates an
            environment variable by appending the <code>identifier</code> in all capital letters to
                <code>CODEBUILD_</code>. For example, if you specify <code>my_efs</code> for
                <code>identifier</code>, a new environment variable is create named
                <code>CODEBUILD_MY_EFS</code>. </p>
        <p> The <code>identifier</code> is used to mount your file system. </p>")
  identifier: option<string_>,
  @ocaml.doc("<p>The location in the container where you mount the file system. </p>")
  mountPoint: option<string_>,
  @ocaml.doc("<p>A string that specifies the location of the file system created by Amazon EFS. Its
            format is <code>efs-dns-name:/directory-path</code>. You can find the DNS name of file
            system when you view it in the AWS EFS console. The directory path is a path to a
            directory in the file system that CodeBuild mounts. For example, if the DNS name of a
            file system is <code>fs-abcd1234.efs.us-west-2.amazonaws.com</code>, and its mount
            directory is <code>my-efs-mount-directory</code>, then the <code>location</code> is
                <code>fs-abcd1234.efs.us-west-2.amazonaws.com:/my-efs-mount-directory</code>. </p>
        <p>The directory path in the format <code>efs-dns-name:/directory-path</code> is
            optional. If you do not specify a directory path, the location is only the DNS name and
            CodeBuild mounts the entire file system. </p>")
  location: option<string_>,
  @ocaml.doc("<p> The type of the file system. The one supported type is <code>EFS</code>. </p>")
  @as("type")
  type_: option<fileSystemType>,
}
type projectCacheModes = array<cacheMode>
@ocaml.doc("<p>Information about the build badge for the build project.</p>")
type projectBadge = {
  @ocaml.doc("<p>The publicly-accessible URL through which you can access the build badge for your
            project. </p>")
  badgeRequestUrl: option<string_>,
  @ocaml.doc("<p>Set this to true to generate a publicly accessible URL for your project's build
            badge.</p>")
  badgeEnabled: option<boolean_>,
}
@ocaml.doc("<p>Information about the build output artifacts for the build project.</p>")
type projectArtifacts = {
  bucketOwnerAccess: option<bucketOwnerAccess>,
  @ocaml.doc("<p> An identifier for this artifact definition. </p>")
  artifactIdentifier: option<string_>,
  @ocaml.doc("<p> Set to true if you do not want your output artifacts encrypted. This option is valid
            only if your artifacts type is Amazon S3. If this is set with another artifacts type, an
            invalidInputException is thrown. </p>")
  encryptionDisabled: option<wrapperBoolean>,
  @ocaml.doc("<p> If this flag is set, a name specified in the buildspec file overrides the artifact
            name. The name specified in a buildspec file is calculated at build time and uses the
            Shell Command Language. For example, you can append a date and time to your artifact
            name so that it is always unique. </p>")
  overrideArtifactName: option<wrapperBoolean>,
  @ocaml.doc("<p>The type of build output artifact to create:</p>
        <ul>
            <li>
                <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, AWS CodePipeline ignores this
                    value if specified. This is because AWS CodePipeline manages its build output artifacts
                    instead of AWS CodeBuild.</p>
            </li>
            <li>
                <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is
                    ignored if specified, because no build output is produced.</p>
            </li>
            <li>
                <p>If <code>type</code> is set to <code>S3</code>, valid values include:</p>
                <ul>
                  <li>
                        <p>
                        <code>NONE</code>: AWS CodeBuild creates in the output bucket a folder that
                            contains the build output. This is the default if <code>packaging</code>
                            is not specified.</p>
                    </li>
                  <li>
                        <p>
                        <code>ZIP</code>: AWS CodeBuild creates in the output bucket a ZIP file that
                            contains the build output.</p>
                    </li>
               </ul>
            </li>
         </ul>")
  packaging: option<artifactPackaging>,
  @ocaml.doc("<p>Along with <code>path</code> and <code>namespaceType</code>, the pattern that AWS CodeBuild
            uses to name and store the output artifact:</p>
        <ul>
            <li>
                <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, AWS CodePipeline ignores this
                    value if specified. This is because AWS CodePipeline manages its build output names instead
                    of AWS CodeBuild.</p>
            </li>
            <li>
                <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is
                    ignored if specified, because no build output is produced.</p>
            </li>
            <li>
                <p>If <code>type</code> is set to <code>S3</code>, this is the name of the output
                    artifact object. If you set the name to be a forward slash (\"/\"), the artifact
                    is stored in the root of the output bucket.</p>
            </li>
         </ul>
        <p>For example:</p>
        <ul>
            <li>
                <p> If <code>path</code> is set to <code>MyArtifacts</code>,
                        <code>namespaceType</code> is set to <code>BUILD_ID</code>, and
                        <code>name</code> is set to <code>MyArtifact.zip</code>, then the output
                    artifact is stored in <code>MyArtifacts/<build-ID>/MyArtifact.zip</code>. </p>
            </li>
            <li>
                <p> If <code>path</code> is empty, <code>namespaceType</code> is set to
                        <code>NONE</code>, and <code>name</code> is set to \"<code>/</code>\", the
                    output artifact is stored in the root of the output bucket. </p>
            </li>
            <li>
                <p> If <code>path</code> is set to <code>MyArtifacts</code>,
                        <code>namespaceType</code> is set to <code>BUILD_ID</code>, and
                        <code>name</code> is set to \"<code>/</code>\", the output artifact is stored
                    in <code>MyArtifacts/<build-ID></code>. </p>
            </li>
         </ul>")
  name: option<string_>,
  @ocaml.doc("<p>Along with <code>path</code> and <code>name</code>, the pattern that AWS CodeBuild uses to
            determine the name and location to store the output artifact:</p>
        <ul>
            <li>
                <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, AWS CodePipeline ignores this
                    value if specified. This is because AWS CodePipeline manages its build output names instead
                    of AWS CodeBuild.</p>
            </li>
            <li>
                <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is
                    ignored if specified, because no build output is produced.</p>
            </li>
            <li>
                <p>If <code>type</code> is set to <code>S3</code>, valid values include:</p>
                <ul>
                  <li>
                        <p>
                        <code>BUILD_ID</code>: Include the build ID in the location of the
                            build output artifact.</p>
                    </li>
                  <li>
                        <p>
                        <code>NONE</code>: Do not include the build ID. This is the default if
                                <code>namespaceType</code> is not specified.</p>
                    </li>
               </ul>
            </li>
         </ul>
        <p>For example, if <code>path</code> is set to <code>MyArtifacts</code>,
                <code>namespaceType</code> is set to <code>BUILD_ID</code>, and <code>name</code> is
            set to <code>MyArtifact.zip</code>, the output artifact is stored in
                <code>MyArtifacts/<build-ID>/MyArtifact.zip</code>.</p>")
  namespaceType: option<artifactNamespace>,
  @ocaml.doc("<p>Along with <code>namespaceType</code> and <code>name</code>, the pattern that AWS CodeBuild
            uses to name and store the output artifact:</p>
        <ul>
            <li>
                <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, AWS CodePipeline ignores this
                    value if specified. This is because AWS CodePipeline manages its build output names instead
                    of AWS CodeBuild.</p>
            </li>
            <li>
                <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is
                    ignored if specified, because no build output is produced.</p>
            </li>
            <li>
                <p>If <code>type</code> is set to <code>S3</code>, this is the path to the output
                    artifact. If <code>path</code> is not specified, <code>path</code> is not
                    used.</p>
            </li>
         </ul>
        <p>For example, if <code>path</code> is set to <code>MyArtifacts</code>,
                <code>namespaceType</code> is set to <code>NONE</code>, and <code>name</code> is set
            to <code>MyArtifact.zip</code>, the output artifact is stored in the output bucket at
                <code>MyArtifacts/MyArtifact.zip</code>.</p>")
  path: option<string_>,
  @ocaml.doc("<p>Information about the build output artifact location:</p>
        <ul>
            <li>
                <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, AWS CodePipeline ignores this
                    value if specified. This is because AWS CodePipeline manages its build output locations
                    instead of AWS CodeBuild.</p>
            </li>
            <li>
                <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is
                    ignored if specified, because no build output is produced.</p>
            </li>
            <li>
                <p>If <code>type</code> is set to <code>S3</code>, this is the name of the output
                    bucket.</p>
            </li>
         </ul>")
  location: option<string_>,
  @ocaml.doc("<p>The type of build output artifact. Valid values include:</p>
        <ul>
            <li>
                <p>
                  <code>CODEPIPELINE</code>: The build project has build output generated
                    through AWS CodePipeline. </p>
                <note>
                    <p>The <code>CODEPIPELINE</code> type is not supported for
                            <code>secondaryArtifacts</code>.</p>
                </note>
            </li>
            <li>
                <p>
                  <code>NO_ARTIFACTS</code>: The build project does not produce any build
                    output.</p>
            </li>
            <li>
                <p>
                  <code>S3</code>: The build project stores build output in Amazon S3.</p>
            </li>
         </ul>")
  @as("type")
  type_: artifactsType,
}
type projectArns = array<nonEmptyString>
@ocaml.doc("<p>Additional information about a build phase that has an error. You can use this
            information for troubleshooting.</p>")
type phaseContext = {
  @ocaml.doc("<p>An explanation of the build phase's context. This might include a command ID and an
            exit code.</p>")
  message: option<string_>,
  @ocaml.doc("<p>The status code for the context of the build phase.</p>")
  statusCode: option<string_>,
}
@ocaml.doc("<p>Describes a network interface.</p>")
type networkInterface = {
  @ocaml.doc("<p>The ID of the network interface.</p>") networkInterfaceId: option<nonEmptyString>,
  @ocaml.doc("<p>The ID of the subnet.</p>") subnetId: option<nonEmptyString>,
}
type imageVersions = array<string_>
type identifiers = array<nonEmptyString>
@ocaml.doc("<p> Information about the Git submodules configuration for an AWS CodeBuild build project.
        </p>")
type gitSubmodulesConfig = {
  @ocaml.doc("<p> Set to true to fetch Git submodules for your AWS CodeBuild build project. </p>")
  fetchSubmodules: wrapperBoolean,
}
@ocaml.doc("<p>Contains information about an exported environment variable. </p>
        <p>Exported environment variables are used in conjunction with AWS CodePipeline to export
  environment variables from the current build stage to subsequent stages in the pipeline.
  For more information, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/actions-variables.html\">Working with variables</a> in the <i>AWS CodePipeline User Guide</i>.</p>
        <note>
            <p> During a build, the value of a variable is available starting with the
                  <code>install</code> phase. It can be updated between the start of the
                  <code>install</code> phase and the end of the <code>post_build</code> phase.
              After the <code>post_build</code> phase ends, the value of exported variables cannot
              change.</p>
         </note>")
type exportedEnvironmentVariable = {
  @ocaml.doc("<p>The value assigned to the exported environment variable.</p>")
  value: option<string_>,
  @ocaml.doc("<p>The name of the exported environment variable.</p>") name: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about an environment variable for a build project or a build.</p>")
type environmentVariable = {
  @ocaml.doc("<p>The type of environment variable. Valid values include:</p>
        <ul>
            <li>
                <p>
                  <code>PARAMETER_STORE</code>: An environment variable stored in Amazon EC2 Systems Manager
                    Parameter Store. To learn how to specify a parameter store environment variable,
                    see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec.env.parameter-store\">env/parameter-store</a> in the
                    <i>AWS CodeBuild User Guide</i>.</p>
            </li>
            <li>
                <p>
                  <code>PLAINTEXT</code>: An environment variable in plain text format. This is
                    the default value.</p>
            </li>
            <li>
                <p>
                  <code>SECRETS_MANAGER</code>: An environment variable stored in AWS Secrets
                    Manager. To learn how to specify a secrets manager environment variable, see
                        <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec.env.secrets-manager\">env/secrets-manager</a> in the
                    <i>AWS CodeBuild User Guide</i>.</p>
            </li>
         </ul>")
  @as("type")
  type_: option<environmentVariableType>,
  @ocaml.doc("<p>The value of the environment variable.</p>
        <important>
            <p>We strongly discourage the use of <code>PLAINTEXT</code> environment variables to
                store sensitive values, especially AWS secret key IDs and secret access keys.
                    <code>PLAINTEXT</code> environment variables can be displayed in plain text
                using the AWS CodeBuild console and the AWS Command Line Interface (AWS CLI). For sensitive values, we recommend you use an
                environment variable of type <code>PARAMETER_STORE</code> or
                    <code>SECRETS_MANAGER</code>. </p>
        </important>")
  value: string_,
  @ocaml.doc("<p>The name or key of the environment variable.</p>") name: nonEmptyString,
}
@ocaml.doc("<p>Contains information about the debug session for a build. For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html\">Viewing a
                running build in Session Manager</a>.</p>")
type debugSession = {
  @ocaml.doc("<p>Contains the identifier of the Session Manager session used for the build. To work with
            the paused build, you open this session to examine, control, and resume the
            build.</p>")
  sessionTarget: option<nonEmptyString>,
  @ocaml.doc("<p>Specifies if session debugging is enabled for this build.</p>")
  sessionEnabled: option<wrapperBoolean>,
}
type computeTypesAllowed = array<nonEmptyString>
@ocaml.doc("<p>Contains a summary of a code coverage report.</p>
        <p>Line coverage measures how many statements your tests cover. A statement is a single
      instruction, not including comments, conditionals, etc.</p>
        <p>Branch coverage determines if your tests cover every possible branch of a control
    structure, such as an <code>if</code> or <code>case</code> statement.</p>")
type codeCoverageReportSummary = {
  @ocaml.doc("<p>The number of conditional branches that are not covered by your tests.</p>")
  branchesMissed: option<nonNegativeInt>,
  @ocaml.doc("<p>The number of conditional branches that are covered by your tests.</p>")
  branchesCovered: option<nonNegativeInt>,
  @ocaml.doc("<p>The percentage of branches that are covered by your tests.</p>")
  branchCoveragePercentage: option<percentage>,
  @ocaml.doc("<p>The number of lines that are not covered by your tests.</p>")
  linesMissed: option<nonNegativeInt>,
  @ocaml.doc("<p>The number of lines that are covered by your tests.</p>")
  linesCovered: option<nonNegativeInt>,
  @ocaml.doc("<p>The percentage of lines that are covered by your tests.</p>")
  lineCoveragePercentage: option<percentage>,
}
@ocaml.doc("<p>Contains code coverage report information.</p>
        <p>Line coverage measures how many statements your tests cover. A statement is a single
      instruction, not including comments, conditionals, etc.</p>
        <p>Branch coverage determines if your tests cover every possible branch of a control
    structure, such as an <code>if</code> or <code>case</code> statement.</p>")
type codeCoverage = {
  @ocaml.doc("<p>The date and time that the tests were run.</p>") expired: option<timestamp_>,
  @ocaml.doc("<p>The number of conditional branches that are not covered by your tests.</p>")
  branchesMissed: option<nonNegativeInt>,
  @ocaml.doc("<p>The number of conditional branches that are covered by your tests.</p>")
  branchesCovered: option<nonNegativeInt>,
  @ocaml.doc("<p>The percentage of branches that are covered by your tests.</p>")
  branchCoveragePercentage: option<percentage>,
  @ocaml.doc("<p>The number of lines that are not covered by your tests.</p>")
  linesMissed: option<nonNegativeInt>,
  @ocaml.doc("<p>The number of lines that are covered by your tests.</p>")
  linesCovered: option<nonNegativeInt>,
  @ocaml.doc("<p>The percentage of lines that are covered by your tests.</p>")
  lineCoveragePercentage: option<percentage>,
  @ocaml.doc("<p>The path of the test report file.</p>") filePath: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the report.</p>") reportARN: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the code coverage report.</p>") id: option<nonEmptyString>,
}
@ocaml.doc("<p> Information about Amazon CloudWatch Logs for a build project. </p>")
type cloudWatchLogsConfig = {
  @ocaml.doc("<p> The prefix of the stream name of the Amazon CloudWatch Logs. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html\">Working
                with Log Groups and Log Streams</a>. </p>")
  streamName: option<string_>,
  @ocaml.doc("<p> The group name of the logs in Amazon CloudWatch Logs. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html\">Working
                with Log Groups and Log Streams</a>. </p>")
  groupName: option<string_>,
  @ocaml.doc("<p>The current status of the logs in Amazon CloudWatch Logs for a build project. Valid values are:</p>
        <ul>
            <li>
                <p>
                  <code>ENABLED</code>: Amazon CloudWatch Logs are enabled for this build project.</p>
            </li>
            <li>
                <p>
                  <code>DISABLED</code>: Amazon CloudWatch Logs are not enabled for this build project.</p>
            </li>
         </ul>")
  status: logsConfigStatusType,
}
@ocaml.doc("<p>Contains information that defines how the AWS CodeBuild build project reports the build status
            to the source provider. </p>")
type buildStatusConfig = {
  @ocaml.doc("<p>Specifies the target url of the build status CodeBuild sends to the source provider. The
            usage of this parameter depends on the source provider.</p>
        <dl>
            <dt>Bitbucket</dt>
            <dd>
                    <p>This parameter is used for the <code>url</code> parameter in the Bitbucket
                        commit status. For more information, see <a href=\"https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build\">build</a> in the Bitbucket API documentation.</p>
                </dd>
            <dt>GitHub/GitHub Enterprise Server</dt>
            <dd>
                    <p>This parameter is used for the <code>target_url</code> parameter in the
                        GitHub commit status. For more information, see <a href=\"https://developer.github.com/v3/repos/statuses/#create-a-commit-status\">Create a commit status</a> in the GitHub developer guide.</p>
                </dd>
         </dl>")
  targetUrl: option<string_>,
  @ocaml.doc("<p>Specifies the context of the build status CodeBuild sends to the source provider. The
            usage of this parameter depends on the source provider.</p>
        <dl>
            <dt>Bitbucket</dt>
            <dd>
                    <p>This parameter is used for the <code>name</code> parameter in the
                        Bitbucket commit status. For more information, see <a href=\"https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build\">build</a> in the Bitbucket API documentation.</p>
                </dd>
            <dt>GitHub/GitHub Enterprise Server</dt>
            <dd>
                    <p>This parameter is used for the <code>context</code> parameter in the
                        GitHub commit status. For more information, see <a href=\"https://developer.github.com/v3/repos/statuses/#create-a-commit-status\">Create a commit status</a> in the GitHub developer guide.</p>
                </dd>
         </dl>")
  context: option<string_>,
}
type buildReportArns = array<string_>
@ocaml.doc("<p>Information about a build that could not be successfully deleted.</p>")
type buildNotDeleted = {
  @ocaml.doc(
    "<p>Additional information about the build that could not be successfully deleted.</p>"
  )
  statusCode: option<string_>,
  @ocaml.doc("<p>The ID of the build that could not be successfully deleted.</p>")
  id: option<nonEmptyString>,
}
type buildIds = array<nonEmptyString>
type buildBatchIds = array<nonEmptyString>
@ocaml.doc("<p>Specifies filters when retrieving batch builds.</p>")
type buildBatchFilter = {
  @ocaml.doc("<p>The status of the batch builds to retrieve. Only batch builds that have this status will
            be retrieved.</p>")
  status: option<statusType>,
}
@ocaml.doc("<p>Information about build output artifacts.</p>")
type buildArtifacts = {
  bucketOwnerAccess: option<bucketOwnerAccess>,
  @ocaml.doc("<p> An identifier for this artifact definition. </p>")
  artifactIdentifier: option<string_>,
  @ocaml.doc("<p> Information that tells you if encryption for build artifacts is disabled. </p>")
  encryptionDisabled: option<wrapperBoolean>,
  @ocaml.doc("<p> If this flag is set, a name specified in the buildspec file overrides the artifact
            name. The name specified in a buildspec file is calculated at build time and uses the
            Shell Command Language. For example, you can append a date and time to your artifact
            name so that it is always unique. </p>")
  overrideArtifactName: option<wrapperBoolean>,
  @ocaml.doc("<p>The MD5 hash of the build artifact.</p>
        <p>You can use this hash along with a checksum tool to confirm file integrity and
            authenticity.</p>
        <note>
            <p>This value is available only if the build project's <code>packaging</code> value
                is set to <code>ZIP</code>.</p>
        </note>")
  md5sum: option<string_>,
  @ocaml.doc("<p>The SHA-256 hash of the build artifact.</p>
        <p>You can use this hash along with a checksum tool to confirm file integrity and
            authenticity.</p>
        <note>
            <p>This value is available only if the build project's <code>packaging</code> value
                is set to <code>ZIP</code>.</p>
        </note>")
  sha256sum: option<string_>,
  @ocaml.doc("<p>Information about the location of the build artifacts.</p>")
  location: option<string_>,
}
@ocaml.doc("<p>Information about the VPC configuration that AWS CodeBuild accesses.</p>")
type vpcConfig = {
  @ocaml.doc("<p>A list of one or more security groups IDs in your Amazon VPC.</p>")
  securityGroupIds: option<securityGroupIds>,
  @ocaml.doc("<p>A list of one or more subnet IDs in your Amazon VPC.</p>")
  subnets: option<subnets>,
  @ocaml.doc("<p>The ID of the Amazon VPC.</p>") vpcId: option<nonEmptyString>,
}
@ocaml.doc("<p> Information about a test report. </p>")
type testReportSummary = {
  @ocaml.doc("<p> The number of nanoseconds it took to run all of the test cases in this report.
        </p>")
  durationInNanoSeconds: wrapperLong,
  @ocaml.doc("<p> A map that contains the number of each type of status returned by the test results in
            this <code>TestReportSummary</code>. </p>")
  statusCounts: reportStatusCounts,
  @ocaml.doc("<p> The number of test cases in this <code>TestReportSummary</code>. The total includes
            truncated test cases. </p>")
  total: wrapperInt,
}
type testCases = array<testCase>
type tagList_ = array<tag>
type sourceCredentialsInfos = array<sourceCredentialsInfo>
type resolvedSecondaryArtifacts = array<resolvedArtifact>
type reportGroupTrendRawDataList = array<reportWithRawData>
@ocaml.doc("<p> Information about the location where the run of a report is exported. </p>")
type reportExportConfig = {
  @ocaml.doc("<p> A <code>S3ReportExportConfig</code> object that contains information about the S3
            bucket where the run of a report is exported. </p>")
  s3Destination: option<s3ReportExportConfig>,
  @ocaml.doc("<p> The export configuration type. Valid values are: </p>
        <ul>
            <li>
                <p>
                    <code>S3</code>: The report results are exported to an S3 bucket. </p>
            </li>
            <li>
                <p>
                    <code>NO_EXPORT</code>: The report results are not exported. </p>
            </li>
         </ul>")
  exportConfigType: option<reportExportConfigType>,
}
@ocaml.doc("<p>Information about the build input source code for the build project.</p>")
type projectSource = {
  @ocaml.doc("<p>An identifier for this project source. The identifier can only contain
          alphanumeric characters and underscores, and must be less than 128 characters in length. </p>")
  sourceIdentifier: option<string_>,
  @ocaml.doc("<p>Enable this flag to ignore SSL warnings while connecting to the project source
          code.</p>")
  insecureSsl: option<wrapperBoolean>,
  @ocaml.doc("<p>Contains information that defines how the build project reports the build status to
            the source provider. This option is only used when the source provider is
                <code>GITHUB</code>, <code>GITHUB_ENTERPRISE</code>, or
            <code>BITBUCKET</code>.</p>")
  buildStatusConfig: option<buildStatusConfig>,
  @ocaml.doc("<p> Set to true to report the status of a build's start and finish to your source
            provider. This option is valid only when your source provider is GitHub, GitHub
            Enterprise, or Bitbucket. If this is set and you use a different source provider, an
            <code>invalidInputException</code> is thrown. </p>
            <p>To be able to report the build status to the source provider, the user associated with the source provider must
have write access to the repo. If the user does not have write access, the build status cannot be updated. For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/access-tokens.html\">Source provider access</a> in the <i>AWS CodeBuild User Guide</i>.</p>
        <note>
            <p> The status of a build triggered by a webhook is always reported to your source
                provider. </p>
        </note>")
  reportBuildStatus: option<wrapperBoolean>,
  @ocaml.doc("<p>Information about the authorization settings for AWS CodeBuild to access the source code to be
            built.</p>
        <p>This information is for the AWS CodeBuild console's use only. Your code should not get or set
            this information directly.</p>")
  auth: option<sourceAuth>,
  @ocaml.doc("<p>The buildspec file declaration to use for the builds in this build project.</p>
        <p> If this value is set, it can be either an inline buildspec definition, the path to an
            alternate buildspec file relative to the value of the built-in
                <code>CODEBUILD_SRC_DIR</code> environment variable, or the path to an S3 bucket.
            The bucket must be in the same AWS Region as the build project. Specify the buildspec
            file using its ARN (for example,
                <code>arn:aws:s3:::my-codebuild-sample2/buildspec.yml</code>). If this value is not
            provided or is set to an empty string, the source code must contain a buildspec file in
            its root directory. For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage\">Buildspec File Name and Storage Location</a>. </p>")
  buildspec: option<string_>,
  @ocaml.doc("<p> Information about the Git submodules configuration for the build project. </p>")
  gitSubmodulesConfig: option<gitSubmodulesConfig>,
  @ocaml.doc("<p>Information about the Git clone depth for the build project.</p>")
  gitCloneDepth: option<gitCloneDepth>,
  @ocaml.doc("<p>Information about the location of the source code to be built. Valid values
            include:</p>
        <ul>
            <li>
                <p>For source code settings that are specified in the source action of a pipeline
                    in AWS CodePipeline, <code>location</code> should not be specified. If it is specified,
                    AWS CodePipeline ignores it. This is because AWS CodePipeline uses the settings in a pipeline's source
                    action instead of this value.</p>
            </li>
            <li>
                <p>For source code in an AWS CodeCommit repository, the HTTPS clone URL to the repository
                    that contains the source code and the buildspec file (for example,
                        <code>https://git-codecommit.<region-ID>.amazonaws.com/v1/repos/<repo-name></code>).</p>
            </li>
            <li>
                <p>For source code in an Amazon S3 input bucket, one of the following. </p>
                <ul>
                  <li>
                        <p>The path to the ZIP file that contains the source code (for example,
                                <code><bucket-name>/<path>/<object-name>.zip</code>). </p>
                    </li>
                  <li>
                        <p>The path to the folder that contains the source code (for example,
                                <code><bucket-name>/<path-to-source-code>/<folder>/</code>). </p>
                    </li>
               </ul>
            </li>
            <li>
                <p>For source code in a GitHub repository, the HTTPS clone URL to the repository
                    that contains the source and the buildspec file. You must connect your AWS
                    account to your GitHub account. Use the AWS CodeBuild console to start creating a build
                    project. When you use the console to connect (or reconnect) with GitHub, on the
                    GitHub <b>Authorize application</b> page, for
                        <b>Organization access</b>, choose <b>Request access</b> next to each repository you want to
                    allow AWS CodeBuild to have access to, and then choose <b>Authorize
                        application</b>. (After you have connected to your GitHub account,
                    you do not need to finish creating the build project. You can leave the AWS CodeBuild
                    console.) To instruct AWS CodeBuild to use this connection, in the <code>source</code>
                    object, set the <code>auth</code> object's <code>type</code> value to
                        <code>OAUTH</code>.</p>
            </li>
            <li>
                <p>For source code in a Bitbucket repository, the HTTPS clone URL to the
                    repository that contains the source and the buildspec file. You must connect
                    your AWS account to your Bitbucket account. Use the AWS CodeBuild console to start
                    creating a build project. When you use the console to connect (or reconnect)
                    with Bitbucket, on the Bitbucket <b>Confirm access to your
                        account</b> page, choose <b>Grant
                        access</b>. (After you have connected to your Bitbucket account, you
                    do not need to finish creating the build project. You can leave the AWS CodeBuild
                    console.) To instruct AWS CodeBuild to use this connection, in the <code>source</code>
                    object, set the <code>auth</code> object's <code>type</code> value to
                        <code>OAUTH</code>.</p>
            </li>
         </ul>")
  location: option<string_>,
  @ocaml.doc("<p>The type of repository that contains the source code to be built. Valid values
            include:</p>
        <ul>
            <li>
                <p>
                  <code>BITBUCKET</code>: The source code is in a Bitbucket repository.</p>
            </li>
            <li>
                <p>
                  <code>CODECOMMIT</code>: The source code is in an AWS CodeCommit repository.</p>
            </li>
            <li>
                <p>
                  <code>CODEPIPELINE</code>: The source code settings are specified in the
                    source action of a pipeline in AWS CodePipeline.</p>
            </li>
            <li>
                <p>
                  <code>GITHUB</code>: The source code is in a GitHub or GitHub Enterprise Cloud
                    repository.</p>
            </li>
            <li>
                <p>
                  <code>GITHUB_ENTERPRISE</code>: The source code is in a GitHub Enterprise
                    Server repository.</p>
            </li>
            <li>
                <p>
                  <code>NO_SOURCE</code>: The project does not have input source code.</p>
            </li>
            <li>
                <p>
                  <code>S3</code>: The source code is in an Amazon S3 bucket.</p>
            </li>
         </ul>")
  @as("type")
  type_: sourceType,
}
type projectSecondarySourceVersions = array<projectSourceVersion>
type projectFileSystemLocations = array<projectFileSystemLocation>
@ocaml.doc("<p>Information about the cache for the build project.</p>")
type projectCache = {
  @ocaml.doc("<p>An array of strings that specify the local cache modes. You can use one or more local
            cache modes at the same time. This is only used for <code>LOCAL</code> cache
            types.</p>
        <p>Possible values are:</p>
        <dl>
            <dt>LOCAL_SOURCE_CACHE</dt>
            <dd>
                    <p>Caches Git metadata for primary and secondary sources. After the cache is
                        created, subsequent builds pull only the change between commits. This mode
                        is a good choice for projects with a clean working directory and a source
                        that is a large Git repository. If you choose this option and your project
                        does not use a Git repository (GitHub, GitHub Enterprise, or Bitbucket), the
                        option is ignored. </p>
                </dd>
            <dt>LOCAL_DOCKER_LAYER_CACHE</dt>
            <dd>
                    <p>Caches existing Docker layers. This mode is a good choice for projects
                        that build or pull large Docker images. It can prevent the performance
                        issues caused by pulling large Docker images down from the network. </p>
                    <note>
                        <ul>
                     <li>
                                <p>You can use a Docker layer cache in the Linux environment
                                    only. </p>
                            </li>
                     <li>
                                <p>The <code>privileged</code> flag must be set so that your
                                    project has the required Docker permissions. </p>
                            </li>
                     <li>
                                <p>You should consider the security implications before you use a
                                    Docker layer cache. </p>
                            </li>
                  </ul>
                    </note>
                </dd>
            <dt>LOCAL_CUSTOM_CACHE</dt>
            <dd>
                    <p>Caches directories you specify in the buildspec file. This mode is a good
                        choice if your build scenario is not suited to one of the other three local
                        cache modes. If you use a custom cache: </p>
                    <ul>
                  <li>
                            <p>Only directories can be specified for caching. You cannot specify
                                individual files. </p>
                        </li>
                  <li>
                            <p>Symlinks are used to reference cached directories. </p>
                        </li>
                  <li>
                            <p>Cached directories are linked to your build before it downloads
                                its project sources. Cached items are overridden if a source item
                                has the same name. Directories are specified using cache paths in
                                the buildspec file. </p>
                        </li>
               </ul>
                </dd>
         </dl>")
  modes: option<projectCacheModes>,
  @ocaml.doc("<p>Information about the cache location: </p>
        <ul>
            <li>
                <p>
                  <code>NO_CACHE</code> or <code>LOCAL</code>: This value is ignored.</p>
            </li>
            <li>
                <p>
                  <code>S3</code>: This is the S3 bucket name/prefix.</p>
            </li>
         </ul>")
  location: option<string_>,
  @ocaml.doc("<p>The type of cache used by the build project. Valid values include:</p>
        <ul>
            <li>
                <p>
                  <code>NO_CACHE</code>: The build project does not use any cache.</p>
            </li>
            <li>
                <p>
                  <code>S3</code>: The build project reads and writes from and to S3.</p>
            </li>
            <li>
                <p>
                  <code>LOCAL</code>: The build project stores a cache locally on a build host
                    that is only available to that build host.</p>
            </li>
         </ul>")
  @as("type")
  type_: cacheType,
}
type projectArtifactsList = array<projectArtifacts>
type phaseContexts = array<phaseContext>
@ocaml.doc("<p>Information about build logs in Amazon CloudWatch Logs.</p>")
type logsLocation = {
  @ocaml.doc("<p> Information about S3 logs for a build project. </p>")
  s3Logs: option<s3LogsConfig>,
  @ocaml.doc("<p> Information about Amazon CloudWatch Logs for a build project. </p>")
  cloudWatchLogs: option<cloudWatchLogsConfig>,
  @ocaml.doc("<p> The ARN of S3 logs for a build project. Its format is
                <code>arn:${Partition}:s3:::${BucketName}/${ObjectName}</code>. For more
            information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html#amazons3-resources-for-iam-policies\">Resources Defined by Amazon S3</a>. </p>")
  s3LogsArn: option<string_>,
  @ocaml.doc("<p> The ARN of Amazon CloudWatch Logs for a build project. Its format is
                <code>arn:${Partition}:logs:${Region}:${Account}:log-group:${LogGroupName}:log-stream:${LogStreamName}</code>.
            For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatchlogs.html#amazoncloudwatchlogs-resources-for-iam-policies\">Resources Defined by Amazon CloudWatch Logs</a>. </p>")
  cloudWatchLogsArn: option<string_>,
  @ocaml.doc("<p> The URL to a build log in an S3 bucket. </p>") s3DeepLink: option<string_>,
  @ocaml.doc("<p>The URL to an individual build log in Amazon CloudWatch Logs.</p>")
  deepLink: option<string_>,
  @ocaml.doc("<p>The name of the Amazon CloudWatch Logs stream for the build logs.</p>")
  streamName: option<string_>,
  @ocaml.doc("<p>The name of the Amazon CloudWatch Logs group for the build logs.</p>")
  groupName: option<string_>,
}
@ocaml.doc("<p> Information about logs for a build project. These can be logs in Amazon CloudWatch Logs, built in a
            specified S3 bucket, or both. </p>")
type logsConfig = {
  @ocaml.doc("<p> Information about logs built to an S3 bucket for a build project. S3 logs are not
            enabled by default. </p>")
  s3Logs: option<s3LogsConfig>,
  @ocaml.doc(
    "<p> Information about Amazon CloudWatch Logs for a build project. Amazon CloudWatch Logs are enabled by default. </p>"
  )
  cloudWatchLogs: option<cloudWatchLogsConfig>,
}
type filterGroup = array<webhookFilter>
type exportedEnvironmentVariables = array<exportedEnvironmentVariable>
type environmentVariables = array<environmentVariable>
@ocaml.doc("<p>Information about a Docker image that is managed by AWS CodeBuild.</p>")
type environmentImage = {
  @ocaml.doc("<p>A list of environment image versions.</p>") versions: option<imageVersions>,
  @ocaml.doc("<p>The description of the Docker image.</p>") description: option<string_>,
  @ocaml.doc("<p>The name of the Docker image.</p>") name: option<string_>,
}
type codeCoverages = array<codeCoverage>
type buildsNotDeleted = array<buildNotDeleted>
type buildArtifactsList = array<buildArtifacts>
@ocaml.doc("<p>Specifies restrictions for the batch build.</p>")
type batchRestrictions = {
  @ocaml.doc("<p>An array of strings that specify the compute types that are allowed for the batch
            build. See <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html\">Build environment
                compute types</a> in the <i>AWS CodeBuild User Guide</i> for these values.
        </p>")
  computeTypesAllowed: option<computeTypesAllowed>,
  @ocaml.doc("<p>Specifies the maximum number of builds allowed.</p>")
  maximumBuildsAllowed: option<wrapperInt>,
}
@ocaml.doc("<p>A series of reports. Each report contains information about the results from running a
            series of test cases. You specify the test cases for a report group in the buildspec for
            a build project using one or more paths to the test case files. </p>")
type reportGroup = {
  @ocaml.doc("<p>The status of the report group. This property is read-only.</p>
         <p>This can be one of the following values:</p>
         <dl>
            <dt>ACTIVE</dt>
            <dd>
               <p>The report group is active.</p>
            </dd>
            <dt>DELETING</dt>
            <dd>
               <p>The report group is in the process of being deleted.</p>
            </dd>
         </dl>")
  status: option<reportGroupStatusType>,
  @ocaml.doc("<p>A list of tag key and value pairs associated with this report group. </p>
        <p>These tags are available for use by AWS services that support AWS CodeBuild report group
      tags.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>The date and time this <code>ReportGroup</code> was last modified. </p>")
  lastModified: option<timestamp_>,
  @ocaml.doc("<p>The date and time this <code>ReportGroup</code> was created. </p>")
  created: option<timestamp_>,
  @ocaml.doc("<p>Information about the destination where the raw data of this <code>ReportGroup</code>
            is exported. </p>")
  exportConfig: option<reportExportConfig>,
  @ocaml.doc("<p>The type of the <code>ReportGroup</code>. This can be one of the following
            values:</p>
         <dl>
            <dt>CODE_COVERAGE</dt>
            <dd>
               <p>The report group contains code coverage reports.</p>
            </dd>
            <dt>TEST</dt>
            <dd>
               <p>The report group contains test reports.</p>
            </dd>
         </dl>")
  @as("type")
  type_: option<reportType>,
  @ocaml.doc("<p>The name of the <code>ReportGroup</code>. 
    </p>")
  name: option<reportGroupName>,
  @ocaml.doc("<p>The ARN of the <code>ReportGroup</code>. 
    </p>")
  arn: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about the results from running a series of test cases during the run of a
            build project. The test cases are specified in the buildspec for the build project using
            one or more paths to the test case files. You can specify any type of tests you want,
            such as unit tests, integration tests, and functional tests. </p>")
type report = {
  @ocaml.doc("<p>A <code>CodeCoverageReportSummary</code> object that contains a code coverage summary for
            this report.</p>")
  codeCoverageSummary: option<codeCoverageReportSummary>,
  @ocaml.doc("<p> A <code>TestReportSummary</code> object that contains information about this test
      report. </p>")
  testSummary: option<testReportSummary>,
  @ocaml.doc("<p> A boolean that specifies if this report run is truncated. The list of test cases is
      truncated after the maximum number of test cases is reached. </p>")
  truncated: option<wrapperBoolean>,
  @ocaml.doc("<p> Information about where the raw data used to generate this report was exported.
    </p>")
  exportConfig: option<reportExportConfig>,
  @ocaml.doc("<p> The date and time a report expires. A report expires 30 days after it is created. An
      expired report is not available to view in CodeBuild. </p>")
  expired: option<timestamp_>,
  @ocaml.doc("<p> The date and time this report run occurred. </p>") created: option<timestamp_>,
  @ocaml.doc("<p> The status of this report. </p>") status: option<reportStatusType>,
  @ocaml.doc("<p> The ARN of the build run that generated this report. </p>")
  executionId: option<string_>,
  @ocaml.doc("<p> The ARN of the report group associated with this report. </p>")
  reportGroupArn: option<nonEmptyString>,
  @ocaml.doc("<p> The name of the report that was run. </p>") name: option<string_>,
  @ocaml.doc("<p>The type of the report that was run.</p>
         <dl>
            <dt>CODE_COVERAGE</dt>
            <dd>
               <p>A code coverage report.</p>
            </dd>
            <dt>TEST</dt>
            <dd>
               <p>A test report.</p>
            </dd>
         </dl>")
  @as("type")
  type_: option<reportType>,
  @ocaml.doc("<p> The ARN of the report run. </p>") arn: option<nonEmptyString>,
}
type projectSources = array<projectSource>
@ocaml.doc("<p>Information about the build environment of the build project.</p>")
type projectEnvironment = {
  @ocaml.doc("<p> The type of credentials AWS CodeBuild uses to pull images in your build. There are two valid
            values: </p>
        <ul>
            <li>
                <p>
                    <code>CODEBUILD</code> specifies that AWS CodeBuild uses its own credentials.
                    This requires that you modify your ECR repository policy to trust AWS
                    CodeBuild's service principal. </p>
            </li>
            <li>
                <p>
                    <code>SERVICE_ROLE</code> specifies that AWS CodeBuild uses your build project's service
                    role. </p>
            </li>
         </ul>
        <p> When you use a cross-account or private registry image, you must use SERVICE_ROLE
            credentials. When you use an AWS CodeBuild curated image, you must use CODEBUILD credentials.
        </p>")
  imagePullCredentialsType: option<imagePullCredentialsType>,
  @ocaml.doc("<p> The credentials for access to a private registry.</p>")
  registryCredential: option<registryCredential>,
  @ocaml.doc("<p>The ARN of the Amazon S3 bucket, path prefix, and object key that contains the PEM-encoded
            certificate for the build project. For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/create-project-cli.html#cli.environment.certificate\">certificate</a> in the
                <i>AWS CodeBuild User Guide</i>.</p>")
  certificate: option<string_>,
  @ocaml.doc("<p>Enables running the Docker daemon inside a Docker container. Set to true only if the
            build project is used to build Docker images. Otherwise, a build that attempts to
            interact with the Docker daemon fails. The default setting is <code>false</code>.</p>
        <p>You can initialize the Docker daemon during the install phase of your build by adding
            one of the following sets of commands to the install phase of your buildspec
            file:</p>
        <p>If the operating system's base image is Ubuntu Linux:</p>
        <p>
            <code>- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=overlay&</code>
        </p>
        <p>
            <code>- timeout 15 sh -c \"until docker info; do echo .; sleep 1; done\"</code>
        </p>
        <p>If the operating system's base image is Alpine Linux and the previous command does not
            work, add the <code>-t</code> argument to <code>timeout</code>:</p>
        <p>
            <code>- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=overlay&</code>
         </p>
        <p>
            <code>- timeout -t 15 sh -c \"until docker info; do echo .; sleep 1; done\"</code>
        </p>")
  privilegedMode: option<wrapperBoolean>,
  @ocaml.doc("<p>A set of environment variables to make available to builds for this build
            project.</p>")
  environmentVariables: option<environmentVariables>,
  @ocaml.doc("<p>Information about the compute resources the build project uses. Available values
            include:</p>
        <ul>
            <li>
                <p>
                  <code>BUILD_GENERAL1_SMALL</code>: Use up to 3 GB memory and 2 vCPUs for
                    builds.</p>
            </li>
            <li>
                <p>
                  <code>BUILD_GENERAL1_MEDIUM</code>: Use up to 7 GB memory and 4 vCPUs for
                    builds.</p>
            </li>
            <li>
                <p>
                  <code>BUILD_GENERAL1_LARGE</code>: Use up to 16 GB memory and 8 vCPUs for
                    builds, depending on your environment type.</p>
            </li>
            <li>
                <p>
                  <code>BUILD_GENERAL1_2XLARGE</code>: Use up to 145 GB memory, 72 vCPUs, and
                    824 GB of SSD storage for builds. This compute type supports Docker images up to
                    100 GB uncompressed.</p>
            </li>
         </ul>
        <p> If you use <code>BUILD_GENERAL1_LARGE</code>: </p>
        <ul>
            <li>
                <p> For environment type <code>LINUX_CONTAINER</code>, you can use up to 15 GB
                    memory and 8 vCPUs for builds. </p>
            </li>
            <li>
                <p> For environment type <code>LINUX_GPU_CONTAINER</code>, you can use up to 255
                    GB memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.</p>
            </li>
            <li>
                <p> For environment type <code>ARM_CONTAINER</code>, you can use up to 16 GB
                    memory and 8 vCPUs on ARM-based processors for builds.</p>
            </li>
         </ul>
        <p> For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html\">Build Environment
                Compute Types</a> in the <i>AWS CodeBuild User Guide.</i>
        </p>")
  computeType: computeType,
  @ocaml.doc("<p>The image tag or image digest that identifies the Docker image to use for this build
            project. Use the following formats:</p>
        <ul>
            <li>
                <p>For an image tag: <code><registry>/<repository>:<tag></code>. For
                    example, in the Docker repository that CodeBuild uses to manage its Docker
                    images, this would be <code>aws/codebuild/standard:4.0</code>. </p>
            </li>
            <li>
                <p>For an image digest: <code><registry>/<repository>@<digest></code>.
                    For example, to specify an image with the digest
                    \"sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf,\" use
                        <code><registry>/<repository>@sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf</code>.</p>
            </li>
         </ul>")
  image: nonEmptyString,
  @ocaml.doc("<p>The type of build environment to use for related builds.</p>
        <ul>
            <li>
                <p>The environment type <code>ARM_CONTAINER</code> is available only in regions
                    US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland),
                    Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia Pacific (Sydney), and
                    EU (Frankfurt).</p>
            </li>
            <li>
                <p>The environment type <code>LINUX_CONTAINER</code> with compute type
                        <code>build.general1.2xlarge</code> is available only in regions
                    US East (N. Virginia), US East (Ohio), US West (Oregon),
                    Canada (Central), EU (Ireland), EU (London),
                    EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Seoul),
                    Asia Pacific (Singapore), Asia Pacific (Sydney), China (Beijing), and
                    China (Ningxia).</p>
            </li>
            <li>
                <p>The environment type <code>LINUX_GPU_CONTAINER</code> is available only in
                    regions US East (N. Virginia), US East (Ohio), US West (Oregon),
                    Canada (Central), EU (Ireland), EU (London),
                    EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Seoul),
                    Asia Pacific (Singapore), Asia Pacific (Sydney) , China (Beijing), and
                    China (Ningxia).</p>
            </li>
         </ul>")
  @as("type")
  type_: environmentType,
}
@ocaml.doc("<p>Contains configuration information about a batch build project.</p>")
type projectBuildBatchConfig = {
  @ocaml.doc(
    "<p>Specifies the maximum amount of time, in minutes, that the batch build must be completed in.</p>"
  )
  timeoutInMins: option<wrapperInt>,
  @ocaml.doc("<p>A <code>BatchRestrictions</code> object that specifies the restrictions for the batch
            build.</p>")
  restrictions: option<batchRestrictions>,
  @ocaml.doc("<p>Specifies if the build artifacts for the batch build should be combined into a single
            artifact location.</p>")
  combineArtifacts: option<wrapperBoolean>,
  @ocaml.doc("<p>Specifies the service role ARN for the batch build project.</p>")
  serviceRole: option<nonEmptyString>,
}
type filterGroups = array<filterGroup>
type environmentImages = array<environmentImage>
@ocaml.doc("<p>Contains summary information about a batch build group.</p>")
type buildSummary = {
  @ocaml.doc("<p>An array of <code>ResolvedArtifact</code> objects that represents the secondary build
            artifacts for the build group.</p>")
  secondaryArtifacts: option<resolvedSecondaryArtifacts>,
  @ocaml.doc("<p>A <code>ResolvedArtifact</code> object that represents the primary build artifacts for the
            build group.</p>")
  primaryArtifact: option<resolvedArtifact>,
  @ocaml.doc("<p>The status of the build group.</p>
        <dl>
            <dt>FAILED</dt>
            <dd>
                    <p>The build group failed.</p>
                </dd>
            <dt>FAULT</dt>
            <dd>
                    <p>The build group faulted.</p>
                </dd>
            <dt>IN_PROGRESS</dt>
            <dd>
                    <p>The build group is still in progress.</p>
                </dd>
            <dt>STOPPED</dt>
            <dd>
                    <p>The build group stopped.</p>
                </dd>
            <dt>SUCCEEDED</dt>
            <dd>
                    <p>The build group succeeded.</p>
                </dd>
            <dt>TIMED_OUT</dt>
            <dd>
                    <p>The build group timed out.</p>
                </dd>
         </dl>")
  buildStatus: option<statusType>,
  @ocaml.doc("<p>When the build was started, expressed in Unix time format.</p>")
  requestedOn: option<timestamp_>,
  @ocaml.doc("<p>The batch build ARN.</p>") arn: option<string_>,
}
@ocaml.doc("<p>Information about a stage for a build.</p>")
type buildPhase = {
  @ocaml.doc("<p>Additional information about a build phase, especially to help troubleshoot a failed
            build.</p>")
  contexts: option<phaseContexts>,
  @ocaml.doc("<p>How long, in seconds, between the starting and ending times of the build's
            phase.</p>")
  durationInSeconds: option<wrapperLong>,
  @ocaml.doc("<p>When the build phase ended, expressed in Unix time format.</p>")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>When the build phase started, expressed in Unix time format.</p>")
  startTime: option<timestamp_>,
  @ocaml.doc("<p>The current status of the build phase. Valid values include:</p>
        <dl>
            <dt>FAILED</dt>
            <dd>
                    <p>The build phase failed.</p>
                </dd>
            <dt>FAULT</dt>
            <dd>
                    <p>The build phase faulted.</p>
                </dd>
            <dt>IN_PROGRESS</dt>
            <dd>
                    <p>The build phase is still in progress.</p>
                </dd>
            <dt>QUEUED</dt>
            <dd>
                    <p>The build has been submitted and is queued behind other submitted
                        builds.</p>
                </dd>
            <dt>STOPPED</dt>
            <dd>
                    <p>The build phase stopped.</p>
                </dd>
            <dt>SUCCEEDED</dt>
            <dd>
                    <p>The build phase succeeded.</p>
                </dd>
            <dt>TIMED_OUT</dt>
            <dd>
                    <p>The build phase timed out.</p>
                </dd>
         </dl>")
  phaseStatus: option<statusType>,
  @ocaml.doc("<p>The name of the build phase. Valid values include:</p>
        <ul>
            <li>
                <p>
                  <code>BUILD</code>: Core build activities typically occur in this build
                    phase.</p>
            </li>
            <li>
                <p>
                  <code>COMPLETED</code>: The build has been completed.</p>
            </li>
            <li>
                <p>
                  <code>DOWNLOAD_SOURCE</code>: Source code is being downloaded in this build
                    phase.</p>
            </li>
            <li>
                <p>
                  <code>FINALIZING</code>: The build process is completing in this build
                    phase.</p>
            </li>
            <li>
                <p>
                  <code>INSTALL</code>: Installation activities typically occur in this build
                    phase.</p>
            </li>
            <li>
                <p>
                  <code>POST_BUILD</code>: Post-build activities typically occur in this build
                    phase.</p>
            </li>
            <li>
                <p>
                  <code>PRE_BUILD</code>: Pre-build activities typically occur in this build
                    phase.</p>
            </li>
            <li>
                <p>
                  <code>PROVISIONING</code>: The build environment is being set up.</p>
            </li>
            <li>
                <p>
                  <code>QUEUED</code>: The build has been submitted and is queued behind other
                    submitted builds.</p>
            </li>
            <li>
                <p>
                  <code>SUBMITTED</code>: The build has been submitted.</p>
            </li>
            <li>
                <p>
                  <code>UPLOAD_ARTIFACTS</code>: Build output artifacts are being uploaded to
                    the output location.</p>
            </li>
         </ul>")
  phaseType: option<buildPhaseType>,
}
@ocaml.doc("<p>Contains information about a stage for a batch build.</p>")
type buildBatchPhase = {
  @ocaml.doc("<p>Additional information about the batch build phase. Especially to help troubleshoot a
            failed batch build.</p>")
  contexts: option<phaseContexts>,
  @ocaml.doc("<p>How long, in seconds, between the starting and ending times of the batch build's
        phase.</p>")
  durationInSeconds: option<wrapperLong>,
  @ocaml.doc("<p>When the batch build phase ended, expressed in Unix time format.</p>")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>When the batch build phase started, expressed in Unix time format.</p>")
  startTime: option<timestamp_>,
  @ocaml.doc("<p>The current status of the batch build phase. Valid values include:</p>
        <dl>
            <dt>FAILED</dt>
            <dd>
                    <p>The build phase failed.</p>
                </dd>
            <dt>FAULT</dt>
            <dd>
                    <p>The build phase faulted.</p>
                </dd>
            <dt>IN_PROGRESS</dt>
            <dd>
                    <p>The build phase is still in progress.</p>
                </dd>
            <dt>QUEUED</dt>
            <dd>
                    <p>The build has been submitted and is queued behind other submitted
                        builds.</p>
                </dd>
            <dt>STOPPED</dt>
            <dd>
                    <p>The build phase stopped.</p>
                </dd>
            <dt>SUCCEEDED</dt>
            <dd>
                    <p>The build phase succeeded.</p>
                </dd>
            <dt>TIMED_OUT</dt>
            <dd>
                    <p>The build phase timed out.</p>
                </dd>
         </dl>")
  phaseStatus: option<statusType>,
  @ocaml.doc("<p>The name of the batch build phase. Valid values include:</p>
        <dl>
            <dt>COMBINE_ARTIFACTS</dt>
            <dd>
                    <p>Build output artifacts are being combined and uploaded to the output
                        location.</p>
                </dd>
            <dt>DOWNLOAD_BATCHSPEC</dt>
            <dd>
                    <p>The batch build specification is being downloaded.</p>
                </dd>
            <dt>FAILED</dt>
            <dd>
                    <p>One or more of the builds failed.</p>
                </dd>
            <dt>IN_PROGRESS</dt>
            <dd>
                    <p>The batch build is in progress.</p>
                </dd>
            <dt>STOPPED</dt>
            <dd>
                    <p>The batch build was stopped.</p>
                </dd>
            <dt>SUBMITTED</dt>
            <dd>
                    <p>The btach build has been submitted.</p>
                </dd>
            <dt>SUCCEEDED</dt>
            <dd>
                    <p>The batch build succeeded.</p>
                </dd>
         </dl>")
  phaseType: option<buildBatchPhaseType>,
}
@ocaml.doc("<p>Information about a webhook that connects repository events to a build project in
      AWS CodeBuild.</p>")
type webhook = {
  @ocaml.doc("<p>A timestamp that indicates the last time a repository's secret token was modified.
    </p>")
  lastModifiedSecret: option<timestamp_>,
  @ocaml.doc("<p>Specifies the type of build this webhook will trigger.</p>")
  buildType: option<webhookBuildType>,
  @ocaml.doc("<p>An array of arrays of <code>WebhookFilter</code> objects used to determine which
      webhooks are triggered. At least one <code>WebhookFilter</code> in the array must
      specify <code>EVENT</code> as its <code>type</code>. </p>
         <p>For a build to be triggered, at least one filter group in the
      <code>filterGroups</code> array must pass. For a filter group to pass, each of its
      filters must pass. </p>")
  filterGroups: option<filterGroups>,
  @ocaml.doc("<p>A regular expression used to determine which repository branches are built when a
      webhook is triggered. If the name of a branch matches the regular expression, then it is
      built. If <code>branchFilter</code> is empty, then all branches are built.</p>
         <note>
            <p>It is recommended that you use <code>filterGroups</code> instead of
        <code>branchFilter</code>. </p>
         </note>")
  branchFilter: option<string_>,
  @ocaml.doc("<p>The secret token of the associated repository. </p>
         <note>
            <p>A Bitbucket webhook does not support <code>secret</code>. </p>
         </note>")
  secret: option<nonEmptyString>,
  @ocaml.doc("<p>The AWS CodeBuild endpoint where webhook events are sent.</p>")
  payloadUrl: option<nonEmptyString>,
  @ocaml.doc("<p>The URL to the webhook.</p>") url: option<nonEmptyString>,
}
type reports = array<report>
type reportGroups = array<reportGroup>
@ocaml.doc("<p>A set of Docker images that are related by programming language and are managed by
            AWS CodeBuild.</p>")
type environmentLanguage = {
  @ocaml.doc("<p>The list of Docker images that are related by the specified programming
            language.</p>")
  images: option<environmentImages>,
  @ocaml.doc("<p>The programming language for the Docker images.</p>")
  language: option<languageType>,
}
type buildSummaries = array<buildSummary>
type buildPhases = array<buildPhase>
type buildBatchPhases = array<buildBatchPhase>
@ocaml.doc("<p>Information about a build project.</p>")
type project = {
  @ocaml.doc("<p>The maximum number of concurrent builds that are allowed for this project.</p>
         <p>New builds are only started if the current number of builds is less than or equal to this limit. 
  If the current build count meets this limit, new builds are throttled and are not run.</p>")
  concurrentBuildLimit: option<wrapperInt>,
  @ocaml.doc("<p>A <a>ProjectBuildBatchConfig</a>
 object that defines the batch build
            options for the project.</p>")
  buildBatchConfig: option<projectBuildBatchConfig>,
  @ocaml.doc("<p>
      An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object 
      specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>, 
      <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System.
  </p>")
  fileSystemLocations: option<projectFileSystemLocations>,
  @ocaml.doc("<p>Information about logs for the build project. A project can create logs in Amazon CloudWatch Logs, an
      S3 bucket, or both. </p>")
  logsConfig: option<logsConfig>,
  @ocaml.doc("<p>Information about the build badge for the build project.</p>")
  badge: option<projectBadge>,
  @ocaml.doc("<p>Information about the VPC configuration that AWS CodeBuild accesses.</p>")
  vpcConfig: option<vpcConfig>,
  @ocaml.doc("<p>Information about a webhook that connects repository events to a build project in
      AWS CodeBuild.</p>")
  webhook: option<webhook>,
  @ocaml.doc("<p>When the build project's settings were last modified, expressed in Unix time
      format.</p>")
  lastModified: option<timestamp_>,
  @ocaml.doc("<p>When the build project was created, expressed in Unix time format.</p>")
  created: option<timestamp_>,
  @ocaml.doc("<p>A list of tag key and value pairs associated with this build project.</p>
         <p>These tags are available for use by AWS services that support AWS CodeBuild build project
      tags.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output
      artifacts.</p>
         <note>
            <p>You can use a cross-account KMS key to encrypt the build output artifacts if your
        service role has permission to that key. </p>
         </note>
         <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
        the format <code>alias/<alias-name></code>).
    </p>")
  encryptionKey: option<nonEmptyString>,
  @ocaml.doc("<p>The number of minutes a build is allowed to be queued before it times out. </p>")
  queuedTimeoutInMinutes: option<timeOut>,
  @ocaml.doc("<p>How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before timing out any
      related build that did not get marked as completed. The default is 60 minutes.</p>")
  timeoutInMinutes: option<timeOut>,
  @ocaml.doc("<p>The ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services
      on behalf of the AWS account.</p>")
  serviceRole: option<nonEmptyString>,
  @ocaml.doc("<p>Information about the build environment for this build project.</p>")
  environment: option<projectEnvironment>,
  @ocaml.doc("<p>Information about the cache for the build project.</p>")
  cache: option<projectCache>,
  @ocaml.doc("<p>An array of <code>ProjectArtifacts</code> objects. </p>")
  secondaryArtifacts: option<projectArtifactsList>,
  @ocaml.doc("<p>Information about the build output artifacts for the build project.</p>")
  artifacts: option<projectArtifacts>,
  @ocaml.doc("<p>An array of <code>ProjectSourceVersion</code> objects. If
      <code>secondarySourceVersions</code> is specified at the build level, then they take
      over these <code>secondarySourceVersions</code> (at the project level). </p>")
  secondarySourceVersions: option<projectSecondarySourceVersions>,
  @ocaml.doc("<p>A version of the build input to be built for this project. If not specified, the
      latest version is used. If specified, it must be one of:</p>
         <ul>
            <li>
               <p>For AWS CodeCommit: the commit ID, branch, or Git tag to use.</p>
            </li>
            <li>
               <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
          corresponds to the version of the source code you want to build. If a pull
          request ID is specified, it must use the format <code>pr/pull-request-ID</code>
          (for example <code>pr/25</code>). If a branch name is specified, the branch's
          HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
          used.</p>
            </li>
            <li>
               <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
          version of the source code you want to build. If a branch name is specified, the
          branch's HEAD commit ID is used. If not specified, the default branch's HEAD
          commit ID is used.</p>
            </li>
            <li>
               <p>For Amazon S3: the version ID of the object that represents the build input ZIP
          file to use.</p>
            </li>
         </ul>
         <p>If <code>sourceVersion</code> is specified at the build level, then that version
      takes precedence over this <code>sourceVersion</code> (at the project level). </p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html\">Source Version Sample
      with CodeBuild</a> in the <i>AWS CodeBuild User Guide</i>. 
    </p>")
  sourceVersion: option<string_>,
  @ocaml.doc("<p>An array of <code>ProjectSource</code> objects. </p>")
  secondarySources: option<projectSources>,
  @ocaml.doc("<p>Information about the build input source code for this build project.</p>")
  source: option<projectSource>,
  @ocaml.doc("<p>A description that makes the build project easy to identify.</p>")
  description: option<projectDescription>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the build project.</p>") arn: option<string_>,
  @ocaml.doc("<p>The name of the build project.</p>") name: option<projectName>,
}
type environmentLanguages = array<environmentLanguage>
@ocaml.doc("<p>Contains information about a batch build build group. Build groups are used to combine
            builds that can run in parallel, while still being able to set dependencies on other
            build groups.</p>")
type buildGroup = {
  @ocaml.doc("<p>An array of <code>BuildSummary</code> objects that contain summaries of previous
            build groups.</p>")
  priorBuildSummaryList: option<buildSummaries>,
  @ocaml.doc("<p>A <code>BuildSummary</code> object that contains a summary of the current build
            group.</p>")
  currentBuildSummary: option<buildSummary>,
  @ocaml.doc("<p>Specifies if failures in this build group can be ignored.</p>")
  ignoreFailure: option<boolean_>,
  @ocaml.doc("<p>An array of strings that contain the identifiers of the build groups that this build
            group depends on.</p>")
  dependsOn: option<identifiers>,
  @ocaml.doc("<p>Contains the identifier of the build group.</p>") identifier: option<string_>,
}
@ocaml.doc("<p>Information about a build.</p>")
type build = {
  @ocaml.doc("<p>The ARN of the batch build that this build is a member of, if applicable.</p>")
  buildBatchArn: option<string_>,
  @ocaml.doc("<p>Contains information about the debug session for this build.</p>")
  debugSession: option<debugSession>,
  @ocaml.doc("<p>
      An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object 
      specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>, 
      <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System.
  </p>")
  fileSystemLocations: option<projectFileSystemLocations>,
  @ocaml.doc("<p> An array of the ARNs associated with this build's reports. </p>")
  reportArns: option<buildReportArns>,
  @ocaml.doc("<p>A list of exported environment variables for this build.</p>
        <p>Exported environment variables are used in conjunction with AWS CodePipeline to export
  environment variables from the current build stage to subsequent stages in the pipeline.
  For more information, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/actions-variables.html\">Working with variables</a> in the <i>AWS CodePipeline User Guide</i>.</p>")
  exportedEnvironmentVariables: option<exportedEnvironmentVariables>,
  @ocaml.doc("<p>The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output
            artifacts.</p>
        <note>
            <p> You can use a cross-account KMS key to encrypt the build output artifacts if your
                service role has permission to that key. </p>
        </note>
        <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
            the format <code>alias/<alias-name></code>).</p>")
  encryptionKey: option<nonEmptyString>,
  @ocaml.doc("<p>Describes a network interface.</p>") networkInterface: option<networkInterface>,
  @ocaml.doc("<p>If your AWS CodeBuild project accesses resources in an Amazon VPC, you provide this parameter
            that identifies the VPC ID and the list of security group IDs and subnet IDs. The
            security groups and subnets must belong to the same VPC. You must provide at least one
            security group and one subnet ID.</p>")
  vpcConfig: option<vpcConfig>,
  @ocaml.doc("<p>The entity that started the build. Valid values include:</p>
        <ul>
            <li>
                <p>If AWS CodePipeline started the build, the pipeline's name (for example,
                        <code>codepipeline/my-demo-pipeline</code>).</p>
            </li>
            <li>
                <p>If an AWS Identity and Access Management (IAM) user started the build, the user's name (for example,
                        <code>MyUserName</code>).</p>
            </li>
            <li>
                <p>If the Jenkins plugin for AWS CodeBuild started the build, the string
                        <code>CodeBuild-Jenkins-Plugin</code>.</p>
            </li>
         </ul>")
  initiator: option<string_>,
  @ocaml.doc("<p>Whether the build is complete. True if complete; otherwise, false.</p>")
  buildComplete: option<boolean_>,
  @ocaml.doc("<p> The number of minutes a build is allowed to be queued before it times out. </p>")
  queuedTimeoutInMinutes: option<wrapperInt>,
  @ocaml.doc("<p>How long, in minutes, for AWS CodeBuild to wait before timing out this build if it does not
            get marked as completed.</p>")
  timeoutInMinutes: option<wrapperInt>,
  @ocaml.doc("<p>Information about the build's logs in Amazon CloudWatch Logs.</p>")
  logs: option<logsLocation>,
  @ocaml.doc("<p>The name of a service role used for this build.</p>")
  serviceRole: option<nonEmptyString>,
  @ocaml.doc("<p>Information about the build environment for this build.</p>")
  environment: option<projectEnvironment>,
  @ocaml.doc("<p>Information about the cache for the build.</p>") cache: option<projectCache>,
  @ocaml.doc("<p> An array of <code>ProjectArtifacts</code> objects. </p>")
  secondaryArtifacts: option<buildArtifactsList>,
  @ocaml.doc("<p>Information about the output artifacts for the build.</p>")
  artifacts: option<buildArtifacts>,
  @ocaml.doc("<p> An array of <code>ProjectSourceVersion</code> objects. Each
                <code>ProjectSourceVersion</code> must be one of: </p>
        <ul>
            <li>
                <p>For AWS CodeCommit: the commit ID, branch, or Git tag to use.</p>
            </li>
            <li>
                <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
                    corresponds to the version of the source code you want to build. If a pull
                    request ID is specified, it must use the format <code>pr/pull-request-ID</code>
                    (for example, <code>pr/25</code>). If a branch name is specified, the branch's
                    HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
                    used.</p>
            </li>
            <li>
                <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
                    version of the source code you want to build. If a branch name is specified, the
                    branch's HEAD commit ID is used. If not specified, the default branch's HEAD
                    commit ID is used.</p>
            </li>
            <li>
                <p>For Amazon S3: the version ID of the object that represents the build input ZIP
                    file to use.</p>
            </li>
         </ul>")
  secondarySourceVersions: option<projectSecondarySourceVersions>,
  @ocaml.doc("<p> An array of <code>ProjectSource</code> objects. </p>")
  secondarySources: option<projectSources>,
  @ocaml.doc("<p>Information about the source code to be built.</p>") source: option<projectSource>,
  @ocaml.doc("<p>Information about all previous build phases that are complete and information about
            any current build phase that is not yet complete.</p>")
  phases: option<buildPhases>,
  @ocaml.doc("<p>The name of the AWS CodeBuild project.</p>") projectName: option<nonEmptyString>,
  @ocaml.doc("<p> An identifier for the version of this build's source code. </p>
        <ul>
            <li>
                <p> For AWS CodeCommit, GitHub, GitHub Enterprise, and BitBucket, the commit ID. </p>
            </li>
            <li>
                <p> For AWS CodePipeline, the source revision provided by AWS CodePipeline. </p>
            </li>
            <li>
                <p> For Amazon S3, this does not apply. </p>
            </li>
         </ul>")
  resolvedSourceVersion: option<nonEmptyString>,
  @ocaml.doc("<p>Any version identifier for the version of the source code to be built. If
                <code>sourceVersion</code> is specified at the project level, then this
                <code>sourceVersion</code> (at the build level) takes precedence. </p>
        <p> For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html\">Source Version Sample
                with CodeBuild</a> in the <i>AWS CodeBuild User Guide</i>. </p>")
  sourceVersion: option<nonEmptyString>,
  @ocaml.doc("<p>The current status of the build. Valid values include:</p>
        <ul>
            <li>
                <p>
                  <code>FAILED</code>: The build failed.</p>
            </li>
            <li>
                <p>
                  <code>FAULT</code>: The build faulted.</p>
            </li>
            <li>
                <p>
                  <code>IN_PROGRESS</code>: The build is still in progress.</p>
            </li>
            <li>
                <p>
                  <code>STOPPED</code>: The build stopped.</p>
            </li>
            <li>
                <p>
                  <code>SUCCEEDED</code>: The build succeeded.</p>
            </li>
            <li>
                <p>
                  <code>TIMED_OUT</code>: The build timed out.</p>
            </li>
         </ul>")
  buildStatus: option<statusType>,
  @ocaml.doc("<p>The current build phase.</p>") currentPhase: option<string_>,
  @ocaml.doc("<p>When the build process ended, expressed in Unix time format.</p>")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>When the build process started, expressed in Unix time format.</p>")
  startTime: option<timestamp_>,
  @ocaml.doc("<p>The number of the build. For each project, the <code>buildNumber</code> of its first
            build is <code>1</code>. The <code>buildNumber</code> of each subsequent build is
            incremented by <code>1</code>. If a build is deleted, the <code>buildNumber</code> of
            other builds does not change.</p>")
  buildNumber: option<wrapperLong>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the build.</p>") arn: option<nonEmptyString>,
  @ocaml.doc("<p>The unique ID for the build.</p>") id: option<nonEmptyString>,
}
type projects = array<project>
@ocaml.doc(
  "<p>A set of Docker images that are related by platform and are managed by AWS CodeBuild.</p>"
)
type environmentPlatform = {
  @ocaml.doc("<p>The list of programming languages that are available for the specified
            platform.</p>")
  languages: option<environmentLanguages>,
  @ocaml.doc("<p>The platform's name.</p>") platform: option<platformType>,
}
type builds = array<build>
type buildGroups = array<buildGroup>
type environmentPlatforms = array<environmentPlatform>
@ocaml.doc("<p>Contains information about a batch build.</p>")
type buildBatch = {
  @ocaml.doc("<p>Specifies if session debugging is enabled for this batch build. For more information, see
  <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html\">Viewing a running build in Session Manager</a>. Batch session debugging is not supported for matrix batch builds.</p>")
  debugSessionEnabled: option<wrapperBoolean>,
  @ocaml.doc("<p>An array of <code>BuildGroup</code> objects that define the build groups for the
            batch build.</p>")
  buildGroups: option<buildGroups>,
  buildBatchConfig: option<projectBuildBatchConfig>,
  @ocaml.doc("<p>An array of <code>ProjectFileSystemLocation</code> objects for the batch build
            project. A <code>ProjectFileSystemLocation</code> object specifies the
                <code>identifier</code>, <code>location</code>, <code>mountOptions</code>,
                <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon
            Elastic File System. </p>")
  fileSystemLocations: option<projectFileSystemLocations>,
  @ocaml.doc("<p>The number of the batch build. For each project, the <code>buildBatchNumber</code> of its
            first batch build is <code>1</code>. The <code>buildBatchNumber</code> of each subsequent
            batch build is incremented by <code>1</code>. If a batch build is deleted, the
                <code>buildBatchNumber</code> of other batch builds does not change.</p>")
  buildBatchNumber: option<wrapperLong>,
  @ocaml.doc("<p>The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the batch build output
            artifacts.</p>
        <note>
            <p>You can use a cross-account KMS key to encrypt the build output artifacts if your
                service role has permission to that key. </p>
        </note>
        <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
            the format <code>alias/<alias-name></code>).</p>")
  encryptionKey: option<nonEmptyString>,
  vpcConfig: option<vpcConfig>,
  @ocaml.doc("<p>The entity that started the batch build. Valid values include:</p>
        <ul>
            <li>
                <p>If AWS CodePipeline started the build, the pipeline's name (for example,
                        <code>codepipeline/my-demo-pipeline</code>).</p>
            </li>
            <li>
                <p>If an AWS Identity and Access Management (IAM) user started the build, the user's name.</p>
            </li>
            <li>
                <p>If the Jenkins plugin for AWS CodeBuild started the build, the string
                        <code>CodeBuild-Jenkins-Plugin</code>.</p>
            </li>
         </ul>")
  initiator: option<string_>,
  @ocaml.doc("<p>Indicates if the batch build is complete.</p>") complete: option<boolean_>,
  @ocaml.doc("<p>Specifies the amount of time, in minutes, that the batch build is allowed to be queued
            before it times out.</p>")
  queuedTimeoutInMinutes: option<wrapperInt>,
  @ocaml.doc("<p>Specifies the maximum amount of time, in minutes, that the build in a batch must be
            completed in.</p>")
  buildTimeoutInMinutes: option<wrapperInt>,
  logConfig: option<logsConfig>,
  @ocaml.doc("<p>The name of a service role used for builds in the batch.</p>")
  serviceRole: option<nonEmptyString>,
  environment: option<projectEnvironment>,
  cache: option<projectCache>,
  @ocaml.doc("<p>An array of <code>BuildArtifacts</code> objects the define the build artifacts
            for this batch build.</p>")
  secondaryArtifacts: option<buildArtifactsList>,
  @ocaml.doc(
    "<p>A <code>BuildArtifacts</code> object the defines the build artifacts for this batch build.</p>"
  )
  artifacts: option<buildArtifacts>,
  @ocaml.doc("<p>An array of <code>ProjectSourceVersion</code> objects. Each
                <code>ProjectSourceVersion</code> must be one of: </p>
         <ul>
            <li>
               <p>For AWS CodeCommit: the commit ID, branch, or Git tag to use.</p>
            </li>
            <li>
               <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
          corresponds to the version of the source code you want to build. If a pull
          request ID is specified, it must use the format <code>pr/pull-request-ID</code>
          (for example, <code>pr/25</code>). If a branch name is specified, the branch's
          HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
          used.</p>
            </li>
            <li>
               <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
          version of the source code you want to build. If a branch name is specified, the
          branch's HEAD commit ID is used. If not specified, the default branch's HEAD
          commit ID is used.</p>
            </li>
            <li>
               <p>For Amazon S3: the version ID of the object that represents the build input ZIP
          file to use.</p>
            </li>
         </ul>")
  secondarySourceVersions: option<projectSecondarySourceVersions>,
  @ocaml.doc("<p>An array of <code>ProjectSource</code> objects that define the sources for the batch
            build.</p>")
  secondarySources: option<projectSources>,
  source: option<projectSource>,
  @ocaml.doc("<p>An array of <code>BuildBatchPhase</code> objects the specify the phases of the
            batch build.</p>")
  phases: option<buildBatchPhases>,
  @ocaml.doc("<p>The name of the batch build project.</p>") projectName: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the resolved version of this batch build's source code.</p>
        <ul>
            <li>
                <p>For AWS CodeCommit, GitHub, GitHub Enterprise, and BitBucket, the commit ID.</p>
            </li>
            <li>
                <p>For AWS CodePipeline, the source revision provided by AWS CodePipeline.</p>
            </li>
            <li>
                <p>For Amazon S3, this does not apply.</p>
            </li>
         </ul>")
  resolvedSourceVersion: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the version of the source code to be built.</p>")
  sourceVersion: option<nonEmptyString>,
  @ocaml.doc("<p>The status of the batch build.</p>") buildBatchStatus: option<statusType>,
  @ocaml.doc("<p>The current phase of the batch build.</p>") currentPhase: option<string_>,
  @ocaml.doc("<p>The date and time that the batch build ended.</p>") endTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time that the batch build started.</p>")
  startTime: option<timestamp_>,
  @ocaml.doc("<p>The ARN of the batch build.</p>") arn: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the batch build.</p>") id: option<nonEmptyString>,
}
type buildBatches = array<buildBatch>
@ocaml.doc("<fullname>AWS CodeBuild</fullname>
        <p>AWS CodeBuild is a fully managed build service in the cloud. AWS CodeBuild compiles your source code,
            runs unit tests, and produces artifacts that are ready to deploy. AWS CodeBuild eliminates the
            need to provision, manage, and scale your own build servers. It provides prepackaged
            build environments for the most popular programming languages and build tools, such as
            Apache Maven, Gradle, and more. You can also fully customize build environments in AWS CodeBuild
            to use your own build tools. AWS CodeBuild scales automatically to meet peak build requests. You
            pay only for the build time you consume. For more information about AWS CodeBuild, see the <i>
                <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/welcome.html\">AWS CodeBuild User
                    Guide</a>.</i>
         </p>")
module PutResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p> The ARN of the <code>Project</code> or <code>ReportGroup</code> resource you want to
            associate with a resource policy. </p>")
    resourceArn: nonEmptyString,
    @ocaml.doc("<p> A JSON-formatted resource policy. For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/project-sharing.html#project-sharing-share\">Sharing
                a Project</a> and <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/report-groups-sharing.html#report-groups-sharing-share\">Sharing a Report Group</a> in the <i>AWS CodeBuild User Guide</i>.
        </p>")
    policy: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p> The ARN of the <code>Project</code> or <code>ReportGroup</code> resource that is
            associated with a resource policy. </p>")
    resourceArn: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "PutResourcePolicyCommand"
  let make = (~resourceArn, ~policy, ()) => new({resourceArn: resourceArn, policy: policy})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module InvalidateProjectCache = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the AWS CodeBuild build project that the cache is reset for.</p>")
    projectName: nonEmptyString,
  }

  @module("@aws-sdk/client-codebuild") @new
  external new: request => t = "InvalidateProjectCacheCommand"
  let make = (~projectName, ()) => new({projectName: projectName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ImportSourceCredentials = {
  type t
  type request = {
    @ocaml.doc("<p> Set to <code>false</code> to prevent overwriting the repository source credentials.
            Set to <code>true</code> to overwrite the repository source credentials. The default
            value is <code>true</code>. </p>")
    shouldOverwrite: option<wrapperBoolean>,
    @ocaml.doc("<p> The type of authentication used to connect to a GitHub, GitHub Enterprise, or
            Bitbucket repository. An OAUTH connection is not supported by the API and must be
            created using the AWS CodeBuild console. </p>")
    authType: authType,
    @ocaml.doc("<p> The source provider used for this project. </p>") serverType: serverType,
    @ocaml.doc("<p> For GitHub or GitHub Enterprise, this is the personal access token. For Bitbucket,
            this is the app password. </p>")
    token: sensitiveNonEmptyString,
    @ocaml.doc("<p> The Bitbucket username when the <code>authType</code> is BASIC_AUTH. This parameter
            is not valid for other types of source providers or connections. </p>")
    username: option<nonEmptyString>,
  }
  type response = {
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the token. </p>") arn: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-codebuild") @new
  external new: request => t = "ImportSourceCredentialsCommand"
  let make = (~authType, ~serverType, ~token, ~shouldOverwrite=?, ~username=?, ()) =>
    new({
      shouldOverwrite: shouldOverwrite,
      authType: authType,
      serverType: serverType,
      token: token,
      username: username,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p> The ARN of the resource that is associated with the resource policy. </p>")
    resourceArn: nonEmptyString,
  }
  type response = {
    @ocaml.doc(
      "<p> The resource policy for the resource identified by the input ARN parameter. </p>"
    )
    policy: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "GetResourcePolicyCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWebhook = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the AWS CodeBuild project.</p>") projectName: projectName,
  }

  @module("@aws-sdk/client-codebuild") @new external new: request => t = "DeleteWebhookCommand"
  let make = (~projectName, ()) => new({projectName: projectName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSourceCredentials = {
  type t
  type request = {
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the token.</p>") arn: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the token. </p>") arn: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-codebuild") @new
  external new: request => t = "DeleteSourceCredentialsCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p> The ARN of the resource that is associated with the resource policy. </p>")
    resourceArn: nonEmptyString,
  }

  @module("@aws-sdk/client-codebuild") @new
  external new: request => t = "DeleteResourcePolicyCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteReportGroup = {
  type t
  type request = {
    @ocaml.doc("<p>If <code>true</code>, deletes any reports that belong to a report group before deleting
            the report group. </p>
         <p>If <code>false</code>, you must delete any reports in the report group. Use <a href=\"https://docs.aws.amazon.com/codebuild/latest/APIReference/API_ListReportsForReportGroup.html\">ListReportsForReportGroup</a> to get the reports in a report group. Use <a href=\"https://docs.aws.amazon.com/codebuild/latest/APIReference/API_DeleteReport.html\">DeleteReport</a> to delete the reports. If you call
      <code>DeleteReportGroup</code> for a report group that contains one or more reports,
            an exception is thrown. </p>")
    deleteReports: option<boolean_>,
    @ocaml.doc("<p>The ARN of the report group to delete. </p>") arn: nonEmptyString,
  }

  @module("@aws-sdk/client-codebuild") @new external new: request => t = "DeleteReportGroupCommand"
  let make = (~arn, ~deleteReports=?, ()) => new({deleteReports: deleteReports, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteReport = {
  type t
  type request = {
    @ocaml.doc("<p>
      The ARN of the report to delete.
    </p>")
    arn: nonEmptyString,
  }

  @module("@aws-sdk/client-codebuild") @new external new: request => t = "DeleteReportCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteProject = {
  type t
  type request = {@ocaml.doc("<p>The name of the build project.</p>") name: nonEmptyString}

  @module("@aws-sdk/client-codebuild") @new external new: request => t = "DeleteProjectCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListSharedReportGroups = {
  type t
  type request = {
    @ocaml.doc("<p> The maximum number of paginated shared report groups per response. Use
                <code>nextToken</code> to iterate pages in the list of returned
                <code>ReportGroup</code> objects. The default value is 100. </p>")
    maxResults: option<pageSize>,
    @ocaml.doc("<p> During a previous call, the maximum number of items that can be returned is the value
            specified in <code>maxResults</code>. If there more items in the list, then a unique
            string called a <i>nextToken</i> is returned. To get the next batch of
            items in the list, call this operation again, adding the next token to the call. To get
            all of the items in the list, keep calling this operation with each subsequent next
            token that is returned, until no more next tokens are returned. </p>")
    nextToken: option<string_>,
    @ocaml.doc("<p> The criterion to be used to list report groups shared with the current AWS account or
            user. Valid values include: </p>
        <ul>
            <li>
                <p>
                    <code>ARN</code>: List based on the ARN. </p>
            </li>
            <li>
                <p>
                    <code>MODIFIED_TIME</code>: List based on when information about the shared
                    report group was last changed. </p>
            </li>
         </ul>")
    sortBy: option<sharedResourceSortByType>,
    @ocaml.doc("<p>The order in which to list shared report groups. Valid values include:</p>
        <ul>
            <li>
                <p>
                  <code>ASCENDING</code>: List in ascending order.</p>
            </li>
            <li>
                <p>
                  <code>DESCENDING</code>: List in descending order.</p>
            </li>
         </ul>")
    sortOrder: option<sortOrderType>,
  }
  type response = {
    @ocaml.doc("<p> The list of ARNs for the report groups shared with the current AWS account or user.
        </p>")
    reportGroups: option<reportGroupArns>,
    @ocaml.doc("<p> During a previous call, the maximum number of items that can be returned is the value
            specified in <code>maxResults</code>. If there more items in the list, then a unique
            string called a <i>nextToken</i> is returned. To get the next batch of
            items in the list, call this operation again, adding the next token to the call. To get
            all of the items in the list, keep calling this operation with each subsequent next
            token that is returned, until no more next tokens are returned. </p>")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-codebuild") @new
  external new: request => t = "ListSharedReportGroupsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~sortBy=?, ~sortOrder=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, sortBy: sortBy, sortOrder: sortOrder})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSharedProjects = {
  type t
  type request = {
    @ocaml.doc("<p> During a previous call, the maximum number of items that can be returned is the value
            specified in <code>maxResults</code>. If there more items in the list, then a unique
            string called a <i>nextToken</i> is returned. To get the next batch of
            items in the list, call this operation again, adding the next token to the call. To get
            all of the items in the list, keep calling this operation with each subsequent next
            token that is returned, until no more next tokens are returned. </p>")
    nextToken: option<nonEmptyString>,
    @ocaml.doc("<p> The maximum number of paginated shared build projects returned per response. Use
                <code>nextToken</code> to iterate pages in the list of returned <code>Project</code>
            objects. The default value is 100. </p>")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>The order in which to list shared build projects. Valid values include:</p>
        <ul>
            <li>
                <p>
                  <code>ASCENDING</code>: List in ascending order.</p>
            </li>
            <li>
                <p>
                  <code>DESCENDING</code>: List in descending order.</p>
            </li>
         </ul>")
    sortOrder: option<sortOrderType>,
    @ocaml.doc("<p> The criterion to be used to list build projects shared with the current AWS account
            or user. Valid values include: </p>
        <ul>
            <li>
                <p>
                    <code>ARN</code>: List based on the ARN. </p>
            </li>
            <li>
                <p>
                    <code>MODIFIED_TIME</code>: List based on when information about the shared
                    project was last changed. </p>
            </li>
         </ul>")
    sortBy: option<sharedResourceSortByType>,
  }
  type response = {
    @ocaml.doc("<p> The list of ARNs for the build projects shared with the current AWS account or user.
        </p>")
    projects: option<projectArns>,
    @ocaml.doc("<p> During a previous call, the maximum number of items that can be returned is the value
            specified in <code>maxResults</code>. If there more items in the list, then a unique
            string called a <i>nextToken</i> is returned. To get the next batch of
            items in the list, call this operation again, adding the next token to the call. To get
            all of the items in the list, keep calling this operation with each subsequent next
            token that is returned, until no more next tokens are returned. </p>")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "ListSharedProjectsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~sortOrder=?, ~sortBy=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, sortOrder: sortOrder, sortBy: sortBy})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListReportsForReportGroup = {
  type t
  type request = {
    @ocaml.doc("<p>
      A <code>ReportFilter</code> object used to filter the returned reports.
    </p>")
    filter: option<reportFilter>,
    @ocaml.doc("<p>
      The maximum number of paginated reports in this report group returned per response. Use <code>nextToken</code> to iterate pages in
      the list of returned <code>Report</code> objects. The default value is 100.
    </p>")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>
      Use to specify whether the results are returned in ascending or descending order.
    </p>")
    sortOrder: option<sortOrderType>,
    @ocaml.doc("<p>
      During a previous call, the maximum number of items that can be returned is the value specified in
      <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
      is returned. To get the next batch of items in the list, call this operation again, adding the next token
      to the call. To get all of the items in the list, keep calling this operation with each
      subsequent next token that is returned, until no more next tokens are returned.
    </p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>
      The ARN of the report group for which you want to return report ARNs.
    </p>")
    reportGroupArn: string_,
  }
  type response = {
    @ocaml.doc("<p>
      The list of report ARNs.
    </p>")
    reports: option<reportArns>,
    @ocaml.doc("<p>
      During a previous call, the maximum number of items that can be returned is the value specified in
      <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
      is returned. To get the next batch of items in the list, call this operation again, adding the next token
      to the call. To get all of the items in the list, keep calling this operation with each
      subsequent next token that is returned, until no more next tokens are returned.
    </p>")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-codebuild") @new
  external new: request => t = "ListReportsForReportGroupCommand"
  let make = (~reportGroupArn, ~filter=?, ~maxResults=?, ~sortOrder=?, ~nextToken=?, ()) =>
    new({
      filter: filter,
      maxResults: maxResults,
      sortOrder: sortOrder,
      nextToken: nextToken,
      reportGroupArn: reportGroupArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListReports = {
  type t
  type request = {
    @ocaml.doc("<p>
      A <code>ReportFilter</code> object used to filter the returned reports.
    </p>")
    filter: option<reportFilter>,
    @ocaml.doc("<p>
      The maximum number of paginated reports returned per response. Use <code>nextToken</code> to iterate pages in
      the list of returned <code>Report</code> objects. The default value is 100.
    </p>")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>
      During a previous call, the maximum number of items that can be returned is the value specified in
      <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
      is returned. To get the next batch of items in the list, call this operation again, adding the next token
      to the call. To get all of the items in the list, keep calling this operation with each
      subsequent next token that is returned, until no more next tokens are returned.
    </p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>
      Specifies the sort order for the list of returned reports. Valid values are:
    </p>
         <ul>
            <li>
               <p>
                  <code>ASCENDING</code>: return reports in chronological order based on their creation date.
        </p>
            </li>
            <li>
               <p>
                  <code>DESCENDING</code>: return reports in the reverse chronological order based on their creation date.
        </p>
            </li>
         </ul>")
    sortOrder: option<sortOrderType>,
  }
  type response = {
    @ocaml.doc("<p>
      The list of returned ARNs for the reports in the current AWS account.
    </p>")
    reports: option<reportArns>,
    @ocaml.doc("<p>
      During a previous call, the maximum number of items that can be returned is the value specified in
      <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
      is returned. To get the next batch of items in the list, call this operation again, adding the next token
      to the call. To get all of the items in the list, keep calling this operation with each
      subsequent next token that is returned, until no more next tokens are returned.
    </p>")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "ListReportsCommand"
  let make = (~filter=?, ~maxResults=?, ~nextToken=?, ~sortOrder=?, ()) =>
    new({filter: filter, maxResults: maxResults, nextToken: nextToken, sortOrder: sortOrder})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListReportGroups = {
  type t
  type request = {
    @ocaml.doc("<p>
      The maximum number of paginated report groups returned per response. Use <code>nextToken</code> to iterate pages in
      the list of returned <code>ReportGroup</code> objects. The default value is 100.
    </p>")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>
      During a previous call, the maximum number of items that can be returned is the value specified in
      <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
      is returned. To get the next batch of items in the list, call this operation again, adding the next token
      to the call. To get all of the items in the list, keep calling this operation with each
      subsequent next token that is returned, until no more next tokens are returned.
    </p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>
      The criterion to be used to list build report groups. Valid values include:
    </p>
         <ul>
            <li>
               <p>
                  <code>CREATED_TIME</code>: List based on when each report group was
          created.</p>
            </li>
            <li>
               <p>
                  <code>LAST_MODIFIED_TIME</code>: List based on when each report group  was last changed.</p>
            </li>
            <li>
               <p>
                  <code>NAME</code>: List based on each report group's name.</p>
            </li>
         </ul>")
    sortBy: option<reportGroupSortByType>,
    @ocaml.doc("<p>
      Used to specify the order to sort the list of returned report groups. Valid values are
      <code>ASCENDING</code> and <code>DESCENDING</code>.
    </p>")
    sortOrder: option<sortOrderType>,
  }
  type response = {
    @ocaml.doc("<p>
      The list of ARNs for the report groups in the current AWS account.
    </p>")
    reportGroups: option<reportGroupArns>,
    @ocaml.doc("<p>
      During a previous call, the maximum number of items that can be returned is the value specified in
      <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
      is returned. To get the next batch of items in the list, call this operation again, adding the next token
      to the call. To get all of the items in the list, keep calling this operation with each
      subsequent next token that is returned, until no more next tokens are returned.
    </p>")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "ListReportGroupsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~sortBy=?, ~sortOrder=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, sortBy: sortBy, sortOrder: sortOrder})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProjects = {
  type t
  type request = {
    @ocaml.doc("<p>During a previous call, if there are more than 100 items in the list, only the first
            100 items are returned, along with a unique string called a
                <i>nextToken</i>. To get the next batch of items in the list, call
            this operation again, adding the next token to the call. To get all of the items in the
            list, keep calling this operation with each subsequent next token that is returned,
            until no more next tokens are returned.</p>")
    nextToken: option<nonEmptyString>,
    @ocaml.doc("<p>The order in which to list build projects. Valid values include:</p>
        <ul>
            <li>
                <p>
                  <code>ASCENDING</code>: List in ascending order.</p>
            </li>
            <li>
                <p>
                  <code>DESCENDING</code>: List in descending order.</p>
            </li>
         </ul>
        <p>Use <code>sortBy</code> to specify the criterion to be used to list build project
            names.</p>")
    sortOrder: option<sortOrderType>,
    @ocaml.doc("<p>The criterion to be used to list build project names. Valid values include:</p>
        <ul>
            <li>
                <p>
                  <code>CREATED_TIME</code>: List based on when each build project was
                    created.</p>
            </li>
            <li>
                <p>
                  <code>LAST_MODIFIED_TIME</code>: List based on when information about each
                    build project was last changed.</p>
            </li>
            <li>
                <p>
                  <code>NAME</code>: List based on each build project's name.</p>
            </li>
         </ul>
        <p>Use <code>sortOrder</code> to specify in what order to list the build project names
            based on the preceding criteria.</p>")
    sortBy: option<projectSortByType>,
  }
  type response = {
    @ocaml.doc("<p>The list of build project names, with each build project name representing a single
            build project.</p>")
    projects: option<projectNames>,
    @ocaml.doc("<p>If there are more than 100 items in the list, only the first 100 items are returned,
            along with a unique string called a <i>nextToken</i>. To get the next
            batch of items in the list, call this operation again, adding the next token to the
            call.</p>")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "ListProjectsCommand"
  let make = (~nextToken=?, ~sortOrder=?, ~sortBy=?, ()) =>
    new({nextToken: nextToken, sortOrder: sortOrder, sortBy: sortBy})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBuildsForProject = {
  type t
  type request = {
    @ocaml.doc("<p>During a previous call, if there are more than 100 items in the list, only the first
            100 items are returned, along with a unique string called a
                <i>nextToken</i>. To get the next batch of items in the list, call
            this operation again, adding the next token to the call. To get all of the items in the
            list, keep calling this operation with each subsequent next token that is returned,
            until no more next tokens are returned.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>The order to list results in. The results are sorted by build number, not the build
            identifier.</p>
        <p>Valid values include:</p>
        <ul>
            <li>
                <p>
                  <code>ASCENDING</code>: List the build IDs in ascending order by build
                    ID.</p>
            </li>
            <li>
                <p>
                  <code>DESCENDING</code>: List the build IDs in descending order by build
                    ID.</p>
            </li>
         </ul>
        <p>If the project has more than 100 builds, setting the sort order will result in an
            error. </p>")
    sortOrder: option<sortOrderType>,
    @ocaml.doc("<p>The name of the AWS CodeBuild project.</p>") projectName: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>If there are more than 100 items in the list, only the first 100 items are returned,
            along with a unique string called a <i>nextToken</i>. To get the next
            batch of items in the list, call this operation again, adding the next token to the
            call.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of build IDs for the specified build project, with each build ID representing a
            single build.</p>")
    ids: option<buildIds>,
  }
  @module("@aws-sdk/client-codebuild") @new
  external new: request => t = "ListBuildsForProjectCommand"
  let make = (~projectName, ~nextToken=?, ~sortOrder=?, ()) =>
    new({nextToken: nextToken, sortOrder: sortOrder, projectName: projectName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBuilds = {
  type t
  type request = {
    @ocaml.doc("<p>During a previous call, if there are more than 100 items in the list, only the first
            100 items are returned, along with a unique string called a
                <i>nextToken</i>. To get the next batch of items in the list, call
            this operation again, adding the next token to the call. To get all of the items in the
            list, keep calling this operation with each subsequent next token that is returned,
            until no more next tokens are returned.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>The order to list build IDs. Valid values include:</p>
        <ul>
            <li>
                <p>
                  <code>ASCENDING</code>: List the build IDs in ascending order by build
                    ID.</p>
            </li>
            <li>
                <p>
                  <code>DESCENDING</code>: List the build IDs in descending order by build
                    ID.</p>
            </li>
         </ul>")
    sortOrder: option<sortOrderType>,
  }
  type response = {
    @ocaml.doc("<p>If there are more than 100 items in the list, only the first 100 items are returned,
            along with a unique string called a <i>nextToken</i>. To get the next
            batch of items in the list, call this operation again, adding the next token to the
            call.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of build IDs, with each build ID representing a single build.</p>")
    ids: option<buildIds>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "ListBuildsCommand"
  let make = (~nextToken=?, ~sortOrder=?, ()) => new({nextToken: nextToken, sortOrder: sortOrder})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBuildBatchesForProject = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous call to
                <code>ListBuildBatchesForProject</code>. This specifies the next item to return. To return the
            beginning of the list, exclude this parameter.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>Specifies the sort order of the returned items. Valid values include:</p>
        <ul>
            <li>
                <p>
                  <code>ASCENDING</code>: List the batch build identifiers in ascending order by
                    identifier.</p>
            </li>
            <li>
                <p>
                  <code>DESCENDING</code>: List the batch build identifiers in descending order
                    by identifier.</p>
            </li>
         </ul>")
    sortOrder: option<sortOrderType>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") maxResults: option<pageSize>,
    @ocaml.doc(
      "<p>A <code>BuildBatchFilter</code> object that specifies the filters for the search.</p>"
    )
    filter: option<buildBatchFilter>,
    @ocaml.doc("<p>The name of the project.</p>") projectName: option<nonEmptyString>,
  }
  type response = {
    @ocaml.doc("<p>If there are more items to return, this contains a token that is passed to a
            subsequent call to <code>ListBuildBatchesForProject</code> to retrieve the next set of
            items.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>An array of strings that contains the batch build identifiers.</p>")
    ids: option<buildBatchIds>,
  }
  @module("@aws-sdk/client-codebuild") @new
  external new: request => t = "ListBuildBatchesForProjectCommand"
  let make = (~nextToken=?, ~sortOrder=?, ~maxResults=?, ~filter=?, ~projectName=?, ()) =>
    new({
      nextToken: nextToken,
      sortOrder: sortOrder,
      maxResults: maxResults,
      filter: filter,
      projectName: projectName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBuildBatches = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous call to
                <code>ListBuildBatches</code>. This specifies the next item to return. To return the
            beginning of the list, exclude this parameter.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>Specifies the sort order of the returned items. Valid values include:</p>
         <ul>
            <li>
               <p>
                  <code>ASCENDING</code>: List the batch build identifiers in ascending order by identifier.</p>
            </li>
            <li>
               <p>
                  <code>DESCENDING</code>: List the batch build identifiers in descending order by identifier.</p>
            </li>
         </ul>")
    sortOrder: option<sortOrderType>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") maxResults: option<pageSize>,
    @ocaml.doc(
      "<p>A <code>BuildBatchFilter</code> object that specifies the filters for the search.</p>"
    )
    filter: option<buildBatchFilter>,
  }
  type response = {
    @ocaml.doc("<p>If there are more items to return, this contains a token that is passed to a subsequent
            call to <code>ListBuildBatches</code> to retrieve the next set of items.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>An array of strings that contains the batch build identifiers.</p>")
    ids: option<buildBatchIds>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "ListBuildBatchesCommand"
  let make = (~nextToken=?, ~sortOrder=?, ~maxResults=?, ~filter=?, ()) =>
    new({nextToken: nextToken, sortOrder: sortOrder, maxResults: maxResults, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSourceCredentials = {
  type t

  type response = {
    @ocaml.doc("<p> A list of <code>SourceCredentialsInfo</code> objects. Each
                <code>SourceCredentialsInfo</code> object includes the authentication type, token
            ARN, and type of source provider for one set of credentials. </p>")
    sourceCredentialsInfos: option<sourceCredentialsInfos>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: unit => t = "ListSourceCredentialsCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetReportGroupTrend = {
  type t
  type request = {
    @ocaml.doc("<p>The test report value to accumulate. This must be one of the following values:</p>
         <dl>
            <dt>Test reports:</dt>
            <dd>
                    <dl>
                  <dt>DURATION</dt>
                  <dd>
                                <p>Accumulate the test run times for the specified
                                    reports.</p>
                            </dd>
                  <dt>PASS_RATE</dt>
                  <dd>
                                <p>Accumulate the percentage of tests that passed for the
                                    specified test reports.</p>
                            </dd>
                  <dt>TOTAL</dt>
                  <dd>
                                <p>Accumulate the total number of tests for the specified test
                                    reports.</p>
                            </dd>
               </dl>
                </dd>
         </dl>
         <dl>
            <dt>Code coverage reports:</dt>
            <dd>
                    <dl>
                  <dt>BRANCH_COVERAGE</dt>
                  <dd>
                                <p>Accumulate the branch coverage percentages for the specified
                                    test reports.</p>
                            </dd>
                  <dt>BRANCHES_COVERED</dt>
                  <dd>
                                <p>Accumulate the branches covered values for the specified test
                                    reports.</p>
                            </dd>
                  <dt>BRANCHES_MISSED</dt>
                  <dd>
                                <p>Accumulate the branches missed values for the specified test
                                    reports.</p>
                            </dd>
                  <dt>LINE_COVERAGE</dt>
                  <dd>
                                <p>Accumulate the line coverage percentages for the specified
                                    test reports.</p>
                            </dd>
                  <dt>LINES_COVERED</dt>
                  <dd>
                                <p>Accumulate the lines covered values for the specified test
                                    reports.</p>
                            </dd>
                  <dt>LINES_MISSED</dt>
                  <dd>
                                <p>Accumulate the lines not covered values for the specified test
                                    reports.</p>
                            </dd>
               </dl>
                </dd>
         </dl>")
    trendField: reportGroupTrendFieldType,
    @ocaml.doc("<p>The number of reports to analyze. This operation always retrieves the most recent
            reports.</p>
        <p>If this parameter is omitted, the most recent 100 reports are analyzed.</p>")
    numOfReports: option<pageSize>,
    @ocaml.doc("<p>The ARN of the report group that contains the reports to analyze.</p>")
    reportGroupArn: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>An array that contains the raw data for each report.</p>")
    rawData: option<reportGroupTrendRawDataList>,
    @ocaml.doc("<p>Contains the accumulated trend data.</p>") stats: option<reportGroupTrendStats>,
  }
  @module("@aws-sdk/client-codebuild") @new
  external new: request => t = "GetReportGroupTrendCommand"
  let make = (~trendField, ~reportGroupArn, ~numOfReports=?, ()) =>
    new({trendField: trendField, numOfReports: numOfReports, reportGroupArn: reportGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTestCases = {
  type t
  type request = {
    @ocaml.doc("<p>
      A <code>TestCaseFilter</code> object used to filter the returned reports.
    </p>")
    filter: option<testCaseFilter>,
    @ocaml.doc("<p>
      The maximum number of paginated test cases returned per response. Use <code>nextToken</code> to iterate pages in
      the list of returned <code>TestCase</code> objects. The default value is 100.
    </p>")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>
      During a previous call, the maximum number of items that can be returned is the value specified in
      <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
      is returned. To get the next batch of items in the list, call this operation again, adding the next token
      to the call. To get all of the items in the list, keep calling this operation with each
      subsequent next token that is returned, until no more next tokens are returned.
    </p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>
      The ARN of the report for which test cases are returned.
    </p>")
    reportArn: string_,
  }
  type response = {
    @ocaml.doc("<p>
      The returned list of test cases.
    </p>")
    testCases: option<testCases>,
    @ocaml.doc("<p>
      During a previous call, the maximum number of items that can be returned is the value specified in
      <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
      is returned. To get the next batch of items in the list, call this operation again, adding the next token
      to the call. To get all of the items in the list, keep calling this operation with each
      subsequent next token that is returned, until no more next tokens are returned.
    </p>")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "DescribeTestCasesCommand"
  let make = (~reportArn, ~filter=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({filter: filter, maxResults: maxResults, nextToken: nextToken, reportArn: reportArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCodeCoverages = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum line coverage percentage to report.</p>")
    maxLineCoveragePercentage: option<percentage>,
    @ocaml.doc("<p>The minimum line coverage percentage to report.</p>")
    minLineCoveragePercentage: option<percentage>,
    @ocaml.doc("<p>Specifies how the results are sorted. Possible values are:</p>
        <dl>
            <dt>FILE_PATH</dt>
            <dd>
                    <p>The results are sorted by file path.</p>
                </dd>
            <dt>LINE_COVERAGE_PERCENTAGE</dt>
            <dd>
                    <p>The results are sorted by the percentage of lines that are covered.</p>
                </dd>
         </dl>")
    sortBy: option<reportCodeCoverageSortByType>,
    @ocaml.doc("<p>Specifies if the results are sorted in ascending or descending order.</p>")
    sortOrder: option<sortOrderType>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") maxResults: option<pageSize>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous call to
                <code>DescribeCodeCoverages</code>. This specifies the next item to return. To
            return the beginning of the list, exclude this parameter.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>
      The ARN of the report for which test cases are returned.
    </p>")
    reportArn: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>An array of <code>CodeCoverage</code> objects that contain the results.</p>")
    codeCoverages: option<codeCoverages>,
    @ocaml.doc("<p>If there are more items to return, this contains a token that is passed to a subsequent
            call to <code>DescribeCodeCoverages</code> to retrieve the next set of items.</p>")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-codebuild") @new
  external new: request => t = "DescribeCodeCoveragesCommand"
  let make = (
    ~reportArn,
    ~maxLineCoveragePercentage=?,
    ~minLineCoveragePercentage=?,
    ~sortBy=?,
    ~sortOrder=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      maxLineCoveragePercentage: maxLineCoveragePercentage,
      minLineCoveragePercentage: minLineCoveragePercentage,
      sortBy: sortBy,
      sortOrder: sortOrder,
      maxResults: maxResults,
      nextToken: nextToken,
      reportArn: reportArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBuildBatch = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the batch build to delete.</p>") id: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>An array of <code>BuildNotDeleted</code> objects that specify the builds that could not be
            deleted.</p>")
    buildsNotDeleted: option<buildsNotDeleted>,
    @ocaml.doc(
      "<p>An array of strings that contain the identifiers of the builds that were deleted.</p>"
    )
    buildsDeleted: option<buildIds>,
    @ocaml.doc("<p>The status code.</p>") statusCode: option<string_>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "DeleteBuildBatchCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDeleteBuilds = {
  type t
  type request = {@ocaml.doc("<p>The IDs of the builds to delete.</p>") ids: buildIds}
  type response = {
    @ocaml.doc("<p>Information about any builds that could not be successfully deleted.</p>")
    buildsNotDeleted: option<buildsNotDeleted>,
    @ocaml.doc("<p>The IDs of the builds that were successfully deleted.</p>")
    buildsDeleted: option<buildIds>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "BatchDeleteBuildsCommand"
  let make = (~ids, ()) => new({ids: ids})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateReportGroup = {
  type t
  type request = {
    @ocaml.doc("<p>
      An updated list of tag key and value pairs associated with this report group.
    </p>
         <p>These tags are available for use by AWS services that support AWS CodeBuild report group
      tags.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>
      Used to specify an updated export type. Valid values are:
    </p>
         <ul>
            <li>
               <p>
                  <code>S3</code>: The report results are exported to an S3 bucket.
        </p>
            </li>
            <li>
               <p>
                  <code>NO_EXPORT</code>: The report results are not exported.
        </p>
            </li>
         </ul>")
    exportConfig: option<reportExportConfig>,
    @ocaml.doc("<p>
      The ARN of the report group to update.
    </p>")
    arn: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>
      Information about the updated report group.
    </p>")
    reportGroup: option<reportGroup>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "UpdateReportGroupCommand"
  let make = (~arn, ~tags=?, ~exportConfig=?, ()) =>
    new({tags: tags, exportConfig: exportConfig, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateReportGroup = {
  type t
  type request = {
    @ocaml.doc("<p>
      A list of tag key and value pairs associated with this report group.
    </p>
         <p>These tags are available for use by AWS services that support AWS CodeBuild report group
      tags.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>
      A <code>ReportExportConfig</code> object that contains information about where the report group test results are exported.
    </p>")
    exportConfig: reportExportConfig,
    @ocaml.doc("<p>
      The type of report group.
    </p>")
    @as("type")
    type_: reportType,
    @ocaml.doc("<p>
      The name of the report group.
    </p>")
    name: reportGroupName,
  }
  type response = {
    @ocaml.doc("<p>
      Information about the report group that was created.
    </p>")
    reportGroup: option<reportGroup>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "CreateReportGroupCommand"
  let make = (~exportConfig, ~type_, ~name, ~tags=?, ()) =>
    new({tags: tags, exportConfig: exportConfig, type_: type_, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateWebhook = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the type of build this webhook will trigger.</p>")
    buildType: option<webhookBuildType>,
    @ocaml.doc("<p> An array of arrays of <code>WebhookFilter</code> objects used to determine if a
      webhook event can trigger a build. A filter group must contain at least one
      <code>EVENT</code>
            <code>WebhookFilter</code>. </p>")
    filterGroups: option<filterGroups>,
    @ocaml.doc("<p> A boolean value that specifies whether the associated GitHub repository's secret
      token should be updated. If you use Bitbucket for your repository,
      <code>rotateSecret</code> is ignored. </p>")
    rotateSecret: option<boolean_>,
    @ocaml.doc("<p>A regular expression used to determine which repository branches are built when a
      webhook is triggered. If the name of a branch matches the regular expression, then it is
      built. If <code>branchFilter</code> is empty, then all branches are built.</p>
         <note>
            <p> It is recommended that you use <code>filterGroups</code> instead of
        <code>branchFilter</code>. </p>
         </note>")
    branchFilter: option<string_>,
    @ocaml.doc("<p>The name of the AWS CodeBuild project.</p>") projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p> Information about a repository's webhook that is associated with a project in AWS CodeBuild.
    </p>")
    webhook: option<webhook>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "UpdateWebhookCommand"
  let make = (~projectName, ~buildType=?, ~filterGroups=?, ~rotateSecret=?, ~branchFilter=?, ()) =>
    new({
      buildType: buildType,
      filterGroups: filterGroups,
      rotateSecret: rotateSecret,
      branchFilter: branchFilter,
      projectName: projectName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWebhook = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the type of build this webhook will trigger.</p>")
    buildType: option<webhookBuildType>,
    @ocaml.doc("<p>An array of arrays of <code>WebhookFilter</code> objects used to determine which
      webhooks are triggered. At least one <code>WebhookFilter</code> in the array must
      specify <code>EVENT</code> as its <code>type</code>. </p>
         <p>For a build to be triggered, at least one filter group in the
      <code>filterGroups</code> array must pass. For a filter group to pass, each of its
      filters must pass. </p>")
    filterGroups: option<filterGroups>,
    @ocaml.doc("<p>A regular expression used to determine which repository branches are built when a
      webhook is triggered. If the name of a branch matches the regular expression, then it is
      built. If <code>branchFilter</code> is empty, then all branches are built.</p>
         <note>
            <p>It is recommended that you use <code>filterGroups</code> instead of
        <code>branchFilter</code>. </p>
         </note>")
    branchFilter: option<string_>,
    @ocaml.doc("<p>The name of the AWS CodeBuild project.</p>") projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p>Information about a webhook that connects repository events to a build project in
      AWS CodeBuild.</p>")
    webhook: option<webhook>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "CreateWebhookCommand"
  let make = (~projectName, ~buildType=?, ~filterGroups=?, ~branchFilter=?, ()) =>
    new({
      buildType: buildType,
      filterGroups: filterGroups,
      branchFilter: branchFilter,
      projectName: projectName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetReports = {
  type t
  type request = {
    @ocaml.doc("<p>
      An array of ARNs that identify the <code>Report</code> objects to return.
    </p>")
    reportArns: reportArns,
  }
  type response = {
    @ocaml.doc("<p>
      An array of ARNs passed to <code>BatchGetReportGroups</code> that are not associated with a <code>Report</code>.
    </p>")
    reportsNotFound: option<reportArns>,
    @ocaml.doc("<p>
      The array of <code>Report</code> objects returned by <code>BatchGetReports</code>.
    </p>")
    reports: option<reports>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "BatchGetReportsCommand"
  let make = (~reportArns, ()) => new({reportArns: reportArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetReportGroups = {
  type t
  type request = {
    @ocaml.doc("<p>
      An array of report group ARNs that identify the report groups to return.
    </p>")
    reportGroupArns: reportGroupArns,
  }
  type response = {
    @ocaml.doc("<p>
      An array of ARNs passed to <code>BatchGetReportGroups</code> that are not associated with a <code>ReportGroup</code>.
    </p>")
    reportGroupsNotFound: option<reportGroupArns>,
    @ocaml.doc("<p>
      The array of report groups returned by <code>BatchGetReportGroups</code>.
    </p>")
    reportGroups: option<reportGroups>,
  }
  @module("@aws-sdk/client-codebuild") @new
  external new: request => t = "BatchGetReportGroupsCommand"
  let make = (~reportGroupArns, ()) => new({reportGroupArns: reportGroupArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProject = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of concurrent builds that are allowed for this project.</p>
         <p>New builds are only started if the current number of builds is less than or equal to this limit. 
  If the current build count meets this limit, new builds are throttled and are not run.</p>
         <p>To remove this limit, set this value to -1.</p>")
    concurrentBuildLimit: option<wrapperInt>,
    buildBatchConfig: option<projectBuildBatchConfig>,
    @ocaml.doc("<p>
      An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object 
      specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>, 
      <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System.
  </p>")
    fileSystemLocations: option<projectFileSystemLocations>,
    @ocaml.doc("<p> Information about logs for the build project. A project can create logs in Amazon CloudWatch Logs,
    logs in an S3 bucket, or both. </p>")
    logsConfig: option<logsConfig>,
    @ocaml.doc("<p>Set this to true to generate a publicly accessible URL for your project's build
      badge.</p>")
    badgeEnabled: option<wrapperBoolean>,
    @ocaml.doc("<p>VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.</p>")
    vpcConfig: option<vpcConfig>,
    @ocaml.doc("<p>An updated list of tag key and value pairs associated with this build project.</p>
         <p>These tags are available for use by AWS services that support AWS CodeBuild build project
      tags.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output
    artifacts.</p>
         <note>
            <p> You can use a cross-account KMS key to encrypt the build output artifacts if your
        service role has permission to that key. </p>
         </note>
         <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    the format <code>alias/<alias-name></code>).
    </p>")
    encryptionKey: option<nonEmptyString>,
    @ocaml.doc(
      "<p> The number of minutes a build is allowed to be queued before it times out. </p>"
    )
    queuedTimeoutInMinutes: option<timeOut>,
    @ocaml.doc("<p>The replacement value in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before
      timing out any related build that did not get marked as completed.</p>")
    timeoutInMinutes: option<timeOut>,
    @ocaml.doc("<p>The replacement ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent
    AWS services on behalf of the AWS account.</p>")
    serviceRole: option<nonEmptyString>,
    @ocaml.doc(
      "<p>Information to be changed about the build environment for the build project.</p>"
    )
    environment: option<projectEnvironment>,
    @ocaml.doc("<p>Stores recently used information so that it can be quickly accessed at a later
      time.</p>")
    cache: option<projectCache>,
    @ocaml.doc("<p> An array of <code>ProjectSource</code> objects. </p>")
    secondaryArtifacts: option<projectArtifactsList>,
    @ocaml.doc("<p>Information to be changed about the build output artifacts for the build
        project.</p>")
    artifacts: option<projectArtifacts>,
    @ocaml.doc("<p> An array of <code>ProjectSourceVersion</code> objects. If
      <code>secondarySourceVersions</code> is specified at the build level, then they take
    over these <code>secondarySourceVersions</code> (at the project level). </p>")
    secondarySourceVersions: option<projectSecondarySourceVersions>,
    @ocaml.doc("<p> A version of the build input to be built for this project. If not specified, the
    latest version is used. If specified, it must be one of: </p>
         <ul>
            <li>
               <p>For AWS CodeCommit: the commit ID, branch, or Git tag to use.</p>
            </li>
            <li>
               <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
            corresponds to the version of the source code you want to build. If a pull
            request ID is specified, it must use the format <code>pr/pull-request-ID</code>
            (for example <code>pr/25</code>). If a branch name is specified, the branch's
            HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
            used.</p>
            </li>
            <li>
               <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
            version of the source code you want to build. If a branch name is specified, the
            branch's HEAD commit ID is used. If not specified, the default branch's HEAD
            commit ID is used.</p>
            </li>
            <li>
               <p>For Amazon S3: the version ID of the object that represents the build input ZIP
            file to use.</p>
            </li>
         </ul>
         <p> If <code>sourceVersion</code> is specified at the build level, then that version
    takes precedence over this <code>sourceVersion</code> (at the project level). </p>
         <p> For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html\">Source Version Sample
        with CodeBuild</a> in the <i>AWS CodeBuild User Guide</i>. 
    </p>")
    sourceVersion: option<string_>,
    @ocaml.doc("<p> An array of <code>ProjectSource</code> objects. </p>")
    secondarySources: option<projectSources>,
    @ocaml.doc("<p>Information to be changed about the build input source code for the build
    project.</p>")
    source: option<projectSource>,
    @ocaml.doc("<p>A new or replacement description of the build project.</p>")
    description: option<projectDescription>,
    @ocaml.doc("<p>The name of the build project.</p>
         <note>
            <p>You cannot change a build project's name.</p>
         </note>")
    name: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>Information about the build project that was changed.</p>")
    project: option<project>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "UpdateProjectCommand"
  let make = (
    ~name,
    ~concurrentBuildLimit=?,
    ~buildBatchConfig=?,
    ~fileSystemLocations=?,
    ~logsConfig=?,
    ~badgeEnabled=?,
    ~vpcConfig=?,
    ~tags=?,
    ~encryptionKey=?,
    ~queuedTimeoutInMinutes=?,
    ~timeoutInMinutes=?,
    ~serviceRole=?,
    ~environment=?,
    ~cache=?,
    ~secondaryArtifacts=?,
    ~artifacts=?,
    ~secondarySourceVersions=?,
    ~sourceVersion=?,
    ~secondarySources=?,
    ~source=?,
    ~description=?,
    (),
  ) =>
    new({
      concurrentBuildLimit: concurrentBuildLimit,
      buildBatchConfig: buildBatchConfig,
      fileSystemLocations: fileSystemLocations,
      logsConfig: logsConfig,
      badgeEnabled: badgeEnabled,
      vpcConfig: vpcConfig,
      tags: tags,
      encryptionKey: encryptionKey,
      queuedTimeoutInMinutes: queuedTimeoutInMinutes,
      timeoutInMinutes: timeoutInMinutes,
      serviceRole: serviceRole,
      environment: environment,
      cache: cache,
      secondaryArtifacts: secondaryArtifacts,
      artifacts: artifacts,
      secondarySourceVersions: secondarySourceVersions,
      sourceVersion: sourceVersion,
      secondarySources: secondarySources,
      source: source,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopBuild = {
  type t
  type request = {@ocaml.doc("<p>The ID of the build.</p>") id: nonEmptyString}
  type response = {@ocaml.doc("<p>Information about the build.</p>") build: option<build>}
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "StopBuildCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartBuild = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies if session debugging is enabled for this build. For more information, see
                <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html\">Viewing a running build in Session Manager</a>.</p>")
    debugSessionEnabled: option<wrapperBoolean>,
    @ocaml.doc("<p>The type of credentials AWS CodeBuild uses to pull images in your build. There are two valid
            values: </p>
        <dl>
            <dt>CODEBUILD</dt>
            <dd>
                    <p>Specifies that AWS CodeBuild uses its own credentials. This requires that you
                        modify your ECR repository policy to trust AWS CodeBuild's service principal.</p>
                </dd>
            <dt>SERVICE_ROLE</dt>
            <dd>
                    <p>Specifies that AWS CodeBuild uses your build project's service role. </p>
                </dd>
         </dl>
        <p>When using a cross-account or private registry image, you must use
            <code>SERVICE_ROLE</code> credentials. When using an AWS CodeBuild curated image,
            you must use <code>CODEBUILD</code> credentials. </p>")
    imagePullCredentialsTypeOverride: option<imagePullCredentialsType>,
    @ocaml.doc("<p> The credentials for access to a private registry. </p>")
    registryCredentialOverride: option<registryCredential>,
    @ocaml.doc("<p> Log settings for this build that override the log settings defined in the build
            project. </p>")
    logsConfigOverride: option<logsConfig>,
    @ocaml.doc("<p>A unique, case sensitive identifier you provide to ensure the idempotency of the
            StartBuild request. The token is included in the StartBuild request and is valid for 5
            minutes. If you repeat the StartBuild request with the same token, but change a
            parameter, AWS CodeBuild returns a parameter mismatch error. </p>")
    idempotencyToken: option<string_>,
    @ocaml.doc("<p>The AWS Key Management Service (AWS KMS) customer master key (CMK) that overrides the one specified in the build
            project. The CMK key encrypts the build output artifacts.</p>
        <note>
            <p> You can use a cross-account KMS key to encrypt the build output artifacts if your
                service role has permission to that key. </p>
        </note>
        <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
            the format <code>alias/<alias-name></code>).</p>")
    encryptionKeyOverride: option<nonEmptyString>,
    @ocaml.doc(
      "<p> The number of minutes a build is allowed to be queued before it times out. </p>"
    )
    queuedTimeoutInMinutesOverride: option<timeOut>,
    @ocaml.doc("<p>The number of build timeout minutes, from 5 to 480 (8 hours), that overrides, for this
            build only, the latest setting already defined in the build project.</p>")
    timeoutInMinutesOverride: option<timeOut>,
    @ocaml.doc("<p>Enable this flag to override privileged mode in the build project.</p>")
    privilegedModeOverride: option<wrapperBoolean>,
    @ocaml.doc("<p>The name of a service role for this build that overrides the one specified in the
            build project.</p>")
    serviceRoleOverride: option<nonEmptyString>,
    @ocaml.doc("<p>A ProjectCache object specified for this build that overrides the one defined in the
            build project.</p>")
    cacheOverride: option<projectCache>,
    @ocaml.doc("<p>The name of a certificate for this build that overrides the one specified in the build
            project.</p>")
    certificateOverride: option<string_>,
    @ocaml.doc("<p>The name of a compute type for this build that overrides the one specified in the
            build project.</p>")
    computeTypeOverride: option<computeType>,
    @ocaml.doc("<p>The name of an image for this build that overrides the one specified in the build
            project.</p>")
    imageOverride: option<nonEmptyString>,
    @ocaml.doc("<p>A container type for this build that overrides the one specified in the build
            project.</p>")
    environmentTypeOverride: option<environmentType>,
    @ocaml.doc("<p>Contains information that defines how the build project reports the build status to
            the source provider. This option is only used when the source provider is
                <code>GITHUB</code>, <code>GITHUB_ENTERPRISE</code>, or
            <code>BITBUCKET</code>.</p>")
    buildStatusConfigOverride: option<buildStatusConfig>,
    @ocaml.doc("<p> Set to true to report to your source provider the status of a build's start and
            completion. If you use this option with a source provider other than GitHub, GitHub
            Enterprise, or Bitbucket, an <code>invalidInputException</code> is thrown. </p>
            <p>To be able to report the build status to the source provider, the user associated with the source provider must
have write access to the repo. If the user does not have write access, the build status cannot be updated. For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/access-tokens.html\">Source provider access</a> in the <i>AWS CodeBuild User Guide</i>.</p>
        <note>
            <p> The status of a build triggered by a webhook is always reported to your source
                provider. </p>
        </note>")
    reportBuildStatusOverride: option<wrapperBoolean>,
    @ocaml.doc("<p>Enable this flag to override the insecure SSL setting that is specified in the build
            project. The insecure SSL setting determines whether to ignore SSL warnings while
            connecting to the project source code. This override applies only if the build's source
            is GitHub Enterprise.</p>")
    insecureSslOverride: option<wrapperBoolean>,
    @ocaml.doc("<p>A buildspec file declaration that overrides, for this build only, the latest one
            already defined in the build project.</p>
        <p> If this value is set, it can be either an inline buildspec definition, the path to an
            alternate buildspec file relative to the value of the built-in
                <code>CODEBUILD_SRC_DIR</code> environment variable, or the path to an S3 bucket.
            The bucket must be in the same AWS Region as the build project. Specify the buildspec
            file using its ARN (for example,
                <code>arn:aws:s3:::my-codebuild-sample2/buildspec.yml</code>). If this value is not
            provided or is set to an empty string, the source code must contain a buildspec file in
            its root directory. For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage\">Buildspec File Name and Storage Location</a>. </p>")
    buildspecOverride: option<string_>,
    @ocaml.doc("<p> Information about the Git submodules configuration for this build of an AWS CodeBuild build
            project. </p>")
    gitSubmodulesConfigOverride: option<gitSubmodulesConfig>,
    @ocaml.doc("<p>The user-defined depth of history, with a minimum value of 0, that overrides, for this
            build only, any previous depth of history defined in the build project.</p>")
    gitCloneDepthOverride: option<gitCloneDepth>,
    @ocaml.doc("<p>An authorization type for this build that overrides the one defined in the build
            project. This override applies only if the build project's source is BitBucket or
            GitHub.</p>")
    sourceAuthOverride: option<sourceAuth>,
    @ocaml.doc("<p>A location that overrides, for this build, the source location for the one defined in
            the build project.</p>")
    sourceLocationOverride: option<string_>,
    @ocaml.doc("<p>A source input type, for this build, that overrides the source input defined in the
            build project.</p>")
    sourceTypeOverride: option<sourceType>,
    @ocaml.doc("<p>A set of environment variables that overrides, for this build only, the latest ones
            already defined in the build project.</p>")
    environmentVariablesOverride: option<environmentVariables>,
    @ocaml.doc("<p> An array of <code>ProjectArtifacts</code> objects. </p>")
    secondaryArtifactsOverride: option<projectArtifactsList>,
    @ocaml.doc("<p>Build output artifact settings that override, for this build only, the latest ones
            already defined in the build project.</p>")
    artifactsOverride: option<projectArtifacts>,
    @ocaml.doc("<p>The version of the build input to be built, for this build only. If not specified,
            the latest version is used. If specified, the contents depends on the source
            provider:</p>
        <dl>
            <dt>AWS CodeCommit</dt>
            <dd>
                    <p>The commit ID, branch, or Git tag to use.</p>
                </dd>
            <dt>GitHub</dt>
            <dd>
                    <p>The commit ID, pull request ID, branch name, or tag name that corresponds
                        to the version of the source code you want to build. If a pull request ID is
                        specified, it must use the format <code>pr/pull-request-ID</code> (for
                        example <code>pr/25</code>). If a branch name is specified, the branch's
                        HEAD commit ID is used. If not specified, the default branch's HEAD commit
                        ID is used.</p>
                </dd>
            <dt>Bitbucket</dt>
            <dd>
                    <p>The commit ID, branch name, or tag name that corresponds to the version of
                        the source code you want to build. If a branch name is specified, the
                        branch's HEAD commit ID is used. If not specified, the default branch's HEAD
                        commit ID is used.</p>
                </dd>
            <dt>Amazon S3</dt>
            <dd>
                    <p>The version ID of the object that represents the build input ZIP file to
                        use.</p>
                </dd>
         </dl>
        <p>If <code>sourceVersion</code> is specified at the project level, then this
            <code>sourceVersion</code> (at the build level) takes precedence. </p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html\">Source Version Sample
            with CodeBuild</a> in the <i>AWS CodeBuild User Guide</i>. </p>")
    sourceVersion: option<string_>,
    @ocaml.doc("<p> An array of <code>ProjectSourceVersion</code> objects that specify one or more
            versions of the project's secondary sources to be used for this build only. </p>")
    secondarySourcesVersionOverride: option<projectSecondarySourceVersions>,
    @ocaml.doc("<p> An array of <code>ProjectSource</code> objects. </p>")
    secondarySourcesOverride: option<projectSources>,
    @ocaml.doc("<p>The name of the AWS CodeBuild build project to start running a build.</p>")
    projectName: nonEmptyString,
  }
  type response = {@ocaml.doc("<p>Information about the build to be run.</p>") build: option<build>}
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "StartBuildCommand"
  let make = (
    ~projectName,
    ~debugSessionEnabled=?,
    ~imagePullCredentialsTypeOverride=?,
    ~registryCredentialOverride=?,
    ~logsConfigOverride=?,
    ~idempotencyToken=?,
    ~encryptionKeyOverride=?,
    ~queuedTimeoutInMinutesOverride=?,
    ~timeoutInMinutesOverride=?,
    ~privilegedModeOverride=?,
    ~serviceRoleOverride=?,
    ~cacheOverride=?,
    ~certificateOverride=?,
    ~computeTypeOverride=?,
    ~imageOverride=?,
    ~environmentTypeOverride=?,
    ~buildStatusConfigOverride=?,
    ~reportBuildStatusOverride=?,
    ~insecureSslOverride=?,
    ~buildspecOverride=?,
    ~gitSubmodulesConfigOverride=?,
    ~gitCloneDepthOverride=?,
    ~sourceAuthOverride=?,
    ~sourceLocationOverride=?,
    ~sourceTypeOverride=?,
    ~environmentVariablesOverride=?,
    ~secondaryArtifactsOverride=?,
    ~artifactsOverride=?,
    ~sourceVersion=?,
    ~secondarySourcesVersionOverride=?,
    ~secondarySourcesOverride=?,
    (),
  ) =>
    new({
      debugSessionEnabled: debugSessionEnabled,
      imagePullCredentialsTypeOverride: imagePullCredentialsTypeOverride,
      registryCredentialOverride: registryCredentialOverride,
      logsConfigOverride: logsConfigOverride,
      idempotencyToken: idempotencyToken,
      encryptionKeyOverride: encryptionKeyOverride,
      queuedTimeoutInMinutesOverride: queuedTimeoutInMinutesOverride,
      timeoutInMinutesOverride: timeoutInMinutesOverride,
      privilegedModeOverride: privilegedModeOverride,
      serviceRoleOverride: serviceRoleOverride,
      cacheOverride: cacheOverride,
      certificateOverride: certificateOverride,
      computeTypeOverride: computeTypeOverride,
      imageOverride: imageOverride,
      environmentTypeOverride: environmentTypeOverride,
      buildStatusConfigOverride: buildStatusConfigOverride,
      reportBuildStatusOverride: reportBuildStatusOverride,
      insecureSslOverride: insecureSslOverride,
      buildspecOverride: buildspecOverride,
      gitSubmodulesConfigOverride: gitSubmodulesConfigOverride,
      gitCloneDepthOverride: gitCloneDepthOverride,
      sourceAuthOverride: sourceAuthOverride,
      sourceLocationOverride: sourceLocationOverride,
      sourceTypeOverride: sourceTypeOverride,
      environmentVariablesOverride: environmentVariablesOverride,
      secondaryArtifactsOverride: secondaryArtifactsOverride,
      artifactsOverride: artifactsOverride,
      sourceVersion: sourceVersion,
      secondarySourcesVersionOverride: secondarySourcesVersionOverride,
      secondarySourcesOverride: secondarySourcesOverride,
      projectName: projectName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RetryBuild = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case sensitive identifier you provide to ensure the idempotency of the
      <code>RetryBuild</code> request. The token is included in the
      <code>RetryBuild</code> request and is valid for five minutes. If you repeat
      the <code>RetryBuild</code> request with the same token, but change a parameter,
      AWS CodeBuild returns a parameter mismatch error.</p>")
    idempotencyToken: option<string_>,
    @ocaml.doc("<p>Specifies the identifier of the build to restart.</p>")
    id: option<nonEmptyString>,
  }
  type response = {build: option<build>}
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "RetryBuildCommand"
  let make = (~idempotencyToken=?, ~id=?, ()) => new({idempotencyToken: idempotencyToken, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProject = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of concurrent builds that are allowed for this project.</p>
         <p>New builds are only started if the current number of builds is less than or equal to this limit. 
  If the current build count meets this limit, new builds are throttled and are not run.</p>")
    concurrentBuildLimit: option<wrapperInt>,
    @ocaml.doc("<p>A <a>ProjectBuildBatchConfig</a>
 object that defines the batch build options
            for the project.</p>")
    buildBatchConfig: option<projectBuildBatchConfig>,
    @ocaml.doc("<p>
      An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object 
      specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>, 
      <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System.
  </p>")
    fileSystemLocations: option<projectFileSystemLocations>,
    @ocaml.doc("<p>Information about logs for the build project. These can be logs in Amazon CloudWatch Logs, logs
      uploaded to a specified S3 bucket, or both. </p>")
    logsConfig: option<logsConfig>,
    @ocaml.doc("<p>Set this to true to generate a publicly accessible URL for your project's build
        badge.</p>")
    badgeEnabled: option<wrapperBoolean>,
    @ocaml.doc("<p>VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.</p>")
    vpcConfig: option<vpcConfig>,
    @ocaml.doc("<p>A list of tag key and value pairs associated with this build project.</p>
         <p>These tags are available for use by AWS services that support AWS CodeBuild build project
      tags.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output
      artifacts.</p>
         <note>
            <p>You can use a cross-account KMS key to encrypt the build output artifacts if your
        service role has permission to that key. </p>
         </note>
         <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
        the format <code>alias/<alias-name></code>).
    </p>")
    encryptionKey: option<nonEmptyString>,
    @ocaml.doc("<p>The number of minutes a build is allowed to be queued before it times out. </p>")
    queuedTimeoutInMinutes: option<timeOut>,
    @ocaml.doc("<p>How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before it times out
      any build that has not been marked as completed. The default is 60 minutes.</p>")
    timeoutInMinutes: option<timeOut>,
    @ocaml.doc("<p>The ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services
      on behalf of the AWS account.</p>")
    serviceRole: nonEmptyString,
    @ocaml.doc("<p>Information about the build environment for the build project.</p>")
    environment: projectEnvironment,
    @ocaml.doc("<p>Stores recently used information so that it can be quickly accessed at a later
        time.</p>")
    cache: option<projectCache>,
    @ocaml.doc("<p>An array of <code>ProjectArtifacts</code> objects. </p>")
    secondaryArtifacts: option<projectArtifactsList>,
    @ocaml.doc("<p>Information about the build output artifacts for the build project.</p>")
    artifacts: projectArtifacts,
    @ocaml.doc("<p>An array of <code>ProjectSourceVersion</code> objects. If
      <code>secondarySourceVersions</code> is specified at the build level, then they take
      precedence over these <code>secondarySourceVersions</code> (at the project level).
    </p>")
    secondarySourceVersions: option<projectSecondarySourceVersions>,
    @ocaml.doc("<p>A version of the build input to be built for this project. If not specified, the latest
            version is used. If specified, it must be one of: </p>
         <ul>
            <li>
               <p>For AWS CodeCommit: the commit ID, branch, or Git tag to use.</p>
            </li>
            <li>
               <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
          corresponds to the version of the source code you want to build. If a pull
          request ID is specified, it must use the format <code>pr/pull-request-ID</code>
          (for example <code>pr/25</code>). If a branch name is specified, the branch's
          HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
          used.</p>
            </li>
            <li>
               <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
          version of the source code you want to build. If a branch name is specified, the
          branch's HEAD commit ID is used. If not specified, the default branch's HEAD
          commit ID is used.</p>
            </li>
            <li>
               <p>For Amazon S3: the version ID of the object that represents the build input ZIP
          file to use.</p>
            </li>
         </ul>
         <p>If <code>sourceVersion</code> is specified at the build level, then that version takes
            precedence over this <code>sourceVersion</code> (at the project level). </p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html\">Source Version Sample
                with CodeBuild</a> in the <i>AWS CodeBuild User Guide</i>. 
    </p>")
    sourceVersion: option<string_>,
    @ocaml.doc("<p>An array of <code>ProjectSource</code> objects. </p>")
    secondarySources: option<projectSources>,
    @ocaml.doc("<p>Information about the build input source code for the build project.</p>")
    source: projectSource,
    @ocaml.doc("<p>A description that makes the build project easy to identify.</p>")
    description: option<projectDescription>,
    @ocaml.doc("<p>The name of the build project.</p>") name: projectName,
  }
  type response = {
    @ocaml.doc("<p>Information about the build project that was created.</p>")
    project: option<project>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "CreateProjectCommand"
  let make = (
    ~serviceRole,
    ~environment,
    ~artifacts,
    ~source,
    ~name,
    ~concurrentBuildLimit=?,
    ~buildBatchConfig=?,
    ~fileSystemLocations=?,
    ~logsConfig=?,
    ~badgeEnabled=?,
    ~vpcConfig=?,
    ~tags=?,
    ~encryptionKey=?,
    ~queuedTimeoutInMinutes=?,
    ~timeoutInMinutes=?,
    ~cache=?,
    ~secondaryArtifacts=?,
    ~secondarySourceVersions=?,
    ~sourceVersion=?,
    ~secondarySources=?,
    ~description=?,
    (),
  ) =>
    new({
      concurrentBuildLimit: concurrentBuildLimit,
      buildBatchConfig: buildBatchConfig,
      fileSystemLocations: fileSystemLocations,
      logsConfig: logsConfig,
      badgeEnabled: badgeEnabled,
      vpcConfig: vpcConfig,
      tags: tags,
      encryptionKey: encryptionKey,
      queuedTimeoutInMinutes: queuedTimeoutInMinutes,
      timeoutInMinutes: timeoutInMinutes,
      serviceRole: serviceRole,
      environment: environment,
      cache: cache,
      secondaryArtifacts: secondaryArtifacts,
      artifacts: artifacts,
      secondarySourceVersions: secondarySourceVersions,
      sourceVersion: sourceVersion,
      secondarySources: secondarySources,
      source: source,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetProjects = {
  type t
  type request = {
    @ocaml.doc("<p>The names or ARNs of the build projects. To get information about a project shared
            with your AWS account, its ARN must be specified. You cannot specify a shared project
            using its name.</p>")
    names: projectNames,
  }
  type response = {
    @ocaml.doc("<p>The names of build projects for which information could not be found.</p>")
    projectsNotFound: option<projectNames>,
    @ocaml.doc("<p>Information about the requested build projects.</p>") projects: option<projects>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "BatchGetProjectsCommand"
  let make = (~names, ()) => new({names: names})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetBuilds = {
  type t
  type request = {@ocaml.doc("<p>The IDs of the builds.</p>") ids: buildIds}
  type response = {
    @ocaml.doc("<p>The IDs of builds for which information could not be found.</p>")
    buildsNotFound: option<buildIds>,
    @ocaml.doc("<p>Information about the requested builds.</p>") builds: option<builds>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "BatchGetBuildsCommand"
  let make = (~ids, ()) => new({ids: ids})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopBuildBatch = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the batch build to stop.</p>") id: nonEmptyString,
  }
  type response = {buildBatch: option<buildBatch>}
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "StopBuildBatchCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartBuildBatch = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies if session debugging is enabled for this batch build. For more information, see
  <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html\">Viewing a running build in Session Manager</a>. Batch session debugging is not supported for matrix batch builds.</p>")
    debugSessionEnabled: option<wrapperBoolean>,
    @ocaml.doc("<p>A <code>BuildBatchConfigOverride</code> object that contains batch build configuration
            overrides.</p>")
    buildBatchConfigOverride: option<projectBuildBatchConfig>,
    @ocaml.doc("<p>The type of credentials AWS CodeBuild uses to pull images in your batch build. There are two valid
        values: </p>
        <dl>
            <dt>CODEBUILD</dt>
            <dd>
                    <p>Specifies that AWS CodeBuild uses its own credentials. This requires that you
                        modify your ECR repository policy to trust AWS CodeBuild's service principal.</p>
                </dd>
            <dt>SERVICE_ROLE</dt>
            <dd>
                    <p>Specifies that AWS CodeBuild uses your build project's service role. </p>
                </dd>
         </dl>
         <p>When using a cross-account or private registry image, you must use
                <code>SERVICE_ROLE</code> credentials. When using an AWS CodeBuild curated image,
            you must use <code>CODEBUILD</code> credentials. </p>")
    imagePullCredentialsTypeOverride: option<imagePullCredentialsType>,
    @ocaml.doc("<p>A <code>RegistryCredential</code> object that overrides credentials for access to a
            private registry.</p>")
    registryCredentialOverride: option<registryCredential>,
    @ocaml.doc("<p>A <code>LogsConfig</code> object that override the log settings defined in the batch build
            project.</p>")
    logsConfigOverride: option<logsConfig>,
    @ocaml.doc("<p>A unique, case sensitive identifier you provide to ensure the idempotency of the
                <code>StartBuildBatch</code> request. The token is included in the
                <code>StartBuildBatch</code> request and is valid for five minutes. If you repeat
            the <code>StartBuildBatch</code> request with the same token, but change a parameter,
            AWS CodeBuild returns a parameter mismatch error.</p>")
    idempotencyToken: option<string_>,
    @ocaml.doc("<p>The AWS Key Management Service (AWS KMS) customer master key (CMK) that overrides the one specified in the batch build
        project. The CMK key encrypts the build output artifacts.</p>
         <note>
            <p>You can use a cross-account KMS key to encrypt the build output artifacts if your
          service role has permission to that key. </p>
         </note>
         <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
        the format <code>alias/<alias-name></code>).</p>")
    encryptionKeyOverride: option<nonEmptyString>,
    @ocaml.doc(
      "<p>The number of minutes a batch build is allowed to be queued before it times out.</p>"
    )
    queuedTimeoutInMinutesOverride: option<timeOut>,
    @ocaml.doc("<p>Overrides the build timeout specified in the batch build project.</p>")
    buildTimeoutInMinutesOverride: option<timeOut>,
    @ocaml.doc("<p>Enable this flag to override privileged mode in the batch build project.</p>")
    privilegedModeOverride: option<wrapperBoolean>,
    @ocaml.doc("<p>The name of a service role for this batch build that overrides the one specified in the
        batch build project.</p>")
    serviceRoleOverride: option<nonEmptyString>,
    @ocaml.doc("<p>A <code>ProjectCache</code> object that specifies cache overrides.</p>")
    cacheOverride: option<projectCache>,
    @ocaml.doc("<p>The name of a certificate for this batch build that overrides the one specified in the batch build
        project.</p>")
    certificateOverride: option<string_>,
    @ocaml.doc("<p>The name of a compute type for this batch build that overrides the one specified in the
        batch build project.</p>")
    computeTypeOverride: option<computeType>,
    @ocaml.doc("<p>The name of an image for this batch build that overrides the one specified in the batch
            build project.</p>")
    imageOverride: option<nonEmptyString>,
    @ocaml.doc("<p>A container type for this batch build that overrides the one specified in the batch build
        project.</p>")
    environmentTypeOverride: option<environmentType>,
    @ocaml.doc("<p>Set to <code>true</code> to report to your source provider the status of a batch build's
            start and completion. If you use this option with a source provider other than GitHub,
            GitHub Enterprise, or Bitbucket, an <code>invalidInputException</code> is thrown. </p>
         <note>
            <p>The status of a build triggered by a webhook is always reported to your source
          provider. </p>
         </note>")
    reportBuildBatchStatusOverride: option<wrapperBoolean>,
    @ocaml.doc("<p>Enable this flag to override the insecure SSL setting that is specified in the batch build
        project. The insecure SSL setting determines whether to ignore SSL warnings while
        connecting to the project source code. This override applies only if the build's source
        is GitHub Enterprise.</p>")
    insecureSslOverride: option<wrapperBoolean>,
    @ocaml.doc("<p>A buildspec file declaration that overrides, for this build only, the latest one
        already defined in the build project.</p>
         <p>If this value is set, it can be either an inline buildspec definition, the path to an
        alternate buildspec file relative to the value of the built-in
        <code>CODEBUILD_SRC_DIR</code> environment variable, or the path to an S3 bucket.
        The bucket must be in the same AWS Region as the build project. Specify the buildspec
        file using its ARN (for example,
        <code>arn:aws:s3:::my-codebuild-sample2/buildspec.yml</code>). If this value is not
        provided or is set to an empty string, the source code must contain a buildspec file in
        its root directory. For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage\">Buildspec File Name and Storage Location</a>. </p>")
    buildspecOverride: option<string_>,
    @ocaml.doc("<p>A <code>GitSubmodulesConfig</code> object that overrides the Git submodules configuration
            for this batch build.</p>")
    gitSubmodulesConfigOverride: option<gitSubmodulesConfig>,
    @ocaml.doc("<p>The user-defined depth of history, with a minimum value of 0, that overrides, for this
        batch build only, any previous depth of history defined in the batch build project.</p>")
    gitCloneDepthOverride: option<gitCloneDepth>,
    @ocaml.doc("<p>A <code>SourceAuth</code> object that overrides the one defined in the batch build
            project. This override applies only if the build project's source is BitBucket or
            GitHub.</p>")
    sourceAuthOverride: option<sourceAuth>,
    @ocaml.doc("<p>A location that overrides, for this batch build, the source location defined in
        the batch build project.</p>")
    sourceLocationOverride: option<string_>,
    @ocaml.doc("<p>The source input type that overrides the source input defined in the batch
        build project.</p>")
    sourceTypeOverride: option<sourceType>,
    @ocaml.doc("<p>An array of <code>EnvironmentVariable</code> objects that override, or add to, the
            environment variables defined in the batch build project.</p>")
    environmentVariablesOverride: option<environmentVariables>,
    @ocaml.doc("<p>An array of <code>ProjectArtifacts</code> objects that override the secondary artifacts
            defined in the batch build project.</p>")
    secondaryArtifactsOverride: option<projectArtifactsList>,
    @ocaml.doc("<p>An array of <code>ProjectArtifacts</code> objects that contains information about the
            build output artifact overrides for the build project.</p>")
    artifactsOverride: option<projectArtifacts>,
    @ocaml.doc("<p>The version of the batch build input to be built, for this build only. If not specified,
            the latest version is used. If specified, the contents depends on the source
            provider:</p>
        <dl>
            <dt>AWS CodeCommit</dt>
            <dd>
                    <p>The commit ID, branch, or Git tag to use.</p>
                </dd>
            <dt>GitHub</dt>
            <dd>
                    <p>The commit ID, pull request ID, branch name, or tag name that corresponds
                        to the version of the source code you want to build. If a pull request ID is
                        specified, it must use the format <code>pr/pull-request-ID</code> (for
                        example <code>pr/25</code>). If a branch name is specified, the branch's
                        HEAD commit ID is used. If not specified, the default branch's HEAD commit
                        ID is used.</p>
                </dd>
            <dt>Bitbucket</dt>
            <dd>
                    <p>The commit ID, branch name, or tag name that corresponds to the version of
                        the source code you want to build. If a branch name is specified, the
                        branch's HEAD commit ID is used. If not specified, the default branch's HEAD
                        commit ID is used.</p>
                </dd>
            <dt>Amazon S3</dt>
            <dd>
                    <p>The version ID of the object that represents the build input ZIP file to
                        use.</p>
                </dd>
         </dl>
         <p>If <code>sourceVersion</code> is specified at the project level, then this
                <code>sourceVersion</code> (at the build level) takes precedence. </p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html\">Source Version Sample
                with CodeBuild</a> in the <i>AWS CodeBuild User Guide</i>. </p>")
    sourceVersion: option<string_>,
    @ocaml.doc("<p>An array of <code>ProjectSourceVersion</code> objects that override the secondary source
            versions in the batch build project.</p>")
    secondarySourcesVersionOverride: option<projectSecondarySourceVersions>,
    @ocaml.doc("<p>An array of <code>ProjectSource</code> objects that override the secondary sources
        defined in the batch build project.</p>")
    secondarySourcesOverride: option<projectSources>,
    @ocaml.doc("<p>The name of the project.</p>") projectName: nonEmptyString,
  }
  type response = {
    @ocaml.doc(
      "<p>A <code>BuildBatch</code> object that contains information about the batch build.</p>"
    )
    buildBatch: option<buildBatch>,
  }
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "StartBuildBatchCommand"
  let make = (
    ~projectName,
    ~debugSessionEnabled=?,
    ~buildBatchConfigOverride=?,
    ~imagePullCredentialsTypeOverride=?,
    ~registryCredentialOverride=?,
    ~logsConfigOverride=?,
    ~idempotencyToken=?,
    ~encryptionKeyOverride=?,
    ~queuedTimeoutInMinutesOverride=?,
    ~buildTimeoutInMinutesOverride=?,
    ~privilegedModeOverride=?,
    ~serviceRoleOverride=?,
    ~cacheOverride=?,
    ~certificateOverride=?,
    ~computeTypeOverride=?,
    ~imageOverride=?,
    ~environmentTypeOverride=?,
    ~reportBuildBatchStatusOverride=?,
    ~insecureSslOverride=?,
    ~buildspecOverride=?,
    ~gitSubmodulesConfigOverride=?,
    ~gitCloneDepthOverride=?,
    ~sourceAuthOverride=?,
    ~sourceLocationOverride=?,
    ~sourceTypeOverride=?,
    ~environmentVariablesOverride=?,
    ~secondaryArtifactsOverride=?,
    ~artifactsOverride=?,
    ~sourceVersion=?,
    ~secondarySourcesVersionOverride=?,
    ~secondarySourcesOverride=?,
    (),
  ) =>
    new({
      debugSessionEnabled: debugSessionEnabled,
      buildBatchConfigOverride: buildBatchConfigOverride,
      imagePullCredentialsTypeOverride: imagePullCredentialsTypeOverride,
      registryCredentialOverride: registryCredentialOverride,
      logsConfigOverride: logsConfigOverride,
      idempotencyToken: idempotencyToken,
      encryptionKeyOverride: encryptionKeyOverride,
      queuedTimeoutInMinutesOverride: queuedTimeoutInMinutesOverride,
      buildTimeoutInMinutesOverride: buildTimeoutInMinutesOverride,
      privilegedModeOverride: privilegedModeOverride,
      serviceRoleOverride: serviceRoleOverride,
      cacheOverride: cacheOverride,
      certificateOverride: certificateOverride,
      computeTypeOverride: computeTypeOverride,
      imageOverride: imageOverride,
      environmentTypeOverride: environmentTypeOverride,
      reportBuildBatchStatusOverride: reportBuildBatchStatusOverride,
      insecureSslOverride: insecureSslOverride,
      buildspecOverride: buildspecOverride,
      gitSubmodulesConfigOverride: gitSubmodulesConfigOverride,
      gitCloneDepthOverride: gitCloneDepthOverride,
      sourceAuthOverride: sourceAuthOverride,
      sourceLocationOverride: sourceLocationOverride,
      sourceTypeOverride: sourceTypeOverride,
      environmentVariablesOverride: environmentVariablesOverride,
      secondaryArtifactsOverride: secondaryArtifactsOverride,
      artifactsOverride: artifactsOverride,
      sourceVersion: sourceVersion,
      secondarySourcesVersionOverride: secondarySourcesVersionOverride,
      secondarySourcesOverride: secondarySourcesOverride,
      projectName: projectName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RetryBuildBatch = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the type of retry to perform.</p>")
    retryType: option<retryBuildBatchType>,
    @ocaml.doc("<p>A unique, case sensitive identifier you provide to ensure the idempotency of the
                <code>RetryBuildBatch</code> request. The token is included in the
                <code>RetryBuildBatch</code> request and is valid for five minutes. If you repeat
            the <code>RetryBuildBatch</code> request with the same token, but change a parameter,
            AWS CodeBuild returns a parameter mismatch error.</p>")
    idempotencyToken: option<string_>,
    @ocaml.doc("<p>Specifies the identifier of the batch build to restart.</p>")
    id: option<nonEmptyString>,
  }
  type response = {buildBatch: option<buildBatch>}
  @module("@aws-sdk/client-codebuild") @new external new: request => t = "RetryBuildBatchCommand"
  let make = (~retryType=?, ~idempotencyToken=?, ~id=?, ()) =>
    new({retryType: retryType, idempotencyToken: idempotencyToken, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCuratedEnvironmentImages = {
  type t

  type response = {
    @ocaml.doc("<p>Information about supported platforms for Docker images that are managed by
            AWS CodeBuild.</p>")
    platforms: option<environmentPlatforms>,
  }
  @module("@aws-sdk/client-codebuild") @new
  external new: unit => t = "ListCuratedEnvironmentImagesCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetBuildBatches = {
  type t
  type request = {
    @ocaml.doc("<p>An array that contains the batch build identifiers to retrieve.</p>")
    ids: buildBatchIds,
  }
  type response = {
    @ocaml.doc(
      "<p>An array that contains the identifiers of any batch builds that are not found.</p>"
    )
    buildBatchesNotFound: option<buildBatchIds>,
    @ocaml.doc("<p>An array of <code>BuildBatch</code> objects that represent the retrieved batch
            builds.</p>")
    buildBatches: option<buildBatches>,
  }
  @module("@aws-sdk/client-codebuild") @new
  external new: request => t = "BatchGetBuildBatchesCommand"
  let make = (~ids, ()) => new({ids: ids})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
