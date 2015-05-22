@:enum abstract DataPointType(Int) {
	var Measurement = 0;
	var Aggregation = 1;
}
@:enum abstract DependencyKind(Int) {
	var SQL = 0;
	var Http = 1;
	var Other = 2;
}
@:enum abstract DependencySourceType(Int) {
	var Undefined = 0;
	var Aic = 1;
	var Apmc = 2;
}
@:enum abstract SessionState(Int) {
	var Start = 0;
	var End = 1;
}
@:enum abstract SeverityLevel(Int) {
	var Verbose = 0;
	var Information = 1;
	var Warning = 2;
	var Error = 3;
	var Critical = 4;
}
typedef ContextTagKeys = {
	var applicationVersion : String;
	var applicationBuild : String;
	var deviceId : String;
	var deviceIp : String;
	var deviceLanguage : String;
	var deviceLocale : String;
	var deviceModel : String;
	var deviceNetwork : String;
	var deviceOEMName : String;
	var deviceOS : String;
	var deviceOSVersion : String;
	var deviceRoleInstance : String;
	var deviceRoleName : String;
	var deviceScreenResolution : String;
	var deviceType : String;
	var deviceMachineName : String;
	var locationIp : String;
	var operationId : String;
	var operationName : String;
	var operationParentId : String;
	var operationRootId : String;
	var operationSyntheticSource : String;
	var operationIsSynthetic : String;
	var sessionId : String;
	var sessionIsFirst : String;
	var sessionIsNew : String;
	var userAccountAcquisitionDate : String;
	var userAccountId : String;
	var userAgent : String;
	var userId : String;
	var userStoreRegion : String;
	var sampleRate : String;
	var internalSdkVersion : String;
	var internalAgentVersion : String;
};
typedef Domain = {
	var ver : Float;
	var properties : Dynamic;
};
typedef Data<TDomain:(ContractsModule.Domain)> = {
	var baseType : String;
	var baseData : TDomain;
};
typedef Envelope = {
	var ver : Float;
	var name : String;
	var time : String;
	var sampleRate : Float;
	var seq : String;
	var iKey : String;
	var flags : Float;
	var deviceId : String;
	var os : String;
	var osVer : String;
	var appId : String;
	var appVer : String;
	var userId : String;
	var tags : { };
	var data : Data<Domain>;
};
typedef EventData = {
	>ContractsModule.Domain,
	var ver : Float;
	var name : String;
	var properties : Dynamic;
	var measurements : Dynamic;
};
typedef MessageData = {
	>ContractsModule.Domain,
	var ver : Float;
	var message : String;
	var severityLevel : ContractsModule.SeverityLevel;
	var properties : Dynamic;
};
typedef ExceptionData = {
	>ContractsModule.Domain,
	var ver : Float;
	var handledAt : String;
	var exceptions : Array<ExceptionDetails>;
	var severityLevel : ContractsModule.SeverityLevel;
	var problemId : String;
	var crashThreadId : Float;
	var properties : Dynamic;
	var measurements : Dynamic;
};
typedef StackFrame = {
	var level : Float;
	var method : String;
	var assembly : String;
	var fileName : String;
	var line : Float;
};
typedef ExceptionDetails = {
	var id : Float;
	var outerId : Float;
	var typeName : String;
	var message : String;
	var hasFullStack : Bool;
	var stack : String;
	var parsedStack : Array<StackFrame>;
};
typedef DataPoint = {
	var name : String;
	var kind : ContractsModule.DataPointType;
	var value : Float;
	var count : Float;
	var min : Float;
	var max : Float;
	var stdDev : Float;
};
typedef MetricData = {
	>ContractsModule.Domain,
	var ver : Float;
	var metrics : Array<DataPoint>;
	var properties : Dynamic;
};
typedef PageViewData = {
	>ContractsModule.EventData,
	var ver : Float;
	var url : String;
	var name : String;
	var duration : String;
	var properties : Dynamic;
	var measurements : Dynamic;
};
typedef PageViewPerfData = {
	>ContractsModule.PageViewData,
	var ver : Float;
	var url : String;
	var perfTotal : String;
	var name : String;
	var duration : String;
	var networkConnect : String;
	var sentRequest : String;
	var receivedResponse : String;
	var domProcessing : String;
	var properties : Dynamic;
	var measurements : Dynamic;
};
typedef RemoteDependencyData = {
	>ContractsModule.Domain,
	var ver : Float;
	var name : String;
	var kind : ContractsModule.DataPointType;
	var value : Float;
	var count : Float;
	var min : Float;
	var max : Float;
	var stdDev : Float;
	var dependencyKind : ContractsModule.DependencyKind;
	var success : Bool;
	var async : Bool;
	var dependencySource : ContractsModule.DependencySourceType;
	var commandName : String;
	var dependencyTypeName : String;
	var properties : Dynamic;
};
typedef AjaxCallData = {
	>ContractsModule.PageViewData,
	var ver : Float;
	var url : String;
	var ajaxUrl : String;
	var name : String;
	var duration : String;
	var requestSize : Float;
	var responseSize : Float;
	var timeToFirstByte : String;
	var timeToLastByte : String;
	var callbackDuration : String;
	var responseCode : String;
	var success : Bool;
	var properties : Dynamic;
	var measurements : Dynamic;
};
typedef RequestData = {
	>ContractsModule.Domain,
	var ver : Float;
	var id : String;
	var name : String;
	var startTime : String;
	var duration : String;
	var responseCode : String;
	var success : Bool;
	var httpMethod : String;
	var url : String;
	var properties : Dynamic;
	var measurements : Dynamic;
};
typedef SessionStateData = {
	>ContractsModule.Domain,
	var ver : Float;
	var state : ContractsModule.SessionState;
};
typedef PerformanceCounterData = {
	>ContractsModule.Domain,
	var ver : Float;
	var categoryName : String;
	var counterName : String;
	var instanceName : String;
	var kind : DataPointType;
	var count : Float;
	var min : Float;
	var max : Float;
	var stdDev : Float;
	var value : Float;
	var properties : Dynamic;
};
typedef Channel = {
	function new(isDisabled:Void -> Bool, getBatchSize:Void -> Float, getBatchIntervalMs:Void -> Float, sender:Sender):Void;
	function send(envelope:ContractsModule.Envelope):Void;
	function handleCrash(envelope:ContractsModule.Envelope):Void;
	function triggerSend(?isNodeCrashing:Bool):Void;
};
typedef Client = {
	var config : Config;
	var context : Context;
	var commonProperties : { };
	var channel : Channel;
	function new(?iKey:String):Void;
	function trackEvent(name:String, ?properties:{ }, ?measurements:{ }):Void;
	function trackTrace(message:String, ?severityLevel:ContractsModule.SeverityLevel, ?properties:{ }):Void;
	function trackException(exception:Error, ?properties:{ }):Void;
	function trackMetric(name:String, value:Float):Void;
	function trackRequest(request:Dynamic, response:Dynamic, ?properties:{ }):Void;
	function sendPendingData():Void;
	function getEnvelope(data:ContractsModule.Data<ContractsModule.Domain>, ?tagOverrides:{ }):ContractsModule.Envelope;
	function track(data:ContractsModule.Data<ContractsModule.Domain>, ?tagOverrides:{ }):Void;
};
typedef Config = {
	var instrumentationKey : String;
	var sessionRenewalMs : Float;
	var sessionExpirationMs : Float;
	var endpointUrl : String;
	var maxBatchSize : Float;
	var maxBatchIntervalMs : Float;
	var disableAppInsights : Bool;
	function new(?instrumentationKey:String):Void;
};
typedef Context = {
	var keys : ContractsModule.ContextTagKeys;
	var tags : { };
	function new(?packageJsonPath:String):Void;
};
typedef Sender = {
	function new(getUrl:Void -> String, ?onSuccess:String -> Void, ?onError:Error -> Void):Void;
	function send(payload:Dynamic):Void;
	function saveOnCrash(payload:String):Void;
	function enableCacheOnError():Void;
	function disableCacheOnError():Void;
};
extern class ApplicationInsights {
	static var client : Client;
	static var _isConsole : Dynamic;
	static var _isExceptions : Dynamic;
	static var _isPerformance : Dynamic;
	static var _isRequests : Dynamic;
	static var _console : Dynamic;
	static var _exceptions : Dynamic;
	static var _performance : Dynamic;
	static var _requests : Dynamic;
	static var _isStarted : Dynamic;
	static function setup(?instrumentationKey:String):Dynamic;
	static function start():Dynamic;
	static function setAutoCollectConsole(value:Bool):Dynamic;
	static function setAutoCollectExceptions(value:Bool):Dynamic;
	static function setAutoCollectPerformance(value:Bool):Dynamic;
	static function setAutoCollectRequests(value:Bool):Dynamic;
	static function enableVerboseLogging():Dynamic;
}
