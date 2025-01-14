type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-lookoutvision") @new
external createClient: unit => awsServiceClient = "LookoutVisionClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type tagValue = string
type tagKey = string
type tagArn = string
type stream = NodeJs.Buffer.t
type s3ObjectVersion = string
type s3ObjectKey = string
type s3KeyPrefix = string
type s3BucketName = string
type retryAfterSeconds = int
type resourceType = [
  | @as("TRIAL") #TRIAL
  | @as("MODEL") #MODEL
  | @as("DATASET") #DATASET
  | @as("PROJECT") #PROJECT
]
type queryString = string
type projectName = string
type projectArn = string
type paginationToken = string
type pageSize = int
type modelVersion = string
type modelStatusMessage = string
type modelStatus = [
  | @as("DELETING") #DELETING
  | @as("SYSTEM_UPDATING") #SYSTEM_UPDATING
  | @as("STOPPING_HOSTING") #STOPPING_HOSTING
  | @as("HOSTING_FAILED") #HOSTING_FAILED
  | @as("HOSTED") #HOSTED
  | @as("STARTING_HOSTING") #STARTING_HOSTING
  | @as("TRAINING_FAILED") #TRAINING_FAILED
  | @as("TRAINED") #TRAINED
  | @as("TRAINING") #TRAINING
]
type modelHostingStatus = [
  | @as("SYSTEM_UPDATING") #SYSTEM_UPDATING
  | @as("STOPPING_HOSTING") #STOPPING_HOSTING
  | @as("HOSTING_FAILED") #HOSTING_FAILED
  | @as("HOSTED") #HOSTED
  | @as("STARTING_HOSTING") #STARTING_HOSTING
]
type modelDescriptionMessage = string
type modelArn = string
type kmsKeyId = string
type isLabeled = bool
type integer_ = int
type inferenceUnits = int
type imageSourceType = string
type float_ = float
type exceptionString = string
type dateTime = Js.Date.t
type datasetType = string
type datasetStatusMessage = string
type datasetStatus = [
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETE_COMPLETE") #DELETE_COMPLETE
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("UPDATE_FAILED_ROLLBACK_COMPLETE") #UPDATE_FAILED_ROLLBACK_COMPLETE
  | @as("UPDATE_FAILED_ROLLBACK_IN_PROGRESS") #UPDATE_FAILED_ROLLBACK_IN_PROGRESS
  | @as("UPDATE_COMPLETE") #UPDATE_COMPLETE
  | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATE_COMPLETE") #CREATE_COMPLETE
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]
type datasetEntry = string
type datasetChanges = NodeJs.Buffer.t
type contentType = string
type clientToken = string
type boolean_ = bool
type anomalyClassFilter = string
type tagKeyList = array<tagKey>
@ocaml.doc(
  "<p>A key and value pair that is attached to the specified Amazon Lookout for Vision model.</p>"
)
type tag = {
  @ocaml.doc("<p>The value of the tag that is attached to the specified model.</p>") @as("Value")
  value: tagValue,
  @ocaml.doc("<p>The key of the tag that is attached to the specified model.</p>") @as("Key")
  key: tagKey,
}
@ocaml.doc("<p>Information about the location training output.</p>")
type s3Location = {
  @ocaml.doc(
    "<p>The path of the folder, within the S3 bucket, that contains the training output.</p>"
  )
  @as("Prefix")
  prefix: option<s3KeyPrefix>,
  @ocaml.doc("<p>The S3 bucket that contains the training output.</p>") @as("Bucket")
  bucket: s3BucketName,
}
@ocaml.doc("<p>Metadata about an Amazon Lookout for Vision project.</p>")
type projectMetadata = {
  @ocaml.doc("<p>The unix timestamp for the date and time that the project was created. </p>")
  @as("CreationTimestamp")
  creationTimestamp: option<dateTime>,
  @ocaml.doc("<p>The name of the project.</p>") @as("ProjectName") projectName: option<projectName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the project.</p>") @as("ProjectArn")
  projectArn: option<projectArn>,
}
@ocaml.doc("<p>The S3 location where Amazon Lookout for Vision saves training output.</p>")
type outputS3Object = {
  @ocaml.doc("<p>The location of the training output in the bucket.</p>") @as("Key")
  key: s3ObjectKey,
  @ocaml.doc("<p>The bucket that contains the training output.</p>") @as("Bucket")
  bucket: s3BucketName,
}
@ocaml.doc("<p>Information about the evaluation performance of a trained model. </p>")
type modelPerformance = {
  @ocaml.doc("<p>The overall precision metric value for the trained model.</p>") @as("Precision")
  precision: option<float_>,
  @ocaml.doc("<p>The overall recall metric value for the trained model. </p>") @as("Recall")
  recall: option<float_>,
  @ocaml.doc("<p>The overall F1 score metric for the trained model.</p>") @as("F1Score")
  f1Score: option<float_>,
}
@ocaml.doc("<p>Amazon S3 Location information for an input manifest file. </p>")
type inputS3Object = {
  @ocaml.doc("<p>The version ID of the bucket.</p>") @as("VersionId")
  versionId: option<s3ObjectVersion>,
  @ocaml.doc("<p>The name and location of the manifest file withiin the bucket.</p>") @as("Key")
  key: s3ObjectKey,
  @ocaml.doc("<p>The Amazon S3 bucket that contains the manifest.</p>") @as("Bucket")
  bucket: s3BucketName,
}
@ocaml.doc("<p>The source for an image.</p>")
type imageSource = {
  @ocaml.doc("<p>The type of the image.</p>") @as("Type") type_: option<imageSourceType>,
}
@ocaml.doc("<p>Sumary information for an Amazon Lookout for Vision dataset.</p>")
type datasetMetadata = {
  @ocaml.doc("<p>The status message for the dataset.</p>") @as("StatusMessage")
  statusMessage: option<datasetStatusMessage>,
  @ocaml.doc("<p>The status for the dataset.</p>") @as("Status") status: option<datasetStatus>,
  @ocaml.doc("<p>The Unix timestamp for the date and time that the dataset was created. </p>")
  @as("CreationTimestamp")
  creationTimestamp: option<dateTime>,
  @ocaml.doc("<p>The type of the dataset.</p>") @as("DatasetType") datasetType: option<datasetType>,
}
@ocaml.doc("<p>Statistics about the images in a dataset.</p>")
type datasetImageStats = {
  @ocaml.doc("<p>the total number of images labeled as an anomaly.</p>") @as("Anomaly")
  anomaly: option<integer_>,
  @ocaml.doc("<p>The total number of images labeled as normal.</p>") @as("Normal")
  normal: option<integer_>,
  @ocaml.doc("<p>The total number of labeled images.</p>") @as("Labeled") labeled: option<integer_>,
  @ocaml.doc("<p>The total number of images in the dataset.</p>") @as("Total")
  total: option<integer_>,
}
type datasetEntryList = array<datasetEntry>
type tagList_ = array<tag>
type projectMetadataList = array<projectMetadata>
@ocaml.doc("<p>The S3 location where Amazon Lookout for Vision saves model training files.</p>")
type outputConfig = {
  @ocaml.doc("<p>The S3 location for the output.</p>") @as("S3Location") s3Location: s3Location,
}
@ocaml.doc("<p>Describes an Amazon Lookout for Vision model.</p>")
type modelMetadata = {
  @ocaml.doc(
    "<p>Performance metrics for the model. Not available until training has successfully completed.</p>"
  )
  @as("Performance")
  performance: option<modelPerformance>,
  @ocaml.doc("<p>The status message for the model.</p>") @as("StatusMessage")
  statusMessage: option<modelStatusMessage>,
  @ocaml.doc("<p>The status of the model.</p>") @as("Status") status: option<modelStatus>,
  @ocaml.doc("<p>The description for the model.</p>") @as("Description")
  description: option<modelDescriptionMessage>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the model.</p>") @as("ModelArn")
  modelArn: option<modelArn>,
  @ocaml.doc("<p>The version of the model.</p>") @as("ModelVersion")
  modelVersion: option<modelVersion>,
  @ocaml.doc("<p>The unix timestamp for the date and time that the model was created. </p>")
  @as("CreationTimestamp")
  creationTimestamp: option<dateTime>,
}
@ocaml.doc("<p>The prediction results from a call to <a>DetectAnomalies</a>.</p>")
type detectAnomalyResult = {
  @ocaml.doc(
    "<p>The confidence that Amazon Lookout for Vision has in the accuracy of the prediction.</p>"
  )
  @as("Confidence")
  confidence: option<float_>,
  @ocaml.doc("<p>True if the image contains an anomaly, otherwise false.</p>") @as("IsAnomalous")
  isAnomalous: option<boolean_>,
  @ocaml.doc("<p>The source of the image that was analyzed. <code>direct</code> means that the
      images was supplied from the local computer. No other values are supported.</p>")
  @as("Source")
  source: option<imageSource>,
}
type datasetMetadataList = array<datasetMetadata>
@ocaml.doc("<p>Location information about a manifest file. You can use a manifest file to
      create a dataset.</p>")
type datasetGroundTruthManifest = {
  @ocaml.doc("<p>The S3 bucket location for the manifest file.</p>") @as("S3Object")
  s3Object: option<inputS3Object>,
}
@ocaml.doc(
  "<p>The description for a dataset. For more information, see <a>DescribeDataset</a>.</p>"
)
type datasetDescription = {
  @ocaml.doc("<p></p>") @as("ImageStats") imageStats: option<datasetImageStats>,
  @ocaml.doc("<p>The status message for the dataset. </p>") @as("StatusMessage")
  statusMessage: option<datasetStatusMessage>,
  @ocaml.doc("<p>The status of the dataset.</p>") @as("Status") status: option<datasetStatus>,
  @ocaml.doc("<p>The Unix timestamp for the date and time that the dataset was last updated.</p>")
  @as("LastUpdatedTimestamp")
  lastUpdatedTimestamp: option<dateTime>,
  @ocaml.doc("<p>The Unix timestamp for the time and date that the dataset was created.</p>")
  @as("CreationTimestamp")
  creationTimestamp: option<dateTime>,
  @ocaml.doc("<p>The type of the dataset. The value <code>train</code> represents a training dataset or single dataset project.
      The value <code>test</code> represents a test dataset.</p>")
  @as("DatasetType")
  datasetType: option<datasetType>,
  @ocaml.doc("<p>The name of the project that contains the dataset.</p>") @as("ProjectName")
  projectName: option<projectName>,
}
@ocaml.doc(
  "<p>Describe an Amazon Lookout for Vision project. For more information, see <a>DescribeProject</a>.</p>"
)
type projectDescription = {
  @ocaml.doc("<p>A list of datasets in the project.</p>") @as("Datasets")
  datasets: option<datasetMetadataList>,
  @ocaml.doc("<p>The unix timestamp for the date and time that the project was created. </p>")
  @as("CreationTimestamp")
  creationTimestamp: option<dateTime>,
  @ocaml.doc("<p>The name of the project.</p>") @as("ProjectName") projectName: option<projectName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the project.</p>") @as("ProjectArn")
  projectArn: option<projectArn>,
}
type modelMetadataList = array<modelMetadata>
@ocaml.doc("<p>Describes an Amazon Lookout for Vision model.</p>")
type modelDescription = {
  @ocaml.doc("<p>The identifer for the AWS Key Management Service (AWS KMS) key that was used to encrypt the model
         during training.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>The unix timestamp for the date and time that the evaluation ended. </p>")
  @as("EvaluationEndTimestamp")
  evaluationEndTimestamp: option<dateTime>,
  @ocaml.doc(
    "<p>The S3 location where Amazon Lookout for Vision saves the performance metrics.</p>"
  )
  @as("EvaluationResult")
  evaluationResult: option<outputS3Object>,
  @ocaml.doc("<p>The S3 location where Amazon Lookout for Vision saves the manifest file
         that was used to test the trained model and generate the performance scores.</p>")
  @as("EvaluationManifest")
  evaluationManifest: option<outputS3Object>,
  @ocaml.doc("<p>The S3 location where Amazon Lookout for Vision saves model training files.</p>")
  @as("OutputConfig")
  outputConfig: option<outputConfig>,
  @ocaml.doc("<p>Performance metrics for the model. Created during training.</p>")
  @as("Performance")
  performance: option<modelPerformance>,
  @ocaml.doc("<p>The status message for the model.</p>") @as("StatusMessage")
  statusMessage: option<modelStatusMessage>,
  @ocaml.doc("<p>The status of the model.</p>") @as("Status") status: option<modelStatus>,
  @ocaml.doc("<p>The description for the model.</p>") @as("Description")
  description: option<modelDescriptionMessage>,
  @ocaml.doc("<p>The unix timestamp for the date and time that the model was created. </p>")
  @as("CreationTimestamp")
  creationTimestamp: option<dateTime>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the model.</p>") @as("ModelArn")
  modelArn: option<modelArn>,
  @ocaml.doc("<p>The version of the model</p>") @as("ModelVersion")
  modelVersion: option<modelVersion>,
}
@ocaml.doc(
  "<p>Information about the location of a manifest file that Amazon Lookout for Vision uses to to create a dataset.</p>"
)
type datasetSource = {
  @ocaml.doc("<p>Location information for the manifest file.</p>") @as("GroundTruthManifest")
  groundTruthManifest: option<datasetGroundTruthManifest>,
}
@ocaml.doc("<p>This is the Amazon Lookout for Vision API Reference. It provides descriptions of actions, 
      data types, common parameters, and common errors.</p>
         <p>Amazon Lookout for Vision enables you to find visual defects in industrial products,
         accurately and at scale. It uses computer vision to identify missing components in an industrial product,
         damage to vehicles or structures, irregularities in production lines, and even minuscule defects in
         silicon wafers — or any other physical item where quality is important such as a missing capacitor
         on printed circuit boards.</p>")
module UpdateDatasetEntries = {
  type t
  type request = {
    @ocaml.doc("<p>ClientToken is an idempotency token that ensures a call to <code>UpdateDatasetEntries</code>
         completes only once.  You choose the value to pass. For example, An issue, 
         such as an network outage, might prevent you from getting a response from <code>UpdateDatasetEntries</code>.
         In this case, safely retry your call
         to <code>UpdateDatasetEntries</code> by using the same <code>ClientToken</code> parameter value. An error occurs
         if the other input parameters are not the same as in the first request. Using a different  
         value for <code>ClientToken</code> is considered a new call to <code>UpdateDatasetEntries</code>. An idempotency
         token is active for 8 hours.
      </p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The entries to add to the dataset.</p>") @as("Changes") changes: datasetChanges,
    @ocaml.doc("<p>The type of the dataset that you want to update. Specify <code>train</code> to update
      the training dataset. Specify <code>test</code> to update the test dataset. If you
       have a single dataset project, specify <code>train</code>.</p>")
    @as("DatasetType")
    datasetType: datasetType,
    @ocaml.doc("<p>The name of the project that contains the dataset that you want to update.</p>")
    @as("ProjectName")
    projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p>The status of the dataset update.</p>") @as("Status")
    status: option<datasetStatus>,
  }
  @module("@aws-sdk/client-lookoutvision") @new
  external new: request => t = "UpdateDatasetEntriesCommand"
  let make = (~changes, ~datasetType, ~projectName, ~clientToken=?, ()) =>
    new({
      clientToken: clientToken,
      changes: changes,
      datasetType: datasetType,
      projectName: projectName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopModel = {
  type t
  type request = {
    @ocaml.doc("<p>ClientToken is an idempotency token that ensures a call to <code>StopModel</code>
         completes only once.  You choose the value to pass. For example, An issue, 
         such as an network outage, might prevent you from getting a response from <code>StopModel</code>.
         In this case, safely retry your call
         to <code>StopModel</code> by using the same <code>ClientToken</code> parameter value. An error occurs
         if the other input parameters are not the same as in the first request. Using a different  
         value for <code>ClientToken</code> is considered a new call to <code>StopModel</code>. An idempotency
         token is active for 8 hours.
         
        
      </p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The version of the model that you want to stop.</p>") @as("ModelVersion")
    modelVersion: modelVersion,
    @ocaml.doc("<p>The name of the project that contains the model that you want to stop.</p>")
    @as("ProjectName")
    projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p>The status of the model.</p>") @as("Status") status: option<modelHostingStatus>,
  }
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "StopModelCommand"
  let make = (~modelVersion, ~projectName, ~clientToken=?, ()) =>
    new({clientToken: clientToken, modelVersion: modelVersion, projectName: projectName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartModel = {
  type t
  type request = {
    @ocaml.doc("<p>ClientToken is an idempotency token that ensures a call to <code>StartModel</code>
         completes only once.  You choose the value to pass. For example, An issue, 
         such as an network outage, might prevent you from getting a response from <code>StartModel</code>.
         In this case, safely retry your call
         to <code>StartModel</code> by using the same <code>ClientToken</code> parameter value. An error occurs
         if the other input parameters are not the same as in the first request. Using a different  
         value for <code>ClientToken</code> is considered a new call to <code>StartModel</code>. An idempotency
         token is active for 8 hours.
      </p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The minimum number of inference units to use. A single
         inference unit represents 1 hour of processing and can support up to 5 Transaction Pers Second (TPS).
         Use a higher number to increase the TPS throughput of your model. You are charged for the number
         of inference units that you use.
      </p>")
    @as("MinInferenceUnits")
    minInferenceUnits: inferenceUnits,
    @ocaml.doc("<p>The version of the model that you want to start.</p>") @as("ModelVersion")
    modelVersion: modelVersion,
    @ocaml.doc("<p>The name of the project that contains the model that you want to start.</p>")
    @as("ProjectName")
    projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p>The current running status of the model.</p>") @as("Status")
    status: option<modelHostingStatus>,
  }
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "StartModelCommand"
  let make = (~minInferenceUnits, ~modelVersion, ~projectName, ~clientToken=?, ()) =>
    new({
      clientToken: clientToken,
      minInferenceUnits: minInferenceUnits,
      modelVersion: modelVersion,
      projectName: projectName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProject = {
  type t
  type request = {
    @ocaml.doc("<p>ClientToken is an idempotency token that ensures a call to <code>DeleteProject</code>
         completes only once.  You choose the value to pass. For example, An issue, 
         such as an network outage, might prevent you from getting a response from <code>DeleteProject</code>.
         In this case, safely retry your call
         to <code>DeleteProject</code> by using the same <code>ClientToken</code> parameter value. An error occurs
         if the other input parameters are not the same as in the first request. Using a different  
         value for <code>ClientToken</code> is considered a new call to <code>DeleteProject</code>. An idempotency
         token is active for 8 hours.</p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The name of the project to delete.</p>") @as("ProjectName")
    projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the project that was deleted.</p>")
    @as("ProjectArn")
    projectArn: option<projectArn>,
  }
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "DeleteProjectCommand"
  let make = (~projectName, ~clientToken=?, ()) =>
    new({clientToken: clientToken, projectName: projectName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteModel = {
  type t
  type request = {
    @ocaml.doc("<p>ClientToken is an idempotency token that ensures a call to <code>DeleteModel</code>
      completes only once.  You choose the value to pass. For example, An issue, 
      such as an network outage, might prevent you from getting a response from <code>DeleteModel</code>.
      In this case, safely retry your call
       to <code>DeleteModel</code> by using the same <code>ClientToken</code> parameter value. An error occurs
       if the other input parameters are not the same as in the first request. Using a different  
       value for <code>ClientToken</code> is considered a new call to <code>DeleteModel</code>. An idempotency
       token is active for 8 hours.</p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The version of the model that you want to delete.</p>") @as("ModelVersion")
    modelVersion: modelVersion,
    @ocaml.doc("<p>The name of the project that contains the model that you want to delete.</p>")
    @as("ProjectName")
    projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the model that was deleted.</p>")
    @as("ModelArn")
    modelArn: option<modelArn>,
  }
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "DeleteModelCommand"
  let make = (~modelVersion, ~projectName, ~clientToken=?, ()) =>
    new({clientToken: clientToken, modelVersion: modelVersion, projectName: projectName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDataset = {
  type t
  type request = {
    @ocaml.doc("<p>ClientToken is an idempotency token that ensures a call to <code>DeleteDataset</code>
      completes only once.  You choose the value to pass. For example, An issue, 
      such as an network outage, might prevent you from getting a response from <code>DeleteDataset</code>.
      In this case, safely retry your call
       to <code>DeleteDataset</code> by using the same <code>ClientToken</code> parameter value. An error occurs
       if the other input parameters are not the same as in the first request. Using a different  
       value for <code>ClientToken</code> is considered a new call to <code>DeleteDataset</code>. An idempotency
       token is active for 8 hours.</p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The type of the dataset to delete. Specify <code>train</code> to delete the training dataset.
      Specify <code>test</code> to delete the test dataset. To delete the dataset in a single dataset project, 
         specify <code>train</code>.</p>")
    @as("DatasetType")
    datasetType: datasetType,
    @ocaml.doc("<p>The name of the project that contains the dataset that you want to delete.</p>")
    @as("ProjectName")
    projectName: projectName,
  }

  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "DeleteDatasetCommand"
  let make = (~datasetType, ~projectName, ~clientToken=?, ()) =>
    new({clientToken: clientToken, datasetType: datasetType, projectName: projectName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of the keys of the tags that you want to remove.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the model from which you want to remove tags. </p>"
    )
    @as("ResourceArn")
    resourceArn: tagArn,
  }

  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListDatasetEntries = {
  type t
  type request = {
    @ocaml.doc("<p>Perform a \"contains\" search on the  values of the <code>source-ref</code> key within the dataset. 
         For example a value of \"IMG_17\"  returns all JSON Lines where the <code>source-ref</code> key value matches <i>*IMG_17*</i>.</p>")
    @as("SourceRefContains")
    sourceRefContains: option<queryString>,
    @ocaml.doc("<p>The maximum number of results to return per paginated call. The largest value you can specify is 100. 
         If you specify a value greater than 100, a ValidationException
         error occurs. The default value is 100.</p>")
    @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>If the previous response was incomplete (because there is more data to retrieve),
         Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination token to
         retrieve the next set of dataset entries.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>Only includes entries after the specified date in the response. For example, <code>2020-06-23T00:00:00</code>.</p>"
    )
    @as("AfterCreationDate")
    afterCreationDate: option<dateTime>,
    @ocaml.doc(
      "<p>Only includes entries before the specified date in the response. For example, <code>2020-06-23T00:00:00</code>.</p>"
    )
    @as("BeforeCreationDate")
    beforeCreationDate: option<dateTime>,
    @ocaml.doc("<p>Specify <code>normal</code> to include only normal images. Specify <code>anomaly</code> to only include
         anomalous entries. If you don't specify a value, Amazon Lookout for Vision returns normal and anomalous images.</p>")
    @as("AnomalyClass")
    anomalyClass: option<anomalyClassFilter>,
    @ocaml.doc("<p>Specify <code>true</code> to include labeled entries, otherwise specify <code>false</code>. If you
      don't specify a value, Lookout for Vision returns all entries.</p>")
    @as("Labeled")
    labeled: option<isLabeled>,
    @ocaml.doc("<p>The type of the dataset that you want to list.  Specify <code>train</code> to list 
         the training dataset. Specify <code>test</code> to list the test dataset. If you have a single dataset
      project, specify <code>train</code>.</p>")
    @as("DatasetType")
    datasetType: datasetType,
    @ocaml.doc("<p>The name of the project that contains the dataset that you want to list.</p>")
    @as("ProjectName")
    projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, Amazon Lookout for Vision returns this token
         that you can use in the subsequent request to retrieve the next set ofdataset entries.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of the entries (JSON Lines) within the dataset.</p>")
    @as("DatasetEntries")
    datasetEntries: option<datasetEntryList>,
  }
  @module("@aws-sdk/client-lookoutvision") @new
  external new: request => t = "ListDatasetEntriesCommand"
  let make = (
    ~datasetType,
    ~projectName,
    ~sourceRefContains=?,
    ~maxResults=?,
    ~nextToken=?,
    ~afterCreationDate=?,
    ~beforeCreationDate=?,
    ~anomalyClass=?,
    ~labeled=?,
    (),
  ) =>
    new({
      sourceRefContains: sourceRefContains,
      maxResults: maxResults,
      nextToken: nextToken,
      afterCreationDate: afterCreationDate,
      beforeCreationDate: beforeCreationDate,
      anomalyClass: anomalyClass,
      labeled: labeled,
      datasetType: datasetType,
      projectName: projectName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProject = {
  type t
  type request = {
    @ocaml.doc("<p>ClientToken is an idempotency token that ensures a call to <code>CreateProject</code>
      completes only once.  You choose the value to pass. For example, An issue, 
      such as an network outage, might prevent you from getting a response from <code>CreateProject</code>.
      In this case, safely retry your call
       to <code>CreateProject</code> by using the same <code>ClientToken</code> parameter value. An error occurs
       if the other input parameters are not the same as in the first request. Using a different  
       value for <code>ClientToken</code> is considered a new call to <code>CreateProject</code>. An idempotency
       token is active for 8 hours.</p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The name for the project.</p>") @as("ProjectName") projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p>Information about the project.</p>") @as("ProjectMetadata")
    projectMetadata: option<projectMetadata>,
  }
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "CreateProjectCommand"
  let make = (~projectName, ~clientToken=?, ()) =>
    new({clientToken: clientToken, projectName: projectName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The key-value tags to assign to the model.</p>") @as("Tags") tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the model to assign the tags.</p>")
    @as("ResourceArn")
    resourceArn: tagArn,
  }

  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the model for which you want to list tags. </p>"
    )
    @as("ResourceArn")
    resourceArn: tagArn,
  }
  type response = {
    @ocaml.doc("<p>A map of tag keys and values attached to the specified model.</p>") @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-lookoutvision") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProjects = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per paginated call. The largest value you can specify is 100. 
         If you specify a value greater than 100, a ValidationException
         error occurs. The default value is 100.</p>")
    @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>If the previous response was incomplete (because there is more data to retrieve),
         Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination token to
         retrieve the next set of projects.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, Amazon Lookout for Vision returns this token
         that you can use in the subsequent request to retrieve the next set of projects.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of projects in your AWS account.</p>") @as("Projects")
    projects: option<projectMetadataList>,
  }
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "ListProjectsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectAnomalies = {
  type t
  type request = {
    @ocaml.doc("<p>The type of the image passed in <code>Body</code>.
         Valid values are <code>image/png</code> (PNG format images) and <code>image/jpeg</code> (JPG format images). </p>")
    @as("ContentType")
    contentType: contentType,
    @ocaml.doc("<p>The unencrypted image bytes that you want to analyze. </p>") @as("Body")
    body: stream,
    @ocaml.doc("<p>The version of the model that you want to use.</p>") @as("ModelVersion")
    modelVersion: modelVersion,
    @ocaml.doc(
      "<p>The name of the project that contains the model version that you want to use.</p>"
    )
    @as("ProjectName")
    projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p>The results of the <code>DetectAnomalies</code> operation.</p>")
    @as("DetectAnomalyResult")
    detectAnomalyResult: option<detectAnomalyResult>,
  }
  @module("@aws-sdk/client-lookoutvision") @new
  external new: request => t = "DetectAnomaliesCommand"
  let make = (~contentType, ~body, ~modelVersion, ~projectName, ()) =>
    new({
      contentType: contentType,
      body: body,
      modelVersion: modelVersion,
      projectName: projectName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataset = {
  type t
  type request = {
    @ocaml.doc("<p>The type of the dataset to describe. Specify <code>train</code> to describe the 
      training dataset. Specify <code>test</code> to describe the test dataset.
      If you have a single dataset project, specify <code>train</code>
         </p>")
    @as("DatasetType")
    datasetType: datasetType,
    @ocaml.doc(
      "<p>The name of the project that contains the dataset that you want to describe.</p>"
    )
    @as("ProjectName")
    projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p>The description of the requested dataset. </p>") @as("DatasetDescription")
    datasetDescription: option<datasetDescription>,
  }
  @module("@aws-sdk/client-lookoutvision") @new
  external new: request => t = "DescribeDatasetCommand"
  let make = (~datasetType, ~projectName, ()) =>
    new({datasetType: datasetType, projectName: projectName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateModel = {
  type t
  type request = {
    @ocaml.doc("<p>A set of tags (key-value pairs) that you want to attach to the model.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The identifier for your AWS Key Management Service (AWS KMS) customer master key (CMK).
         The key is used to encrypt training and test images copied into the service for model training. Your 
         source images are unaffected.
         If this parameter is not specified, the copied images are encrypted by a key that AWS owns and manages.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>The location where Amazon Lookout for Vision saves the training results.</p>")
    @as("OutputConfig")
    outputConfig: outputConfig,
    @ocaml.doc("<p>ClientToken is an idempotency token that ensures a call to <code>CreateModel</code>
      completes only once.  You choose the value to pass. For example, An issue, 
      such as an network outage, might prevent you from getting a response from <code>CreateModel</code>.
      In this case, safely retry your call
       to <code>CreateModel</code> by using the same <code>ClientToken</code> parameter value. An error occurs
       if the other input parameters are not the same as in the first request. Using a different  
       value for <code>ClientToken</code> is considered a new call to <code>CreateModel</code>. An idempotency
       token is active for 8 hours.</p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>A description for the version of the model.</p>") @as("Description")
    description: option<modelDescriptionMessage>,
    @ocaml.doc("<p>The name of the project in which you want to create a model version.</p>")
    @as("ProjectName")
    projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p>The response from a call to <code>CreateModel</code>.</p>") @as("ModelMetadata")
    modelMetadata: option<modelMetadata>,
  }
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "CreateModelCommand"
  let make = (
    ~outputConfig,
    ~projectName,
    ~tags=?,
    ~kmsKeyId=?,
    ~clientToken=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      kmsKeyId: kmsKeyId,
      outputConfig: outputConfig,
      clientToken: clientToken,
      description: description,
      projectName: projectName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListModels = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per paginated call. The largest value you can specify is 100. 
         If you specify a value greater than 100, a ValidationException
         error occurs. The default value is 100.</p>")
    @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>If the previous response was incomplete (because there is more data to retrieve),
         Amazon Lookout for Vision returns a pagination token in the response. You can use this pagination token to
         retrieve the next set of models.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>The name of the project that contains the model versions that you want to list.</p>"
    )
    @as("ProjectName")
    projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, Amazon Lookout for Vision returns this token
         that you can use in the subsequent request to retrieve the next set of models. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of model versions in the specified project. </p>") @as("Models")
    models: option<modelMetadataList>,
  }
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "ListModelsCommand"
  let make = (~projectName, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, projectName: projectName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProject = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the project that you want to describe.</p>") @as("ProjectName")
    projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p>The description of the project.</p>") @as("ProjectDescription")
    projectDescription: option<projectDescription>,
  }
  @module("@aws-sdk/client-lookoutvision") @new
  external new: request => t = "DescribeProjectCommand"
  let make = (~projectName, ()) => new({projectName: projectName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeModel = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the model that you want to describe.</p>") @as("ModelVersion")
    modelVersion: modelVersion,
    @ocaml.doc("<p>The project that contains the version of a model that you want to describe.</p>")
    @as("ProjectName")
    projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p>Contains the description of the model.</p>") @as("ModelDescription")
    modelDescription: option<modelDescription>,
  }
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "DescribeModelCommand"
  let make = (~modelVersion, ~projectName, ()) =>
    new({modelVersion: modelVersion, projectName: projectName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataset = {
  type t
  type request = {
    @ocaml.doc("<p>ClientToken is an idempotency token that ensures a call to <code>CreateDataset</code>
      completes only once.  You choose the value to pass. For example, An issue, 
      such as an network outage, might prevent you from getting a response from <code>CreateDataset</code>.
      In this case, safely retry your call
       to <code>CreateDataset</code> by using the same <code>ClientToken</code> parameter value. An error occurs
       if the other input parameters are not the same as in the first request. Using a different  
       value for <code>ClientToken</code> is considered a new call to <code>CreateDataset</code>. An idempotency
       token is active for 8 hours.
    </p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The location of the manifest file that Amazon Lookout for Vision uses to create the dataset.</p>
         <p>If you don't specify <code>DatasetSource</code>, an empty dataset is created and the operation 
      synchronously returns. Later, you can add JSON Lines by calling <a>UpdateDatasetEntries</a>.
     </p>
         <p>If you specify a value for <code>DataSource</code>, the manifest at the S3 location
     is validated and used to create the dataset. The call to <code>CreateDataset</code> is asynchronous
     and might take a while to complete. To find out the current status, Check the value of <code>Status</code>
     returned in a call to <a>DescribeDataset</a>.</p>")
    @as("DatasetSource")
    datasetSource: option<datasetSource>,
    @ocaml.doc("<p>The type of the dataset. Specify <code>train</code> for a training dataset.
      Specify <code>test</code> for a test dataset.</p>")
    @as("DatasetType")
    datasetType: datasetType,
    @ocaml.doc("<p>The name of the project in which you want to create a dataset.</p>")
    @as("ProjectName")
    projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p>Information about the dataset.</p>") @as("DatasetMetadata")
    datasetMetadata: option<datasetMetadata>,
  }
  @module("@aws-sdk/client-lookoutvision") @new external new: request => t = "CreateDatasetCommand"
  let make = (~datasetType, ~projectName, ~clientToken=?, ~datasetSource=?, ()) =>
    new({
      clientToken: clientToken,
      datasetSource: datasetSource,
      datasetType: datasetType,
      projectName: projectName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
