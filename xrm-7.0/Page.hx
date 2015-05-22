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
@:enum abstract StageCategory(Int) {
	var Qualify = 0;
	var Develop = 1;
	var Propose = 2;
	var Close = 3;
	var Identify = 4;
	var Research = 5;
	var Resolve = 6;
}
typedef Process = {
	function getId():String;
	function getName():String;
	function getStages():Collection.ItemCollection<Stage>;
	function isRendered():Bool;
};
typedef Stage = {
	function getCategory():{ function getValue():StageCategory; };
	function getEntityName():String;
	function getId():String;
	function getName():String;
	function getStatus():String;
	function getSteps():Array<Step>;
};
typedef Step = {
	function getAttribute():String;
	function getName():String;
	function isRequired():Bool;
};
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
	var controls : Collection.ItemCollection<Control>;
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
	var attributes : Collection.ItemCollection<Attribute>;
};
typedef SaveEventArguments = {
	function getSaveMode():SaveMode;
	function isDefaultPrevented():Bool;
	function preventDefault():Void;
};
