extern class DateTopLevel {
	static function daysFromNow(days:Float):Date;
	static function hoursFromNow(hours:Float):Date;
	static function minutesFromNow(minutes:Float):Date;
	static function secondsFromNow(seconds:Float):Date;
	static function isEmulated():Bool;
}
typedef WebResponse = {
	var isSuccessful : Bool;
	var statusCode : Float;
	var body : { var entry : { var id : String; var title : Dynamic; var updated : String; var author : { var name : Dynamic; }; var link : Dynamic; var category : Dynamic; var content : Dynamic; }; };
	var headers : Dynamic;
	var md5 : Dynamic;
};
typedef SimpleCallback<T> = { };
typedef ErrorCallback = { };
typedef StorageCallbackVoid = { };
typedef StorageCallback<T> = { };
typedef StorageServiceStatsCallback = {
	>StorageCallback<StorageServiceStats>,
};
typedef StorageServicePropertiesCallback = {
	>StorageCallback<StorageServiceProperties>,
};
typedef TimeoutIntervalOptions = {
	@:optional
	var locationMode : String;
	@:optional
	var timeoutIntervalInMs : Float;
	@:optional
	var maximumExecutionTimeInMs : Float;
};
typedef MetadataOptions = {
	>TimeoutIntervalOptions,
	@:optional
	var metadata : StorageMetadata;
};
typedef StorageAclOptions = {
	>TimeoutIntervalOptions,
	@:optional
	var leaseId : String;
	var signedIdentifiers : Array<SignedIdentifier>;
};
typedef Dictionary<T> = { };
typedef StorageServiceProperties = {
	var Logging : { var Version : Float; var Delete : Bool; var Read : Bool; var Write : Bool; var RetentionPolicy : { var Enabled : Bool; var Days : Float; }; };
	var Metrics : { var Version : Float; var Enabled : Bool; var IncludeAPIs : Bool; var RetentionPolicy : { var Enabled : Bool; var Days : Float; }; };
	var DefaultServiceVersion : String;
};
typedef StorageServiceStats = {
	var GeoReplication : { var Status : String; var LastSyncTime : Date; };
};
typedef SignedIdentifier = {
	var Id : String;
	var AccessPolicy : SharedAccessPolicy;
};
typedef StorageMetadata = { };
typedef ContinuationToken = {
	var nextMarker : String;
	var targetLocation : String;
};
typedef SharedAccessPolicy = {
	@:optional
	var Id : String;
	var AccessPolicy : { @:optional
	var Start : Date; var Expiry : Date; @:optional
	var Permission : String; };
};
typedef TableRequestCallback = { };
typedef CreateTableIfNotExistsCallback = { };
typedef DeleteTableCallback = { };
typedef QueryTablesCallback = { };
typedef QueryResultContinuation = {
	var tableService : TableService;
};
typedef QueryTablesOptions = {
	>TimeoutIntervalOptions,
	@:optional
	var nextTableName : String;
};
typedef TableResult = {
	var TableName : String;
};
typedef QueryEntityCallback = { };
typedef QueryEntitiesCallback = { };
typedef QueryEntitiesResultContinuation = {
	>QueryResultContinuation,
	var tableQuery : TableQuery;
	var nextPartitionKey : String;
	var nextRowKey : String;
	function getNextPage(?callback:QueryEntitiesCallback):Void;
	function hasNextPage():Bool;
};
typedef ModifyEntityCallback = { };
typedef DeleteEntityCallback = { };
typedef UpdateEntityOptions = {
	>TimeoutIntervalOptions,
	@:optional
	var checkEtag : Bool;
};
typedef Entity = {
	var PartitionKey : String;
	var RowKey : String;
	@:optional
	var Timestamp : Date;
	@:optional
	var etag : String;
};
typedef LeaseIdOptions = {
	>TimeoutIntervalOptions,
	@:optional
	var leaseId : String;
};
typedef AccessConditionsOptions = {
	>TimeoutIntervalOptions,
	@:optional
	var accessConditions : StorageAccessCondition;
};
typedef LeaseAccessConditionsOptions = {
	>LeaseIdOptions,
	@:optional
	var accessConditions : StorageAccessCondition;
};
typedef ListContainersOptions = {
	>TimeoutIntervalOptions,
	@:optional
	var prefix : String;
	@:optional
	var maxresults : Float;
	var marker : String;
	@:optional
	var include : String;
};
typedef ListContainersCallback = { };
typedef CreateContainerOptions = {
	>TimeoutIntervalOptions,
	@:optional
	var metadata : StorageMetadata;
	@:optional
	var publicAccessLevel : String;
};
typedef GetContainerPropertiesOptions = {
	>TimeoutIntervalOptions,
	@:optional
	var leaseId : String;
};
typedef GetContainerMetadataOptions = {
	>GetContainerPropertiesOptions,
	@:optional
	var accessConditions : StorageAccessCondition;
};
typedef ListBlobsOptions = {
	>ListContainersOptions,
	@:optional
	var prefix : String;
	@:optional
	var delimiter : String;
};
typedef ListBlobsCallback = { };
typedef GetBlobPropertiesOptions = {
	>LeaseAccessConditionsOptions,
	@:optional
	var snapshotId : String;
};
typedef SetBlobPropertiesOptions = {
	>LeaseAccessConditionsOptions,
	@:optional
	var contentType : String;
	@:optional
	var contentEncoding : String;
	@:optional
	var contentLanguage : String;
	@:optional
	var contentMD5 : String;
	@:optional
	var cacheControl : String;
	@:optional
	var contentDisposition : String;
};
typedef ReadBlobOptions = {
	>GetBlobPropertiesOptions,
	@:optional
	var rangeStart : String;
	@:optional
	var rangeEnd : String;
	@:optional
	var useTransactionalMD5 : Bool;
	@:optional
	var disableContentMD5Validation : Bool;
};
typedef GetBlobToTextCallback = { };
typedef DeleteBlobOptions = {
	>GetBlobPropertiesOptions,
	@:optional
	var deleteSnapshots : String;
};
typedef BlobSnapshotOptions = {
	>GetBlobPropertiesOptions,
	@:optional
	var metadata : StorageMetadata;
};
typedef CopyBlobOptions = {
	>BlobSnapshotOptions,
	@:optional
	var sourceLeaseId : String;
	var sourceAccessConditions : StorageAccessCondition;
};
typedef UploadBlobOptions = {
	>SetBlobPropertiesOptions,
	@:optional
	var metadata : StorageMetadata;
	@:optional
	var speedSummary : SpeedSummary;
	@:optional
	var parallelOperationThreadCount : Float;
	@:optional
	var storeBlobContentMD5 : Bool;
	@:optional
	var useTransactionalMD5 : Bool;
};
typedef CreatePagesOptions = {
	>LeaseAccessConditionsOptions,
	@:optional
	var contentMD5 : String;
	@:optional
	var useTransactionalMD5 : Bool;
};
typedef PageRangeOptions = {
	>LeaseIdOptions,
	@:optional
	var snapshotId : String;
	@:optional
	var rangeStart : Float;
	@:optional
	var rangeEnd : Float;
};
typedef UploadBlockBlobOptions = {
	>UploadBlobOptions,
	@:optional
	var blockIdPrefix : String;
};
typedef CreateBlockOptions = {
	>LeaseAccessConditionsOptions,
	@:optional
	var contentMD5 : String;
	@:optional
	var useTransactionalMD5 : Bool;
};
typedef LeaseOptions = {
	>AccessConditionsOptions,
	@:optional
	var leaseDuration : String;
	@:optional
	var proposedLeaseId : String;
};
typedef BreakLeaseOptions = {
	>AccessConditionsOptions,
	@:optional
	var leaseBreakPeriod : Float;
};
typedef SharedAccessSignatureResult = {
	var baseUrl : String;
	var path : String;
	var queryString : { var se : String; var sp : String; var sr : String; var sv : String; var sig : String; };
	var url : Void -> String;
};
typedef BlobHeaders = {
	@:optional
	var cacheControl : String;
	@:optional
	var contentType : String;
	@:optional
	var contentEncoding : String;
	@:optional
	var contentLanguage : String;
	@:optional
	var contentDisposition : String;
};
typedef PageRange = {
	var start : Float;
	var end : Float;
};
typedef BlockList = {
	var LatestBlocks : Array<String>;
	var CommittedBlocks : Array<String>;
	var UncommittedBlocks : Array<String>;
};
typedef StorageAccessCondition = {
	var If-Modified-Since : Date;
	var If-Unmodified-Since : Date;
	var If-Match : String;
	var If-None-Match : String;
};
typedef ListQueuesOptions = {
	>TimeoutIntervalOptions,
	@:optional
	var prefix : String;
	@:optional
	var maxresults : Float;
	var marker : String;
	@:optional
	var include : String;
};
typedef ListQueuesCallback = { };
typedef CreateQueueMessageOptions = {
	>TimeoutIntervalOptions,
	@:optional
	var messagettl : Float;
	@:optional
	var visibilitytimeout : Float;
};
typedef PeekQueueMessagesOptions = {
	>TimeoutIntervalOptions,
	@:optional
	var numofmessages : Float;
};
typedef GetQueueMessagesOptions = {
	>PeekQueueMessagesOptions,
	@:optional
	var peekonly : Bool;
	@:optional
	var visibilitytimeout : Float;
};
typedef UpdateQueueMessagesOptions = {
	>TimeoutIntervalOptions,
	@:optional
	var messagetext : String;
};
typedef Role = {
	var name : String;
	var instances : { };
};
typedef RoleInstance = {
	var id : String;
	var faultDomain : String;
	var updateDomain : String;
	var endpoints : { };
};
typedef RoleInstanceEndpoint = {
	var protocol : String;
	var address : String;
	var port : Float;
};
typedef RoleLocalResource = {
	var name : String;
	var path : String;
	var maximumSizeInMegabytes : Float;
};
typedef ConnectionStringParseOptions = {
	var skipLowerCase : Bool;
};
typedef ClusterCreationOptions = {
	var name : String;
	var location : String;
	var defaultStorageAccountName : String;
	var defaultStorageAccountKey : String;
	var defaultStorageContainer : String;
	var user : String;
	var password : String;
	var nodes : Float;
	@:optional
	var additionalStorageAccounts : Array<{ var name : String; var key : String; }>;
	@:optional
	var oozieMetastore : { var server : String; var database : String; var user : String; var password : String; };
	@:optional
	var hiveMetastore : { var server : String; var database : String; var user : String; var password : String; };
};
typedef Requirement = {
	var SettingName : String;
	var SettingPredicate : haxe.Constraints.Function;
};
typedef ValidatorFunction = { };
extern class StorageServiceClient extends ServiceClient {
	static var incorrectStorageAccountErr : String;
	static var incorrectStorageAccessKeyErr : String;
	@:overload(function(?storageAccount:String, ?storageAccessKey:String, ?host:String):StorageServiceSettings { })
	static function getStorageSettings(connectionString:String):StorageServiceSettings;
	var apiVersion : String;
	var usePathStyleUri : String;
	function new(storageAccount:String, storageAccessKey:String, host:String, usePathStyleUri:Bool, authenticationProvider:Dynamic):Void;
}
