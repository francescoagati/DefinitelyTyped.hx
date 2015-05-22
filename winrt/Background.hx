@:enum abstract BackgroundAccessStatus(Int) {
	var unspecified = 0;
	var allowedWithAlwaysOnRealTimeConnectivity = 1;
	var allowedMayUseActiveRealTimeConnectivity = 2;
	var denied = 3;
}
typedef IBackgroundExecutionManagerStatics = {
	@:overload(function(applicationId:String):Windows.Foundation.IAsyncOperation<Windows.ApplicationModel.Background.BackgroundAccessStatus> { })
	function requestAccessAsync():Windows.Foundation.IAsyncOperation<Windows.ApplicationModel.Background.BackgroundAccessStatus>;
	@:overload(function(applicationId:String):Void { })
	function removeAccess():Void;
	@:overload(function(applicationId:String):Windows.ApplicationModel.Background.BackgroundAccessStatus { })
	function getAccessStatus():Windows.ApplicationModel.Background.BackgroundAccessStatus;
};
extern class BackgroundExecutionManager {
	@:overload(function(applicationId:String):Windows.Foundation.IAsyncOperation<Windows.ApplicationModel.Background.BackgroundAccessStatus> { })
	static function requestAccessAsync():Windows.Foundation.IAsyncOperation<Windows.ApplicationModel.Background.BackgroundAccessStatus>;
	@:overload(function(applicationId:String):Void { })
	static function removeAccess():Void;
	@:overload(function(applicationId:String):Windows.ApplicationModel.Background.BackgroundAccessStatus { })
	static function getAccessStatus():Windows.ApplicationModel.Background.BackgroundAccessStatus;
}
@:enum abstract BackgroundTaskCancellationReason(Int) {
	var abort = 0;
	var terminating = 1;
	var loggingOff = 2;
	var servicingUpdate = 3;
}
typedef BackgroundTaskCanceledEventHandler = { };
typedef IBackgroundTaskInstance = {
	var instanceId : String;
	var progress : Float;
	var suspendedCount : Float;
	var task : Windows.ApplicationModel.Background.BackgroundTaskRegistration;
	var triggerDetails : Dynamic;
	var oncanceled : Dynamic;
	function getDeferral():Windows.ApplicationModel.Background.BackgroundTaskDeferral;
};
extern class BackgroundTaskRegistration {
	var name : String;
	var taskId : String;
	var onprogress : Dynamic;
	var oncompleted : Dynamic;
	function unregister(cancelTask:Bool):Void;
	static var allTasks : Windows.Foundation.Collections.IMapView<String, Windows.ApplicationModel.Background.IBackgroundTaskRegistration>;
}
extern class BackgroundTaskDeferral {
	function complete():Void;
}
typedef BackgroundTaskProgressEventHandler = { };
extern class BackgroundTaskProgressEventArgs {
	var instanceId : String;
	var progress : Float;
}
typedef BackgroundTaskCompletedEventHandler = { };
extern class BackgroundTaskCompletedEventArgs {
	var instanceId : String;
	function checkResult():Void;
}
typedef IBackgroundTaskDeferral = {
	function complete():Void;
};
typedef IBackgroundTask = {
	function run(taskInstance:Windows.ApplicationModel.Background.IBackgroundTaskInstance):Void;
};
typedef IBackgroundTaskRegistration = {
	var name : String;
	var taskId : String;
	var onprogress : Dynamic;
	var oncompleted : Dynamic;
	function unregister(cancelTask:Bool):Void;
};
typedef IBackgroundTaskRegistrationStatics = {
	var allTasks : Windows.Foundation.Collections.IMapView<String, Windows.ApplicationModel.Background.IBackgroundTaskRegistration>;
};
typedef IBackgroundTaskBuilder = {
	var name : String;
	var taskEntryPoint : String;
	function setTrigger(trigger:Windows.ApplicationModel.Background.IBackgroundTrigger):Void;
	function addCondition(condition:Windows.ApplicationModel.Background.IBackgroundCondition):Void;
	function register():Windows.ApplicationModel.Background.BackgroundTaskRegistration;
};
typedef IBackgroundTrigger = { };
typedef IBackgroundCondition = { };
typedef IBackgroundTaskCompletedEventArgs = {
	var instanceId : String;
	function checkResult():Void;
};
typedef IBackgroundTaskProgressEventArgs = {
	var instanceId : String;
	var progress : Float;
};
extern class BackgroundTaskBuilder {
	var name : String;
	var taskEntryPoint : String;
	function setTrigger(trigger:Windows.ApplicationModel.Background.IBackgroundTrigger):Void;
	function addCondition(condition:Windows.ApplicationModel.Background.IBackgroundCondition):Void;
	function register():Windows.ApplicationModel.Background.BackgroundTaskRegistration;
}
@:enum abstract SystemTriggerType(Int) {
	var invalid = 0;
	var smsReceived = 1;
	var userPresent = 2;
	var userAway = 3;
	var networkStateChange = 4;
	var controlChannelReset = 5;
	var internetAvailable = 6;
	var sessionConnected = 7;
	var servicingComplete = 8;
	var lockScreenApplicationAdded = 9;
	var lockScreenApplicationRemoved = 10;
	var timeZoneChange = 11;
	var onlineIdConnectedStateChange = 12;
}
@:enum abstract SystemConditionType(Int) {
	var invalid = 0;
	var userPresent = 1;
	var userNotPresent = 2;
	var internetAvailable = 3;
	var internetNotAvailable = 4;
	var sessionConnected = 5;
	var sessionDisconnected = 6;
}
typedef ISystemTrigger = {
	>Windows.ApplicationModel.Background.IBackgroundTrigger,
	var oneShot : Bool;
	var triggerType : Windows.ApplicationModel.Background.SystemTriggerType;
};
typedef ISystemTriggerFactory = {
	function create(triggerType:Windows.ApplicationModel.Background.SystemTriggerType, oneShot:Bool):Windows.ApplicationModel.Background.SystemTrigger;
};
extern class SystemTrigger {
	function new(triggerType:Windows.ApplicationModel.Background.SystemTriggerType, oneShot:Bool):Void;
	var oneShot : Bool;
	var triggerType : Windows.ApplicationModel.Background.SystemTriggerType;
}
typedef ISystemCondition = {
	>Windows.ApplicationModel.Background.IBackgroundCondition,
	var conditionType : Windows.ApplicationModel.Background.SystemConditionType;
};
typedef ISystemConditionFactory = {
	function create(conditionType:Windows.ApplicationModel.Background.SystemConditionType):Windows.ApplicationModel.Background.SystemCondition;
};
extern class SystemCondition {
	function new(conditionType:Windows.ApplicationModel.Background.SystemConditionType):Void;
	var conditionType : Windows.ApplicationModel.Background.SystemConditionType;
}
typedef INetworkOperatorNotificationTrigger = {
	>Windows.ApplicationModel.Background.IBackgroundTrigger,
	var networkAccountId : String;
};
typedef INetworkOperatorNotificationTriggerFactory = {
	function create(networkAccountId:String):Windows.ApplicationModel.Background.NetworkOperatorNotificationTrigger;
};
extern class NetworkOperatorNotificationTrigger {
	function new(networkAccountId:String):Void;
	var networkAccountId : String;
}
typedef ITimeTrigger = {
	>Windows.ApplicationModel.Background.IBackgroundTrigger,
	var freshnessTime : Float;
	var oneShot : Bool;
};
typedef ITimeTriggerFactory = {
	function create(freshnessTime:Float, oneShot:Bool):Windows.ApplicationModel.Background.TimeTrigger;
};
extern class TimeTrigger {
	function new(freshnessTime:Float, oneShot:Bool):Void;
	var freshnessTime : Float;
	var oneShot : Bool;
}
typedef IMaintenanceTrigger = {
	>Windows.ApplicationModel.Background.IBackgroundTrigger,
	var freshnessTime : Float;
	var oneShot : Bool;
};
typedef IMaintenanceTriggerFactory = {
	function create(freshnessTime:Float, oneShot:Bool):Windows.ApplicationModel.Background.MaintenanceTrigger;
};
extern class MaintenanceTrigger {
	function new(freshnessTime:Float, oneShot:Bool):Void;
	var freshnessTime : Float;
	var oneShot : Bool;
}
typedef INetworkOperatorHotspotAuthenticationTrigger = {
	>Windows.ApplicationModel.Background.IBackgroundTrigger,
};
extern class NetworkOperatorHotspotAuthenticationTrigger {

}
typedef IPushNotificationTriggerFactory = {
	function create(applicationId:String):Windows.ApplicationModel.Background.PushNotificationTrigger;
};
extern class PushNotificationTrigger {
	@:overload(function():Void { })
	function new(applicationId:String):Void;
}
