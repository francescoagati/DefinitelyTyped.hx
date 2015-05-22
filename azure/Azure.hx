extern class TableService extends BatchServiceClient {
	static var incorrectTableNameErr : String;
	static var incorrectCallbackErr : String;
	static var incorrectTableQuery : String;
	static var incorrectPartitionErr : String;
	@:overload(function(connectionString:String):Void { })
	@:overload(function(storageAccount:String, storageAccessKey:String, ?host:String, ?authenticationProvider:String):Void { })
	function new():Void;
	@:overload(function(options:TimeoutIntervalOptions, callback:StorageServicePropertiesCallback):Void { })
	function getServiceProperties(callback:StorageServicePropertiesCallback):Void;
	@:overload(function(serviceProperties:StorageServiceProperties, options:TimeoutIntervalOptions, callback:StorageCallbackVoid):Void { })
	function setServiceProperties(serviceProperties:StorageServiceProperties, callback:StorageCallbackVoid):Void;
	@:overload(function(table:String, options:TimeoutIntervalOptions, ?callback:TableRequestCallback):Void { })
	function getTable(table:String, ?callback:TableRequestCallback):Void;
	@:overload(function(table:String, options:TimeoutIntervalOptions, ?callback:TableRequestCallback):Void { })
	function createTable(table:String, ?callback:TableRequestCallback):Void;
	@:overload(function(table:String, options:TimeoutIntervalOptions, ?callback:CreateTableIfNotExistsCallback):Void { })
	function createTableIfNotExists(table:String, ?callback:CreateTableIfNotExistsCallback):Void;
	@:overload(function(table:String, options:TimeoutIntervalOptions, ?callback:DeleteTableCallback):Void { })
	function deleteTable(table:String, ?callback:DeleteTableCallback):Void;
	@:overload(function(options:QueryTablesOptions, ?callback:QueryTablesCallback):Void { })
	function queryTables(?callback:QueryTablesCallback):Void;
	@:overload(function(table:String, partitionKey:String, rowKey:String, options:TimeoutIntervalOptions, ?callback:QueryEntityCallback):Void { })
	function queryEntity(table:String, partitionKey:String, rowKey:String, ?callback:QueryEntityCallback):Void;
	@:overload(function(tableQuery:TableQuery, options:TimeoutIntervalOptions, ?callback:QueryEntitiesCallback):Void { })
	function queryEntities(tableQuery:TableQuery, ?callback:QueryEntitiesCallback):Void;
	@:overload(function(tableName:String, entityDescriptor:Entity, options:TimeoutIntervalOptions, ?callback:ModifyEntityCallback):Void { })
	function insertEntity(tableName:String, entityDescriptor:Entity, ?callback:ModifyEntityCallback):Void;
	@:overload(function(tableName:String, entityDescriptor:Entity, options:TimeoutIntervalOptions, ?callback:ModifyEntityCallback):Void { })
	function insertOrReplaceEntity(tableName:String, entityDescriptor:Entity, ?callback:ModifyEntityCallback):Void;
	@:overload(function(tableName:String, entityDescriptor:Entity, options:UpdateEntityOptions, ?callback:ModifyEntityCallback):Void { })
	function updateEntity(tableName:String, entityDescriptor:Entity, ?callback:ModifyEntityCallback):Void;
	@:overload(function(tableName:String, entityDescriptor:Entity, options:UpdateEntityOptions, ?callback:ModifyEntityCallback):Void { })
	function mergeEntity(tableName:String, entityDescriptor:Entity, ?callback:ModifyEntityCallback):Void;
	@:overload(function(tableName:String, entityDescriptor:Entity, options:UpdateEntityOptions, ?callback:ModifyEntityCallback):Void { })
	function insertOrMergeEntity(tableName:String, entityDescriptor:Entity, ?callback:ModifyEntityCallback):Void;
	@:overload(function(tableName:String, entityDescriptor:Entity, options:UpdateEntityOptions, ?callback:DeleteEntityCallback):Void { })
	function deleteEntity(tableName:String, entityDescriptor:Entity, ?callback:DeleteEntityCallback):Void;
}
extern class BlobService extends StorageServiceClient {
	var singleBlobPutThresholdInBytes : Float;
	var parallelOperationThreadCount : Float;
	var SpeedSummary : Dynamic;
	@:overload(function(connectionString:String):Void { })
	@:overload(function(storageAccount:String, storageAccessKey:String, ?host:String, ?sasToken:String):Void { })
	function new():Void;
	@:overload(function(options:TimeoutIntervalOptions, callback:StorageServicePropertiesCallback):Void { })
	function getServiceProperties(callback:StorageServicePropertiesCallback):Void;
	@:overload(function(serviceProperties:StorageServiceProperties, options:TimeoutIntervalOptions, callback:StorageCallbackVoid):Void { })
	function setServiceProperties(serviceProperties:StorageServiceProperties, callback:StorageCallbackVoid):Void;
	@:overload(function(options:ListContainersOptions, callback:ListContainersCallback):Void { })
	function listContainers(callback:ListContainersCallback):Void;
	@:overload(function(container:String, options:CreateContainerOptions, callback:StorageCallback<ContainerResult>):Void { })
	function createContainer(container:String, callback:StorageCallback<ContainerResult>):Void;
	@:overload(function(container:String, options:CreateContainerOptions, callback:StorageCallback<Bool>):Void { })
	function createContainerIfNotExists(container:String, callback:StorageCallback<Bool>):Void;
	@:overload(function(container:String, options:GetContainerPropertiesOptions, callback:StorageCallback<ContainerResult>):Void { })
	function getContainerProperties(container:String, callback:StorageCallback<ContainerResult>):Void;
	@:overload(function(container:String, options:GetContainerPropertiesOptions, callback:StorageCallback<ContainerResult>):Void { })
	function getContainerMetadata(container:String, callback:StorageCallback<ContainerResult>):Void;
	@:overload(function(container:String, metadata:StorageMetadata, options:AccessConditionsOptions, callback:StorageCallback<ContainerResult>):Void { })
	function setContainerMetadata(container:String, metadata:StorageMetadata, callback:StorageCallback<ContainerResult>):Void;
	@:overload(function(container:String, options:GetContainerPropertiesOptions, callback:StorageCallback<ContainerResult>):Void { })
	function getContainerAcl(container:String, callback:StorageCallback<ContainerResult>):Void;
	@:overload(function(container:String, publicAccessLevel:String, options:StorageAclOptions, callback:StorageCallback<ContainerResult>):Void { })
	function setContainerAcl(container:String, publicAccessLevel:String, callback:StorageCallback<ContainerResult>):Void;
	@:overload(function(container:String, options:LeaseIdOptions, callback:StorageCallbackVoid):Void { })
	function deleteContainer(container:String, callback:StorageCallbackVoid):Void;
	@:overload(function(container:String, options:ListBlobsOptions, callback:ListBlobsCallback):Void { })
	function listBlobs(container:String, callback:ListBlobsCallback):Void;
	@:overload(function(container:String, blob:String, options:GetBlobPropertiesOptions, callback:StorageCallback<BlobResult>):Void { })
	function getBlobProperties(container:String, blob:String, callback:StorageCallback<BlobResult>):Void;
	@:overload(function(container:String, blob:String, options:SetBlobPropertiesOptions, callback:StorageCallback<BlobResult>):Void { })
	function setBlobProperties(container:String, blob:String, callback:StorageCallback<BlobResult>):Void;
	@:overload(function(container:String, blob:String, metadata:StorageMetadata, options:GetBlobPropertiesOptions, callback:StorageCallback<BlobResult>):Void { })
	function setBlobMetadata(container:String, blob:String, metadata:StorageMetadata, callback:StorageCallback<BlobResult>):Void;
	@:overload(function(container:String, blob:String, options:ReadBlobOptions, callback:StorageCallback<BlobResult>):stream.Readable { })
	function getBlob(container:String, blob:String, callback:StorageCallback<BlobResult>):stream.Readable;
	@:overload(function(container:String, blob:String, localFileName:String, options:ReadBlobOptions, callback:StorageCallback<BlobResult>):Void { })
	function getBlobToFile(container:String, blob:String, localFileName:String, callback:StorageCallback<BlobResult>):Void;
	@:overload(function(container:String, blob:String, stream:stream.Writable, options:ReadBlobOptions, callback:StorageCallback<BlobResult>):Void { })
	function getBlobToStream(container:String, blob:String, stream:stream.Writable, callback:StorageCallback<BlobResult>):Void;
	@:overload(function(container:String, blob:String, options:ReadBlobOptions, callback:GetBlobToTextCallback):Void { })
	function getBlobToText(container:String, blob:String, callback:GetBlobToTextCallback):Void;
	@:overload(function(container:String, blob:String, options:DeleteBlobOptions, callback:StorageCallback<Bool>):Void { })
	function deleteBlob(container:String, blob:String, callback:StorageCallback<Bool>):Void;
	@:overload(function(container:String, blob:String, options:BlobSnapshotOptions, callback:StorageCallback<String>):Void { })
	function createBlobSnapshot(container:String, blob:String, callback:StorageCallback<String>):Void;
	@:overload(function(sourceUri:String, targetContainer:String, targetBlob:String, options:CopyBlobOptions, callback:StorageCallback<BlobResult>):Void { })
	function copyBlob(sourceUri:String, targetContainer:String, targetBlob:String, callback:StorageCallback<BlobResult>):Void;
	@:overload(function(container:String, blob:String, copyId:String, options:LeaseIdOptions, callback:StorageCallbackVoid):Void { })
	function abortCopyBlob(container:String, blob:String, copyId:String, callback:StorageCallbackVoid):Void;
	function generateSharedAccessSignature(container:String, blob:String, sharedAccessPolicy:SharedAccessPolicy):SharedAccessSignatureResult;
	@:overload(function(container:String, blob:String):String { })
	@:overload(function(container:String, blob:String, sharedAccessPolicy:SharedAccessPolicy):String { })
	function getBlobUrl(container:String):String;
	@:overload(function(container:String, blob:String, blobType:String, options:UploadBlockBlobOptions, callback:StorageCallback<String>):stream.Writable { })
	function createBlob(container:String, blob:String, blobType:String, callback:StorageCallback<String>):stream.Writable;
	@:overload(function(container:String, blob:String, length:Float, options:SetBlobPropertiesOptions, callback:StorageCallbackVoid):Void { })
	function createPageBlob(container:String, blob:String, length:Float, callback:StorageCallbackVoid):Void;
	@:overload(function(container:String, blob:String, readStream:stream.Readable, rangeStart:Float, rangeEnd:Float, options:CreatePagesOptions, callback:StorageCallback<BlobResult>):Void { })
	function createBlobPagesFromStream(container:String, blob:String, readStream:stream.Readable, rangeStart:Float, rangeEnd:Float, callback:StorageCallback<BlobResult>):Void;
	@:overload(function(container:String, blob:String, text:String, rangeStart:Float, rangeEnd:Float, options:CreatePagesOptions, callback:StorageCallback<BlobResult>):Void { })
	function createBlobPagesFromText(container:String, blob:String, text:String, rangeStart:Float, rangeEnd:Float, callback:StorageCallback<BlobResult>):Void;
	@:overload(function(container:String, blob:String, options:PageRangeOptions, callback:StorageCallback<Array<PageRange>>):Void { })
	function listBlobRegions(container:String, blob:String, callback:StorageCallback<Array<PageRange>>):Void;
	@:overload(function(container:String, blob:String, rangeStart:Float, rangeEnd:Float, options:LeaseAccessConditionsOptions, callback:StorageCallbackVoid):Void { })
	function clearBlobPages(container:String, blob:String, rangeStart:Float, rangeEnd:Float, callback:StorageCallbackVoid):Void;
	@:overload(function(container:String, blob:String, size:Float, options:LeaseAccessConditionsOptions, callback:StorageCallback<BlobResult>):Void { })
	function resizePageBlob(container:String, blob:String, size:Float, callback:StorageCallback<BlobResult>):Void;
	@:overload(function(container:String, blob:String, sequenceNumberAction:String, sequenceNumber:String, options:AccessConditionsOptions, callback:StorageCallback<BlobResult>):Void { })
	function setPageBlobSequenceNumber(container:String, blob:String, sequenceNumberAction:String, sequenceNumber:String, callback:StorageCallback<BlobResult>):Void;
	@:overload(function(container:String, blob:String, localFileName:String, options:UploadBlockBlobOptions, callback:StorageCallback<BlobResult>):SpeedSummary { })
	function putBlockBlobFromFile(container:String, blob:String, localFileName:String, callback:StorageCallback<BlobResult>):SpeedSummary;
	@:overload(function(container:String, blob:String, localFileName:String, options:UploadBlockBlobOptions, callback:StorageCallback<BlobResult>):SpeedSummary { })
	function createBlockBlobFromFile(container:String, blob:String, localFileName:String, callback:StorageCallback<BlobResult>):SpeedSummary;
	@:overload(function(container:String, blob:String, stream:stream.Stream, streamLength:Float, options:UploadBlockBlobOptions, callback:StorageCallback<BlobResult>):SpeedSummary { })
	function putBlockBlobFromStream(container:String, blob:String, stream:stream.Stream, streamLength:Float, callback:StorageCallback<BlobResult>):SpeedSummary;
	@:overload(function(container:String, blob:String, stream:stream.Stream, streamLength:Float, options:UploadBlockBlobOptions, callback:StorageCallback<BlobResult>):SpeedSummary { })
	function createBlockBlobFromStream(container:String, blob:String, stream:stream.Stream, streamLength:Float, callback:StorageCallback<BlobResult>):SpeedSummary;
	@:overload(function(container:String, blob:String, text:String, options:UploadBlockBlobOptions, callback:StorageCallback<BlobResult>):SpeedSummary { })
	function createBlockBlobFromText(container:String, blob:String, text:String, callback:StorageCallback<BlobResult>):SpeedSummary;
	@:overload(function(blockId:String, container:String, blob:String, readStream:stream.Stream, streamLength:Float, options:CreateBlockOptions, callback:StorageCallbackVoid):Void { })
	function createBlobBlockFromStream(blockId:String, container:String, blob:String, readStream:stream.Stream, streamLength:Float, callback:StorageCallbackVoid):Void;
	@:overload(function(blockId:String, container:String, blob:String, text:String, options:CreateBlockOptions, callback:StorageCallbackVoid):Void { })
	function createBlobBlockFromText(blockId:String, container:String, blob:String, text:String, callback:StorageCallbackVoid):Void;
	@:overload(function(container:String, blob:String, blockList:BlockList, options:CreateBlockOptions, callback:StorageCallback<BlockList>):Void { })
	function commitBlobBlocks(container:String, blob:String, blockList:BlockList, callback:StorageCallback<BlockList>):Void;
	@:overload(function(container:String, blob:String, blockListType:String, options:GetBlobPropertiesOptions, callback:StorageCallback<BlockList>):Void { })
	function listBlobBlocks(container:String, blob:String, blockListType:String, callback:StorageCallback<BlockList>):Void;
	function generateBlockIdPrefix():String;
	function getBlockId(prefix:String, number:Float):String;
	@:overload(function(container:String, blob:String, options:LeaseOptions, callback:StorageCallback<LeaseResult>):Void { })
	function acquireLease(container:String, blob:String, callback:StorageCallback<LeaseResult>):Void;
	@:overload(function(container:String, blob:String, leaseId:String, options:AccessConditionsOptions, callback:StorageCallback<LeaseResult>):Void { })
	function renewLease(container:String, blob:String, leaseId:String, callback:StorageCallback<LeaseResult>):Void;
	@:overload(function(container:String, blob:String, leaseId:String, options:AccessConditionsOptions, callback:StorageCallback<LeaseResult>):Void { })
	function releaseLease(container:String, blob:String, leaseId:String, callback:StorageCallback<LeaseResult>):Void;
	@:overload(function(container:String, blob:String, leaseId:String, options:BreakLeaseOptions, callback:StorageCallback<LeaseResult>):Void { })
	function breakLease(container:String, blob:String, leaseId:String, callback:StorageCallback<LeaseResult>):Void;
}
extern class QueueService extends StorageServiceClient {
	var authenticationProvider : SharedKey;
	@:overload(function(connectionString:String):Void { })
	@:overload(function(storageAccount:String, storageAccessKey:String, ?host:String, ?sasToken:String):Void { })
	function new():Void;
	@:overload(function(options:TimeoutIntervalOptions, callback:StorageServicePropertiesCallback):Void { })
	function getServiceProperties(callback:StorageServicePropertiesCallback):Void;
	@:overload(function(serviceProperties:StorageServiceProperties, options:TimeoutIntervalOptions, callback:StorageCallbackVoid):Void { })
	function setServiceProperties(serviceProperties:StorageServiceProperties, callback:StorageCallbackVoid):Void;
	@:overload(function(options:ListQueuesOptions, callback:ListQueuesCallback):Void { })
	function listQueues(callback:ListQueuesCallback):Void;
	@:overload(function(queue:String, options:MetadataOptions, callback:StorageCallback<QueueResult>):Void { })
	function createQueue(queue:String, callback:StorageCallback<QueueResult>):Void;
	@:overload(function(queue:String, options:MetadataOptions, callback:StorageCallback<Bool>):Void { })
	function createQueueIfNotExists(queue:String, callback:StorageCallback<Bool>):Void;
	@:overload(function(queue:String, options:TimeoutIntervalOptions, callback:StorageCallback<Bool>):Void { })
	function deleteQueue(queue:String, callback:StorageCallback<Bool>):Void;
	@:overload(function(queue:String, options:TimeoutIntervalOptions, callback:StorageCallback<QueueResult>):Void { })
	function getQueueMetadata(queue:String, callback:StorageCallback<QueueResult>):Void;
	@:overload(function(queue:String, metadata:StorageMetadata, options:TimeoutIntervalOptions, callback:StorageCallback<QueueResult>):Void { })
	function setQueueMetadata(queue:String, metadata:StorageMetadata, callback:StorageCallback<QueueResult>):Void;
	@:overload(function(queue:String, messageText:String, options:CreateQueueMessageOptions, callback:StorageCallback<QueueMessageResult>):Void { })
	function createMessage(queue:String, messageText:String, callback:StorageCallback<QueueMessageResult>):Void;
	@:overload(function(queue:String, options:GetQueueMessagesOptions, callback:StorageCallback<Array<QueueMessageResult>>):Void { })
	function getMessages(queue:String, callback:StorageCallback<Array<QueueMessageResult>>):Void;
	@:overload(function(queue:String, options:PeekQueueMessagesOptions, callback:StorageCallback<Array<QueueMessageResult>>):Void { })
	function peekMessages(queue:String, callback:StorageCallback<Array<QueueMessageResult>>):Void;
	@:overload(function(queue:String, messageId:String, popreceipt:String, options:TimeoutIntervalOptions, callback:StorageCallback<Bool>):Void { })
	function deleteMessage(queue:String, messageId:String, popreceipt:String, callback:StorageCallback<Bool>):Void;
	@:overload(function(queue:String, options:TimeoutIntervalOptions, callback:StorageCallbackVoid):Void { })
	function clearMessages(queue:String, callback:StorageCallbackVoid):Void;
	@:overload(function(queue:String, messageId:String, popreceipt:String, visibilitytimeout:Float, options:UpdateQueueMessagesOptions, callback:StorageCallback<QueueMessageResult>):Void { })
	function updateMessage(queue:String, messageId:String, popreceipt:String, visibilitytimeout:Float, callback:StorageCallback<QueueMessageResult>):Void;
}
extern class ServiceBusService {

}
extern class SqlService {

}
extern class ServiceManagementService {

}
extern class SqlManagementService {

}
typedef RoleEnvironmentInterface = {
	>events.EventEmitter,
	var incorrectCallbackErr : String;
	var clientId : String;
	var VersionEndpointFixedPath : String;
	var EnvironmentVariables : { var VersionEndpointEnvironmentName : String; };
	function getCurrentRoleInstance(callback:SimpleCallback<RoleInstance>):Void;
	function getDeploymentId(callback:SimpleCallback<String>):Void;
	function isAvailable(callback:SimpleCallback<Bool>):Void;
	function isEmulated(callback:SimpleCallback<Bool>):Void;
	function getRoles(callback:SimpleCallback<Dictionary<Role>>):Void;
	function getConfigurationSettings(callback:SimpleCallback<Dictionary<String>>):Void;
	function getLocalResources(callback:SimpleCallback<Dictionary<RoleLocalResource>>):Void;
	function requestRecycle(callback:ErrorCallback):Void;
	function setStatus(roleInstanceStatus:String, expirationUtc:Date, callback:ErrorCallback):Void;
	function clearStatus(callback:ErrorCallback):Void;
};
extern class WebResource {
	var rawResponse : Bool;
	var queryString : Dictionary<String>;
	function new():Void;
	function get(path:String):WebResource;
	function put(path:String):WebResource;
	function post(path:String):WebResource;
	function merge(path:String):WebResource;
	function head(path:String):WebResource;
	function del(path:String):WebResource;
	function withProperty(name:String, value:String):WebResource;
	function withRawResponse(rawResponse:Bool):WebResource;
	function withHeadersOnly(headersOnly:Bool):WebResource;
	function withQueryOption(name:String, value:String, defaultValue:String):WebResource;
	function withQueryOptions(queryOptions:Dictionary<String>):WebResource;
	function withHeader(name:String, value:String):WebResource;
	function withHeaders(headers:Dictionary<String>):WebResource;
	function withBody(body:Dynamic):WebResource;
	function addOptionalMetadataHeaders(metadata:StorageMetadata):WebResource;
	function validResponse(statusCode:Float):Bool;
	function pipeInput(inputStream:stream.Stream, destStream:stream.Stream):stream.Stream;
}
extern class ServiceClient extends events.EventEmitter {
	static var EnvironmentVariables : Dynamic;
	static var DEVSTORE_STORAGE_ACCOUNT : String;
	static var DEVSTORE_STORAGE_ACCESS_KEY : String;
	static var DEVSTORE_BLOB_HOST : String;
	static var DEVSTORE_QUEUE_HOST : String;
	static var DEVSTORE_TABLE_HOST : String;
	static var CLOUD_BLOB_HOST : String;
	static var CLOUD_QUEUE_HOST : String;
	static var CLOUD_TABLE_HOST : String;
	static var CLOUD_SERVICEBUS_HOST : String;
	static var CLOUD_ACCESS_CONTROL_HOST : String;
	static var CLOUD_SERVICE_MANAGEMENT_HOST : String;
	static var CLOUD_DATABASE_HOST : String;
	static var DEFAULT_SERVICEBUS_ISSUER : String;
	static var DEFAULT_WRAP_NAMESPACE_SUFFIX : String;
	static var DEFAULT_PROTOCOL : String;
	function new(host:String, authenticationProvider:Dynamic):Void;
	function setHost(host:String):Void;
	function performRequest(webResource:WebResource, outputData:String, options:Dynamic, callback:haxe.Constraints.Function):Void;
	function performRequestOutputStream(webResource:WebResource, outputStream:Dynamic, options:Dynamic, callback:haxe.Constraints.Function):Void;
	function performRequestInputStream(webResource:WebResource, outputData:String, inputStream:Dynamic, options:Dynamic, callback:haxe.Constraints.Function):Void;
	function withFilter(newFilter:Filter):ServiceClient;
	function parseMetadataHeaders(headers:Dynamic):Dynamic;
	function isEmulated():Bool;
	function setProxy(proxyUrl:String, proxyPort:Float):Void;
}
extern class BatchServiceClient extends StorageServiceClient {
	var operations : Array<Dynamic>;
	function new(storageAccount:String, storageAccessKey:String, host:String, usePathstyleUri:Bool, authenticationProvider:Dynamic):Void;
	function beginBatch():Void;
	function isInBatch():Bool;
	function rollback():Void;
	function hasOperations():Bool;
	function addOperation(webResource:WebResource, outputData:Dynamic):Void;
	@:overload(function(options:Dynamic, callback:Dynamic -> Array<Dynamic> -> Dynamic -> Void):Void { })
	function commitBatch(callback:Dynamic -> Array<Dynamic> -> Dynamic -> Void):Void;
	function processResponse(responseObject:Dynamic, requestOperations:Array<Dynamic>):Array<Dynamic>;
	function processOperation(webResource:WebResource, rawResponse:String):Dynamic;
}
extern class ServiceManagementClient {

}
extern class TableQuery {
	static function select(fields:haxe.extern.Rest<String>):TableQuery;
	function from(table:String):TableQuery;
	function whereKeys(partitionKey:String, rowKey:String):TableQuery;
	function whereNextKeys(partitionKey:String, rowKey:String):TableQuery;
	function where(condition:String, values:haxe.extern.Rest<String>):TableQuery;
	function and(condition:String, args:haxe.extern.Rest<String>):TableQuery;
	function or(condition:String, args:haxe.extern.Rest<String>):TableQuery;
	function top(integer:Float):TableQuery;
	function toQueryObject():Dynamic;
	function toPath():String;
}
extern class BlobResult {
	var blob : String;
	var container : String;
	var etag : String;
	var lastModified : String;
	var contentType : String;
	var contentEncoding : String;
	var contentLanguage : String;
	var contentMD5 : String;
	var cacheControl : String;
	var contentRange : String;
	var contentTypeHeader : String;
	var contentEncodingHeader : String;
	var contentLanguageHeader : String;
	var contentMD5Header : String;
	var cacheControlHeader : String;
	var contentLength : Float;
	var contentLengthHeader : Float;
	var contentDisposition : String;
	var contentDispositionHeader : String;
	var range : String;
	var rangeHeader : String;
	var getContentMd5 : String;
	var acceptRanges : String;
	var blobType : String;
	var leaseStatus : String;
	var leaseId : String;
	var leaseDuration : String;
	var leaseState : String;
	var sequenceNumber : String;
	var copyStatus : String;
	var copyCompletionTime : String;
	var copyStatusDescription : String;
	var copyId : String;
	var copyProgress : Float;
	var requestId : String;
	var metadata : StorageMetadata;
	@:overload(function(container:String):Void { })
	@:overload(function(container:String, blob:String):Void { })
	function new():Void;
	static function parse(blobXml:Dynamic):BlobResult;
	static function setHeadersFromBlob(webResource:WebResource, blob:BlobResult):Void;
	function getPropertiesFromHeaders(headers:Dynamic):Void;
}
extern class ContainerResult {
	var name : String;
	var publicAccessLevel : String;
	var etag : String;
	var lastModified : String;
	var leaseStatus : String;
	var leaseDuration : String;
	var leaseState : String;
	var requestId : String;
	var metadata : StorageMetadata;
	var signedIdentifiers : Array<SignedIdentifier>;
	@:overload(function(name:String):Void { })
	@:overload(function(name:String, publicAccessLevel:String):Void { })
	function new():Void;
	static function parse(containerXml:Dynamic):ContainerResult;
	function getPropertiesFromHeaders(headers:Dynamic):Void;
}
extern class LeaseResult {
	var container : String;
	var blob : String;
	var id : String;
	var time : String;
	var etag : String;
	var lastModified : String;
	@:overload(function(container:String):Void { })
	@:overload(function(container:String, blob:String):Void { })
	@:overload(function(container:String, blob:String, id:String):Void { })
	@:overload(function(container:String, blob:String, id:String, time:String):Void { })
	function new():Void;
	function getPropertiesFromHeaders(header:Dynamic):Void;
}
extern class QueueResult {
	var name : String;
	var metadata : StorageMetadata;
	var approximatemessagecount : Float;
	@:overload(function(name:String):Void { })
	@:overload(function(name:String, metadata:StorageMetadata):Void { })
	function new():Void;
	static function parse(messageXml:Dynamic):QueueResult;
	function getPropertiesFromHeaders(headers:Dynamic):Void;
}
extern class QueueMessageResult {
	var queue : String;
	var insertiontime : String;
	var expirationtime : String;
	var timenextvisible : String;
	var messagetext : String;
	var dequeuecount : String;
	var messageid : String;
	var popreceipt : String;
	var metadata : StorageMetadata;
	@:overload(function(queue:String):Void { })
	@:overload(function(queue:String, messageid:String):Void { })
	@:overload(function(queue:String, messageid:String, popreceipt:String):Void { })
	@:overload(function(queue:String, messageid:String, popreceipt:String, metadata:StorageMetadata):Void { })
	function new():Void;
	static function serialize(messageJs:String):String;
	static function parse(messageXml:Dynamic):QueueMessageResult;
	function getPropertiesFromHeaders(headers:Dynamic):Void;
}
extern class SpeedSummary {
	var name : String;
	var totalSize : Float;
	var completeSize : Float;
	var _startTime : Date;
	var _timeWindowInSeconds : Float;
	var _timeWindow : Float;
	var _totalWindowSize : Float;
	var _speedTracks : Array<Float>;
	var _speedTrackPtr : Float;
	function new(name:String):Void;
	@:overload(function(humanReadable:Bool):Float { })
	function getElapsedSeconds():String;
	@:overload(function(len:Float):Float { })
	function getCompletePercent():Float;
	@:overload(function(humanReadable:Bool):Float { })
	function getAverageSpeed():String;
	@:overload(function(humanReadable:Bool):Float { })
	@:overload(function(size:Float):Error -> Dynamic -> Void { })
	function getSpeed():String;
	@:overload(function(humanReadable:Bool):Float { })
	function getTotalSize():String;
	@:overload(function(humanReadable:Bool):Float { })
	function getCompleteSize():String;
}
extern class AzureTopLevel {
	static function createTableService():TableService;
	static function createTableService(connectionString:String):TableService;
	static function createTableService(storageAccount:String, storageAccessKey:String, ?host:String, ?authenticationProvider:String):TableService;
	static function createBlobService():BlobService;
	static function createBlobService(connectionString:String):BlobService;
	static function createBlobService(storageAccount:String, storageAccessKey:String, ?host:String, ?authenticationProvider:String):BlobService;
	static function createQueueService():QueueService;
	static function createQueueService(connectionString:String):QueueService;
	static function createQueueService(storageAccount:String, storageAccessKey:String, ?host:String, ?authenticationProvider:String):QueueService;
	static function createServiceBusService():ServiceBusService;
	static function createServiceBusService(connectionString:String):ServiceBusService;
	static function createServiceBusService(namespace:String, ?accessKey:String, ?issuer:String, ?acsNamespace:String, ?host:String, ?authenticationProvider:String):ServiceBusService;
	static function createSqlService(serverName:String, administratorLogin:String, administratorLoginPassword:String, ?host:String, ?acsHost:String, ?authenticationProvider:String):SqlService;
	static function createServiceManagementService(subscriptionId:String, authentication:String, hostOptions:String):ServiceManagementService;
	static function createSqlManagementService(subscriptionId:String, authentication:String, hostOptions:String):SqlManagementService;
	static var RoleEnvironment : RoleEnvironmentInterface;
}
extern class AzureTopLevel {
	static function createTableService():TableService;
	static function createTableService(connectionString:String):TableService;
	static function createTableService(storageAccount:String, storageAccessKey:String, ?host:String, ?authenticationProvider:String):TableService;
	static function createBlobService():BlobService;
	static function createBlobService(connectionString:String):BlobService;
	static function createBlobService(storageAccount:String, storageAccessKey:String, ?host:String, ?authenticationProvider:String):BlobService;
	static function createQueueService():QueueService;
	static function createQueueService(connectionString:String):QueueService;
	static function createQueueService(storageAccount:String, storageAccessKey:String, ?host:String, ?authenticationProvider:String):QueueService;
	static function createServiceBusService():ServiceBusService;
	static function createServiceBusService(connectionString:String):ServiceBusService;
	static function createServiceBusService(namespace:String, ?accessKey:String, ?issuer:String, ?acsNamespace:String, ?host:String, ?authenticationProvider:String):ServiceBusService;
	static function createSqlService(serverName:String, administratorLogin:String, administratorLoginPassword:String, ?host:String, ?acsHost:String, ?authenticationProvider:String):SqlService;
	static function createServiceManagementService(subscriptionId:String, authentication:String, hostOptions:String):ServiceManagementService;
	static function createSqlManagementService(subscriptionId:String, authentication:String, hostOptions:String):SqlManagementService;
	static var RoleEnvironment : RoleEnvironmentInterface;
}
