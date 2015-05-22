typedef ProcessManager = {
	@:overload(function(displayState:Expanded):Void { })
	@:overload(function(displayState:String):Void { })
	function setDisplayState(displayState:Collapsed):Void;
	function setVisible(visible:Bool):Void;
};
extern class UiTopLevel {
	static function clearFormNotification(uniqueId:String):Bool;
	static function close():Void;
	static function getFormType():FormType;
	static function getViewPortHeight():Float;
	static function getViewPortWidth():Float;
	static function refreshRibbon():Void;
	static function setFormNotification(message:String, level:ERROR, uniqueId:String):Bool;
	static function setFormNotification(message:String, level:WARNING, uniqueId:String):Bool;
	static function setFormNotification(message:String, level:INFO, uniqueId:String):Bool;
	static function setFormNotification(message:String, level:String, uniqueId:String):Bool;
	static var process : ProcessManager;
	static var controls : Collection.ItemCollection<Control>;
	static var formSelector : FormSelector;
	static var navigation : Navigation;
	static var tabs : Collection.ItemCollection<Tab>;
	static var context : Context;
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
