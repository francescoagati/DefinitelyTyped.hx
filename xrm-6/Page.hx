@:enum abstract FormType(Int) {
	var Undefined = 0;
	var Create = 1;
	var Update = 2;
	var ReadOnly = 3;
	var Disabled = 4;
	var BulkEdit = 6;
}
@:enum abstract SaveMode(Int) {
	var Save = 1;
	var SaveAndClose = 2;
	var SaveAndNew = 59;
	var AutoSave = 70;
	var SaveAsCompleted = 58;
	var Deactivate = 5;
	var Reactivate = 6;
	var Assign = 47;
	var Send = 7;
	var Qualify = 16;
	var Disqualify = 15;
}
typedef EventContext = {
	function getContext():Context;
	function getDepth():Float;
	function getEventArgs():SaveEventArguments;
	function getEventSource():haxe.extern.EitherType<Xrm.Page.Attribute, Xrm.Page.Entity>;
	function getSharedVariable<T>(key:String):T;
	function setSharedVariable<T>(key:String, value:T):Void;
};
typedef ContextSensitiveHandler = { };
typedef UiElement = {
	function getLabel():String;
	function getVisible():Bool;
	function setLabel(label:String):Void;
	function setVisible(visible:Bool):Void;
};
typedef UiFocusable = {
	function setFocus():Void;
};
typedef LookupValue = {
	var id : String;
	@:optional
	var name : String;
	var entityType : String;
};
typedef OptionSetValue = {
	var text : String;
	var value : String;
};
typedef Privilege = {
	var canRead : Bool;
	var canUpdate : Bool;
	var canCreate : Bool;
};
typedef Attribute = {
	var controls : Collection.ItemCollection<Control>;
	function addOnChange(handler:ContextSensitiveHandler):Void;
	function fireOnChange():Void;
	function getAttributeType():String;
	function getFormat():String;
	function getIsDirty():Bool;
	function getName():String;
	function getParent():Entity;
	function getRequiredLevel():String;
	function getSubmitMode():String;
	function getUserPrivilege():Privilege;
	function removeOnChange(handler:ContextSensitiveHandler):Void;
	@:overload(function(requirementLevel:Required):Void { })
	@:overload(function(requirementLevel:Recommended):Void { })
	@:overload(function(requirementLevel:String):Void { })
	function setRequiredLevel(requirementLevel:None):Void;
	@:overload(function(submitMode:Never):Void { })
	@:overload(function(submitMode:Dirty):Void { })
	@:overload(function(submitMode:String):Void { })
	function setSubmitMode(submitMode:Always):Void;
};
typedef NumberAttribute = {
	>Attribute,
	function getMax():Float;
	function getMin():Float;
	function getPrecision():Float;
	function getValue():Float;
	function setValue(value:Float):Void;
};
typedef StringAttribute = {
	>Attribute,
	function getMaxLength():Float;
	function getValue():String;
	function setValue(value:String):Void;
};
typedef EnumAttribute = {
	>Attribute,
	function getInitialValue():haxe.extern.EitherType<Float, Bool>;
};
typedef BooleanAttribute = {
	>EnumAttribute,
	function getValue():Bool;
	function setValue(value:Bool):Void;
};
typedef DateAttribute = {
	>Attribute,
	function getValue():Date;
	function setValue(value:Date):Void;
};
typedef OptionSetAttribute = {
	>EnumAttribute,
	@:overload(function(label:String):OptionSetValue { })
	function getOption(value:Float):OptionSetValue;
	function getOptions():Array<OptionSetValue>;
	function getSelectedOption():OptionSetValue;
	function getText():String;
	function getValue():Float;
	function setValue(value:Float):Void;
};
typedef LookupAttribute = {
	>Attribute,
	function getIsPartyList():Bool;
	function getValue():Array<LookupValue>;
	function setValue(value:Array<LookupValue>):Void;
};
typedef Entity = {
	var attributes : Collection.ItemCollection<Attribute>;
	function addOnSave(handler:ContextSensitiveHandler):Void;
	function getDataXml():String;
	function getEntityName():String;
	function getId():String;
	function getIsDirty():Bool;
	function getPrimaryAttributeValue():String;
	function removeOnSave(handler:ContextSensitiveHandler):Void;
	@:overload(function(saveMode:Saveandclose):Void { })
	@:overload(function(saveMode:Saveandnew):Void { })
	@:overload(function(saveMode:String):Void { })
	function save():Void;
};
typedef SaveEventArguments = {
	function getSaveMode():SaveMode;
	function isDefaultPrevented():Bool;
	function preventDefault():Void;
};
typedef Data = {
	var entity : Entity;
	function refresh(save:Bool):Async.XrmPromise;
	function save():Async.XrmPromise;
};
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
	var sections : Collection.ItemCollection<Section>;
	function getDisplayState():String;
	function getName():String;
	function getParent():Ui;
	@:overload(function(displayState:Expanded):Void { })
	@:overload(function(displayState:String):Void { })
	function setDisplayState(displayState:Collapsed):Void;
};
typedef Section = {
	>UiElement,
	var controls : Collection.ItemCollection<Control>;
	function getName():String;
	function getParent():Tab;
};
typedef Ui = {
	var controls : Collection.ItemCollection<Control>;
	var formSelector : FormSelector;
	var navigation : Navigation;
	var tabs : Collection.ItemCollection<Tab>;
	function clearFormNotification(uniqueId:String):Bool;
	function close():Void;
	function getFormType():FormType;
	function getViewPortHeight():Float;
	function getViewPortWidth():Float;
	function refreshRibbon():Void;
	@:overload(function(message:String, level:WARNING, uniqueId:String):Bool { })
	@:overload(function(message:String, level:INFO, uniqueId:String):Bool { })
	@:overload(function(message:String, level:String, uniqueId:String):Bool { })
	function setFormNotification(message:String, level:ERROR, uniqueId:String):Bool;
};
typedef NavigationItem = {
	>UiElement,
	>UiFocusable,
	function getId():String;
};
typedef Navigation = {
	var items : Collection.ItemCollection<NavigationItem>;
};
typedef FormItem = {
	function getId():String;
	function getLabel():String;
	function navigate():Void;
};
typedef FormSelector = {
	function getCurrentItem():FormItem;
	var items : Collection.ItemCollection<FormItem>;
};
extern class PageTopLevel {
	static var context : Context;
	static var ui : Ui;
	static var data : Data;
	static function getAttribute():Array<Attribute>;
	static function getAttribute<T:(Attribute)>(attributeName:String):T;
	static function getAttribute(attributeName:String):Attribute;
	static function getAttribute(index:Float):Attribute;
	static function getAttribute(delegateFunction:Collection.MatchingDelegate<Attribute>):Array<Attribute>;
	static function getControl():Array<Control>;
	static function getControl<T:(Control)>(controlName:String):T;
	static function getControl(controlName:String):Control;
	static function getControl(index:Float):Control;
	static function getControl(delegateFunction:Collection.MatchingDelegate<Control>):Array<Control>;
}
