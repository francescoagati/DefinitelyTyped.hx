extern class DataBrowser {
	@:overload(function(options:esri.DataBrowserOptions, srcNodeRef:String):Void { })
	function new(options:esri.DataBrowserOptions, srcNodeRef:Node):Void;
	function startup():Void;
	@:overload(function(type:Cancel, listener:{ var target : DataBrowser; } -> Void):esri.Handle { })
	@:overload(function(type:Ok, listener:{ var target : DataBrowser; } -> Void):esri.Handle { })
	@:overload(function(type:Select, listener:{ var target : DataBrowser; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Back, listener:{ var target : DataBrowser; } -> Void):esri.Handle;
}
