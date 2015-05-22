@:enum abstract WorkflowStatus(Int) {
	var notStarted = 0;
	var started = 1;
	var suspended = 2;
	var canceling = 3;
	var canceled = 4;
	var terminated = 5;
	var completed = 6;
	var notSpecified = 7;
	var invalid = 8;
}
extern class InteropService extends SP.ClientObject {
	function new(context:SP.ClientRuntimeContext, objectPath:SP.ObjectPathStaticProperty):Void;
	static function getCurrent(context:SP.ClientRuntimeContext):InteropService;
	function enableEvents(listId:Dynamic, itemGuid:Dynamic):Void;
	function disableEvents(listId:Dynamic, itemGuid:Dynamic):Void;
	function startWorkflow(associationName:Dynamic, correlationId:Dynamic, listId:Dynamic, itemGuid:Dynamic, workflowParameters:Dynamic):SP.GuidResult;
	function cancelWorkflow(instanceId:Dynamic):Void;
}
extern class WorkflowDefinition extends SP.ClientObject {
	function new(context:SP.ClientRuntimeContext):Void;
	function get_associationUrl():String;
	function set_associationUrl(value:String):String;
	function get_description():String;
	function set_description(value:String):String;
	function get_displayName():String;
	function set_displayName(value:String):String;
	function get_draftVersion():String;
	function set_draftVersion(value:String):String;
	function get_formField():String;
	function set_formField(value:String):String;
	function get_id():String;
	function set_id(value:String):String;
	function get_initiationUrl():String;
	function set_initiationUrl(value:String):String;
	function get_properties():{ };
	function get_published():Bool;
	function get_requiresAssociationForm():Bool;
	function set_requiresAssociationForm(value:Bool):Bool;
	function get_requiresInitiationForm():Bool;
	function set_requiresInitiationForm(value:Bool):Bool;
	function get_restrictToScope():String;
	function set_restrictToScope(value:String):String;
	function get_restrictToType():String;
	function set_restrictToType(value:String):String;
	function get_xaml():String;
	function set_xaml(value:String):String;
	function setProperty(propertyName:String, value:String):Void;
	function initPropertiesFromJson(parentNode:Dynamic):Void;
}
extern class WorkflowDefinitionCollection extends SP.ClientObjectCollection<WorkflowDefinition> {
	function itemAt(index:Float):WorkflowDefinition;
	function get_item(index:Float):WorkflowDefinition;
	function get_childItemType():Dynamic;
}
extern class WorkflowDeploymentService extends SP.ClientObject {
	function new(context:SP.ClientRuntimeContext, objectPath:SP.ObjectPathStaticProperty):Void;
	function getDesignerActions(web:SP.Web):SP.StringResult;
	function getActivitySignatures(lastChanged:String):SP.ClientResult<Dynamic>;
	function saveDefinition(definition:WorkflowDefinition):SP.GuidResult;
	function validateActivity(activityXaml:String):SP.StringResult;
	function publishDefinition(definitionId:String):Void;
	function deprecateDefinition(definitionId:String):Void;
	function deleteDefinition(definitionId:String):Void;
	function enumerateDefinitions(publishedOnly:Bool):WorkflowDefinitionCollection;
	function getDefinition(definitionId:String):WorkflowDefinition;
	function saveCollateral(workflowDefinitionId:String, leafFileName:String, fileContent:Dynamic):Void;
	function deleteCollateral(workflowDefinitionId:String, leafFileName:String):Void;
	function getCollateralUri(workflowDefinitionId:String, leafFileName:String):SP.StringResult;
	function packageDefinition(definitionId:Dynamic, packageDefaultFilename:Dynamic, packageTitle:Dynamic, packageDescription:Dynamic):SP.StringResult;
}
extern class WorkflowInstance extends SP.ClientObject {
	function get_faultInfo():String;
	function get_id():String;
	function get_instanceCreated():String;
	function get_lastUpdated():String;
	function get_properties():{ };
	function get_status():WorkflowStatus;
	function get_userStatus():String;
	function set_userStatus(value:String):String;
	function get_workflowSubscriptionId():String;
	function initPropertiesFromJson(parentNode:Dynamic):Void;
}
extern class WorkflowInstanceCollection extends SP.ClientObjectCollection<WorkflowInstance> {
	function itemAt(index:Float):WorkflowInstance;
	function get_item(index:Float):WorkflowInstance;
	function get_childItemType():Dynamic;
}
extern class WorkflowInstanceService extends SP.ClientObject {
	function startWorkflow(subscription:WorkflowSubscription, payload:{ }):SP.GuidResult;
	function startWorkflowOnListItem(subscription:WorkflowSubscription, itemId:Float, payload:{ }):SP.GuidResult;
	function getInstance(instanceId:String):WorkflowInstance;
	function enumerate(parentSubscription:WorkflowSubscription):WorkflowInstanceCollection;
	function enumerateWithOffset(parentSubscription:WorkflowSubscription, offset:Float):WorkflowInstanceCollection;
	function enumerateInstancesForListItem(listId:String, itemId:Float):WorkflowInstanceCollection;
	function enumerateInstancesForListItemWithOffset(listId:String, itemId:Float, offset:Float):WorkflowInstanceCollection;
	function enumerateInstancesForSite():WorkflowInstanceCollection;
	function enumerateInstancesForSiteWithOffset(offset:Float):WorkflowInstanceCollection;
	function countInstances(parentSubscription:WorkflowSubscription):SP.IntResult;
	function countInstancesWithStatus(parentSubscription:WorkflowSubscription, status:WorkflowStatus):SP.IntResult;
	function cancelWorkflow(instance:WorkflowInstance):Void;
	function terminateWorkflow(instance:WorkflowInstance):Void;
	function suspendWorkflow(instance:WorkflowInstance):Void;
	function resumeWorkflow(instance:WorkflowInstance):Void;
	function publishCustomEvent(instance:WorkflowInstance, eventName:String, payload:String):Void;
	function getDebugInfo(instance:WorkflowInstance):SP.StringResult;
}
extern class WorkflowServicesManager extends SP.ClientObject {
	function new(context:SP.ClientRuntimeContext, web:SP.Web):Void;
	static function newObject(context:SP.ClientRuntimeContext, web:SP.Web):WorkflowServicesManager;
	function get_appId():String;
	function get_isConnected():Bool;
	function get_scopePath():String;
	function getWorkflowDeploymentService():WorkflowDeploymentService;
	function getWorkflowInstanceService():WorkflowInstanceService;
	function getWorkflowInteropService():InteropService;
	function getWorkflowSubscriptionService():WorkflowSubscriptionService;
	function initPropertiesFromJson(parentNode:Dynamic):Void;
}
extern class WorkflowSubscription extends SP.ClientObject {
	function get_definitionId():Dynamic;
	function set_definitionId(value:Dynamic):Dynamic;
	function get_enabled():Bool;
	function set_enabled(value:Bool):Bool;
	function get_eventSourceId():String;
	function set_eventSourceId(value:String):String;
	function get_eventTypes():Array<String>;
	function set_eventTypes(value:Array<String>):Array<String>;
	function get_id():String;
	function set_id(value:String):String;
	function get_manualStartBypassesActivationLimit():Bool;
	function set_manualStartBypassesActivationLimit(value:Bool):Bool;
	function get_name():Dynamic;
	function set_name(value:Dynamic):Dynamic;
	function get_propertyDefinitions():Dynamic;
	function get_statusFieldName():String;
	function set_statusFieldName(value:String):String;
	function setProperty(propertyName:String, value:String):Void;
	function initPropertiesFromJson(parentNode:Dynamic):Void;
}
extern class WorkflowSubscriptionCollection extends SP.ClientObjectCollection<WorkflowSubscription> {
	function itemAt(index:Float):WorkflowSubscription;
	function get_item(index:Float):WorkflowSubscription;
	function get_childItemType():Dynamic;
}
extern class WorkflowSubscriptionService extends SP.ClientObject {
	function new(context:SP.ClientRuntimeContext, objectPath:SP.ObjectPathStaticProperty):Void;
	static function getCurrent(context:SP.ClientRuntimeContext):WorkflowSubscriptionService;
	function publishSubscription(subscription:WorkflowSubscription):SP.GuidResult;
	function publishSubscriptionForList(subscription:WorkflowSubscription, listId:String):SP.GuidResult;
	function registerInterestInList(listId:String, eventName:String):Void;
	function unregisterInterestInList(listId:String, eventName:String):Void;
	function getSubscription(subscriptionId:Dynamic):WorkflowSubscription;
	function deleteSubscription(subscriptionId:Dynamic):WorkflowSubscription;
	function enumerateSubscriptions():WorkflowSubscriptionCollection;
	function enumerateSubscriptionsByDefinition(definitionId:String):WorkflowSubscriptionCollection;
	function enumerateSubscriptionsByEventSource(eventSourceId:String):WorkflowSubscriptionCollection;
	function enumerateSubscriptionsByList(listId:String):WorkflowSubscriptionCollection;
}
