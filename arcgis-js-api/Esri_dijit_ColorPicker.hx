extern class ColorPicker {
	var color : Color;
	var palette : Array<Color>;
	var recentColors : Array<Color>;
	@:overload(function(params:esri.ColorPickerOptions, srcNodeRef:String):Void { })
	function new(params:esri.ColorPickerOptions, srcNodeRef:Node):Void;
	function startup():Void;
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Color-change, listener:{ var target : ColorPicker; } -> Void):esri.Handle;
}
