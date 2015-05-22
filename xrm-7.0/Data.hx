typedef ProcessManager = {
	function getActiveProcess():Process;
	function setActiveProcess(processId:String, ?callbackFunction:ProcessCallbackDelegate):Void;
	function getActiveStage():Stage;
	function setActiveStage(stageId:String, ?callbackFunction:ProcessCallbackDelegate):Void;
	function getActivePath():Collection.ItemCollection<Stage>;
	function getEnabledProcesses(callbackFunction:ProcessDictionary -> Void):Void;
	function addOnStageChange(handler:ContextSensitiveHandler):Void;
	function removeOnStageSelected(handler:ContextSensitiveHandler):Void;
	function moveNext(?callbackFunction:ProcessCallbackDelegate):Void;
	function movePrevious(?callbackFunction:ProcessCallbackDelegate):Void;
};
extern class DataTopLevel {
	static function refresh(save:Bool):Async.XrmPromise;
	static function save():Async.XrmPromise;
	static var entity : Entity;
	static var process : ProcessManager;
}
typedef Control = {
	>UiElement,
	function clearNotification(?uniqueId:String):Bool;
	function getControlType():String;
	function getDisabled():Bool;
	function getName():String;
	function getParent():Section;
	function setDisabled(disabled:Bool):Void;
	function setNotification(message:String, uniqueId:String):Bool;
};
typedef StandardControl = {
	>Control,
	@:overload(function():Attribute { })
	function getAttribute<T:(Attribute)>():T;
};
typedef DateControl = {
	>StandardControl,
	function getAttribute():DateAttribute;
	function setShowTime(showTimeValue:Bool):Void;
};
typedef LookupControl = {
	>StandardControl,
	function addPreSearch(handler:Void -> Void):Void;
	function addCustomFilter(filter:String, ?entityLogicalName:String):Void;
	function addCustomView(viewId:String, entityName:String, viewDisplayName:String, fetchXml:String, layoutXml:String, isDefault:Bool):Void;
	function getAttribute():LookupAttribute;
	function getDefaultView():String;
	function removePreSearch(handler:Void -> Void):Void;
	function setDefaultView(viewGuid:String):Void;
};
typedef OptionSetControl = {
	>StandardControl,
	function addOption(option:OptionSetValue, ?index:Float):Void;
	function clearOptions():Void;
	function getAttribute():OptionSetAttribute;
	function removeOption(value:Float):Void;
};
typedef GridControl = {
	>Control,
	function refresh():Void;
};
typedef FramedControl = {
	>Control,
	function getObject():HTMLIFrameElement;
	function getSrc():String;
	function setSrc(src:String):Void;
};
typedef IframeControl = {
	>FramedControl,
	function getInitialUrl():String;
};
typedef SilverlightControl = {
	>Control,
	function getData():String;
	function setData(data:String):Void;
	function getObject():HTMLObjectElement;
};
typedef Tab = {
	>UiElement,
	>UiFocusable,
	function getDisplayState():String;
	function getName():String;
	function getParent():Dynamic;
	@:overload(function(displayState:Expanded):Void { })
	@:overload(function(displayState:String):Void { })
	function setDisplayState(displayState:Collapsed):Void;
	var sections : Collection.ItemCollection<Section>;
};
typedef Section = {
	>UiElement,
	function getName():String;
	function getParent():Tab;
	var controls : Collection.ItemCollection<Control>;
};
