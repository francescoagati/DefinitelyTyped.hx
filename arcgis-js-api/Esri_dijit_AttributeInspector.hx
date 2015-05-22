extern class AttributeInspector {
	static var STRING_FIELD_OPTION_RICHTEXT : Dynamic;
	static var STRING_FIELD_OPTION_TEXTAREA : Dynamic;
	static var STRING_FIELD_OPTION_TEXTBOX : Dynamic;
	@:overload(function(params:esri.AttributeInspectorOptions, srcNodeRef:String):Void { })
	function new(params:esri.AttributeInspectorOptions, srcNodeRef:Node):Void;
	function destroy():Void;
	function first():Void;
	function last():Void;
	function next():Void;
	function previous():Void;
	function refresh():Void;
	function startup():Void;
	@:overload(function(type:Delete, listener:{ var feature : Graphic; var target : AttributeInspector; } -> Void):esri.Handle { })
	@:overload(function(type:Next, listener:{ var feature : Graphic; var target : AttributeInspector; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Attribute-change, listener:{ var feature : Graphic; var fieldName : String; var fieldValue : String; var target : AttributeInspector; } -> Void):esri.Handle;
}
