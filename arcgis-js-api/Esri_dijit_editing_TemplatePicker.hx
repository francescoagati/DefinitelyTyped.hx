extern class TemplatePicker {
	var grid : Dynamic;
	var tooltip : HTMLDivElement;
	@:overload(function(params:esri.TemplatePickerOptions, srcNodeRef:String):Void { })
	function new(params:esri.TemplatePickerOptions, srcNodeRef:Node):Void;
	function attr(name:String, ?value:Dynamic):Void;
	function clearSelection():Void;
	function destroy():Void;
	function getSelected():Dynamic;
	function startup():Void;
	function update():Void;
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Selection-change, listener:{ var target : TemplatePicker; } -> Void):esri.Handle;
}
