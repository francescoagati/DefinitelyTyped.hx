extern class Print {
	@:overload(function(params:esri.PrintOptions, srcNodeRef:String):Void { })
	function new(params:esri.PrintOptions, srcNodeRef:Node):Void;
	function destroy():Void;
	function hide():Void;
	function printMap(template:PrintTemplate):Void;
	function show():Void;
	function startup():Void;
	@:overload(function(type:Print-complete, listener:{ var value : Dynamic; var target : Print; } -> Void):esri.Handle { })
	@:overload(function(type:Print-start, listener:{ var target : Print; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Error, listener:{ var error : Error; var target : Print; } -> Void):esri.Handle;
}
