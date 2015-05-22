extern class __FormatOptions {
	function new():Void;
	var currency : String;
	var fractional : Bool;
	var locale : String;
	var pattern : String;
	var places : Float;
	var round : Float;
	var symbol : String;
	var type : String;
}
extern class __ParseOptions {
	function new():Void;
	var currency : String;
	var fractional : Bool;
	var locale : String;
	var pattern : String;
	var places : Float;
	var strict : Bool;
	var symbol : String;
	var type : String;
}
typedef Dom = {
	@:overload(function(id:HTMLElement, ?doc:HTMLDocument):Dynamic { })
	function byId(id:String, ?doc:HTMLDocument):Dynamic;
	@:overload(function(node:String, ancestor:HTMLElement):Bool { })
	@:overload(function(node:HTMLElement, ancestor:String):Bool { })
	@:overload(function(node:String, ancestor:String):Bool { })
	function isDescendant(node:HTMLElement, ancestor:HTMLElement):Bool;
	function setSelectable(node:Dynamic, selectable:Dynamic):Void;
};
typedef Dom_attr = {
	@:overload(function(node:String, name:String):Dynamic { })
	function get(node:HTMLElement, name:String):Dynamic;
	@:overload(function(node:String, name:String):Dynamic { })
	function getNodeProp(node:HTMLElement, name:String):Dynamic;
	@:overload(function(node:String, name:String):Bool { })
	function has(node:HTMLElement, name:String):Bool;
	@:overload(function(node:String, name:String):Void { })
	function remove(node:HTMLElement, name:String):Void;
	@:overload(function(node:String, name:String, value:String):Dynamic { })
	@:overload(function(node:HTMLElement, name:Dynamic, value:String):Dynamic { })
	@:overload(function(node:String, name:Dynamic, value:String):Dynamic { })
	function set(node:HTMLElement, name:String, value:String):Dynamic;
};
typedef Dom_class = {
	@:overload(function(node:HTMLElement, classStr:String):Void { })
	@:overload(function(node:String, classStr:Array<Dynamic>):Void { })
	@:overload(function(node:HTMLElement, classStr:Array<Dynamic>):Void { })
	function add(node:String, classStr:String):Void;
	@:overload(function(node:HTMLElement, classStr:String):Bool { })
	function contains(node:String, classStr:String):Bool;
	@:overload(function(node:HTMLElement, classStr:String):Void { })
	@:overload(function(node:String, classStr:Array<Dynamic>):Void { })
	@:overload(function(node:HTMLElement, classStr:Array<Dynamic>):Void { })
	function remove(node:String, classStr:String):Void;
	@:overload(function(node:HTMLElement, addClassStr:String, removeClassStr:String):Void { })
	@:overload(function(node:String, addClassStr:Array<Dynamic>, removeClassStr:String):Void { })
	@:overload(function(node:HTMLElement, addClassStr:Array<Dynamic>, removeClassStr:String):Void { })
	@:overload(function(node:String, addClassStr:String, removeClassStr:Array<Dynamic>):Void { })
	@:overload(function(node:HTMLElement, addClassStr:String, removeClassStr:Array<Dynamic>):Void { })
	@:overload(function(node:String, addClassStr:Array<Dynamic>, removeClassStr:Array<Dynamic>):Void { })
	@:overload(function(node:HTMLElement, addClassStr:Array<Dynamic>, removeClassStr:Array<Dynamic>):Void { })
	function replace(node:String, addClassStr:String, removeClassStr:String):Void;
	@:overload(function(node:HTMLElement, classStr:String, condition:Bool):Bool { })
	@:overload(function(node:String, classStr:Array<Dynamic>, condition:Bool):Bool { })
	@:overload(function(node:HTMLElement, classStr:Array<Dynamic>, condition:Bool):Bool { })
	function toggle(node:String, classStr:String, condition:Bool):Bool;
};
typedef Dom_form = {
	@:overload(function(inputNode:String):Dynamic { })
	function fieldToObject(inputNode:HTMLElement):Dynamic;
	@:overload(function(formNode:String, prettyPrint:Bool):String { })
	function toJson(formNode:HTMLElement, prettyPrint:Bool):String;
	@:overload(function(formNode:String):Dynamic { })
	function toObject(formNode:HTMLElement):Dynamic;
	@:overload(function(formNode:String):String { })
	function toQuery(formNode:HTMLElement):String;
};
typedef Dom_construct = {
	@:overload(function(tag:String, attrs:Dynamic, refNode:HTMLElement, pos:String):Dynamic { })
	@:overload(function(tag:HTMLElement, attrs:Dynamic, refNode:String, pos:String):Dynamic { })
	@:overload(function(tag:String, attrs:Dynamic, refNode:String, pos:String):Dynamic { })
	function create(tag:HTMLElement, attrs:Dynamic, refNode:HTMLElement, pos:String):Dynamic;
	@:overload(function(node:String):Void { })
	function destroy(node:HTMLElement):Void;
	@:overload(function(node:String):Void { })
	function empty(node:HTMLElement):Void;
	@:overload(function(node:String, refNode:HTMLElement, position:String):HTMLElement { })
	@:overload(function(node:HTMLElement, refNode:String, position:String):HTMLElement { })
	@:overload(function(node:String, refNode:String, position:String):HTMLElement { })
	@:overload(function(node:HTMLElement, refNode:HTMLElement, position:Float):HTMLElement { })
	@:overload(function(node:String, refNode:HTMLElement, position:Float):HTMLElement { })
	@:overload(function(node:HTMLElement, refNode:String, position:Float):HTMLElement { })
	@:overload(function(node:String, refNode:String, position:Float):HTMLElement { })
	function place(node:HTMLElement, refNode:HTMLElement, position:String):HTMLElement;
	function toDom(frag:String, doc:HTMLDocument):Dynamic;
};
typedef Dom_prop = {
	var names : Dynamic;
	@:overload(function(node:String, name:String):Dynamic { })
	function get(node:HTMLElement, name:String):Dynamic;
	@:overload(function(node:String, name:String, value:String):Dynamic { })
	@:overload(function(node:HTMLElement, name:Dynamic, value:String):Dynamic { })
	@:overload(function(node:String, name:Dynamic, value:String):Dynamic { })
	function set(node:HTMLElement, name:String, value:String):Dynamic;
};
