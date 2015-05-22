extern class Delegate {
	function new(element:HTMLElement):Void;
	@:overload(function(eventType:String, selector:Element -> Bool, handler:Event -> Element -> Void, ?eventData:Dynamic):Void { })
	@:overload(function(eventType:String, handler:Event -> Element -> Void, ?eventData:Dynamic):Void { })
	function on(eventType:String, selector:String, handler:Event -> Element -> Void, ?eventData:Dynamic):Void;
	@:overload(function(?eventType:String, ?selector:Element -> Bool, ?handler:Event -> Element -> Void):Void { })
	function off(?eventType:String, ?selector:String, ?handler:Event -> Element -> Void):Void;
	function root(?element:Element):Void;
	function destroy():Void;
}
