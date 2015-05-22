typedef Named = {
	var aliceblue : Array<Dynamic>;
	var antiquewhite : Array<Dynamic>;
	var aqua : Array<Dynamic>;
	var aquamarine : Array<Dynamic>;
	var azure : Array<Dynamic>;
	var beige : Array<Dynamic>;
	var bisque : Array<Dynamic>;
	var black : Array<Dynamic>;
	var blanchedalmond : Array<Dynamic>;
	var blue : Array<Dynamic>;
	var blueviolet : Array<Dynamic>;
	var brown : Array<Dynamic>;
	var burlywood : Array<Dynamic>;
	var cadetblue : Array<Dynamic>;
	var chartreuse : Array<Dynamic>;
	var chocolate : Array<Dynamic>;
	var coral : Array<Dynamic>;
	var cornflowerblue : Array<Dynamic>;
	var cornsilk : Array<Dynamic>;
	var crimson : Array<Dynamic>;
	var cyan : Array<Dynamic>;
	var darkblue : Array<Dynamic>;
	var darkcyan : Array<Dynamic>;
	var darkgoldenrod : Array<Dynamic>;
	var darkgray : Array<Dynamic>;
	var darkgreen : Array<Dynamic>;
	var darkgrey : Array<Dynamic>;
	var darkkhaki : Array<Dynamic>;
	var darkmagenta : Array<Dynamic>;
	var darkolivegreen : Array<Dynamic>;
	var darkorange : Array<Dynamic>;
	var darkorchid : Array<Dynamic>;
	var darkred : Array<Dynamic>;
	var darksalmon : Array<Dynamic>;
	var darkseagreen : Array<Dynamic>;
	var darkslateblue : Array<Dynamic>;
	var darkslategray : Array<Dynamic>;
	var darkslategrey : Array<Dynamic>;
	var darkturquoise : Array<Dynamic>;
	var darkviolet : Array<Dynamic>;
	var deeppink : Array<Dynamic>;
	var deepskyblue : Array<Dynamic>;
	var dimgray : Array<Dynamic>;
	var dimgrey : Array<Dynamic>;
	var dodgerblue : Array<Dynamic>;
	var firebrick : Array<Dynamic>;
	var floralwhite : Array<Dynamic>;
	var forestgreen : Array<Dynamic>;
	var fuchsia : Array<Dynamic>;
	var gainsboro : Array<Dynamic>;
	var ghostwhite : Array<Dynamic>;
	var gold : Array<Dynamic>;
	var goldenrod : Array<Dynamic>;
	var gray : Array<Dynamic>;
	var green : Array<Dynamic>;
	var greenyellow : Array<Dynamic>;
	var grey : Array<Dynamic>;
	var honeydew : Array<Dynamic>;
	var hotpink : Array<Dynamic>;
	var indianred : Array<Dynamic>;
	var indigo : Array<Dynamic>;
	var ivory : Array<Dynamic>;
	var khaki : Array<Dynamic>;
	var lavender : Array<Dynamic>;
	var lavenderblush : Array<Dynamic>;
	var lawngreen : Array<Dynamic>;
	var lemonchiffon : Array<Dynamic>;
	var lightblue : Array<Dynamic>;
	var lightcoral : Array<Dynamic>;
	var lightcyan : Array<Dynamic>;
	var lightgoldenrodyellow : Array<Dynamic>;
	var lightgray : Array<Dynamic>;
	var lightgreen : Array<Dynamic>;
	var lightgrey : Array<Dynamic>;
	var lightpink : Array<Dynamic>;
	var lightsalmon : Array<Dynamic>;
	var lightseagreen : Array<Dynamic>;
	var lightskyblue : Array<Dynamic>;
	var lightslategray : Array<Dynamic>;
	var lightslategrey : Array<Dynamic>;
	var lightsteelblue : Array<Dynamic>;
	var lightyellow : Array<Dynamic>;
	var lime : Array<Dynamic>;
	var limegreen : Array<Dynamic>;
	var linen : Array<Dynamic>;
	var magenta : Array<Dynamic>;
	var maroon : Array<Dynamic>;
	var mediumaquamarine : Array<Dynamic>;
	var mediumblue : Array<Dynamic>;
	var mediumorchid : Array<Dynamic>;
	var mediumpurple : Array<Dynamic>;
	var mediumseagreen : Array<Dynamic>;
	var mediumslateblue : Array<Dynamic>;
	var mediumspringgreen : Array<Dynamic>;
	var mediumturquoise : Array<Dynamic>;
	var mediumvioletred : Array<Dynamic>;
	var midnightblue : Array<Dynamic>;
	var mintcream : Array<Dynamic>;
	var mistyrose : Array<Dynamic>;
	var moccasin : Array<Dynamic>;
	var navajowhite : Array<Dynamic>;
	var navy : Array<Dynamic>;
	var oldlace : Array<Dynamic>;
	var olive : Array<Dynamic>;
	var olivedrab : Array<Dynamic>;
	var orange : Array<Dynamic>;
	var orangered : Array<Dynamic>;
	var orchid : Array<Dynamic>;
	var palegoldenrod : Array<Dynamic>;
	var palegreen : Array<Dynamic>;
	var paleturquoise : Array<Dynamic>;
	var palevioletred : Array<Dynamic>;
	var papayawhip : Array<Dynamic>;
	var peachpuff : Array<Dynamic>;
	var peru : Array<Dynamic>;
	var pink : Array<Dynamic>;
	var plum : Array<Dynamic>;
	var powderblue : Array<Dynamic>;
	var purple : Array<Dynamic>;
	var red : Array<Dynamic>;
	var rosybrown : Array<Dynamic>;
	var royalblue : Array<Dynamic>;
	var saddlebrown : Array<Dynamic>;
	var salmon : Array<Dynamic>;
	var sandybrown : Array<Dynamic>;
	var seagreen : Array<Dynamic>;
	var seashell : Array<Dynamic>;
	var sienna : Array<Dynamic>;
	var silver : Array<Dynamic>;
	var skyblue : Array<Dynamic>;
	var slateblue : Array<Dynamic>;
	var slategray : Array<Dynamic>;
	var slategrey : Array<Dynamic>;
	var snow : Array<Dynamic>;
	var springgreen : Array<Dynamic>;
	var steelblue : Array<Dynamic>;
	var tan : Array<Dynamic>;
	var teal : Array<Dynamic>;
	var thistle : Array<Dynamic>;
	var tomato : Array<Dynamic>;
	var transparent : Dynamic;
	var turquoise : Array<Dynamic>;
	var violet : Array<Dynamic>;
	var wheat : Array<Dynamic>;
	var white : Array<Dynamic>;
	var whitesmoke : Array<Dynamic>;
	var yellow : Array<Dynamic>;
	var yellowgreen : Array<Dynamic>;
};
typedef Browser = { };
typedef Array = {
	function clearCache():Void;
	@:overload(function(arr:String, callback:haxe.Constraints.Function, thisObject:Dynamic):Bool { })
	@:overload(function(arr:Array<Dynamic>, callback:String, thisObject:Dynamic):Bool { })
	@:overload(function(arr:String, callback:String, thisObject:Dynamic):Bool { })
	function every(arr:Array<Dynamic>, callback:haxe.Constraints.Function, thisObject:Dynamic):Bool;
	@:overload(function(arr:Array<Dynamic>, callback:String, thisObject:Dynamic):Array<Dynamic> { })
	function filter(arr:Array<Dynamic>, callback:haxe.Constraints.Function, thisObject:Dynamic):Array<Dynamic>;
	@:overload(function(arr:String, callback:haxe.Constraints.Function, ?thisObject:Dynamic):Void { })
	@:overload(function(arr:Array<Dynamic>, callback:String, ?thisObject:Dynamic):Void { })
	@:overload(function(arr:String, callback:String, ?thisObject:Dynamic):Void { })
	function forEach(arr:Array<Dynamic>, callback:haxe.Constraints.Function, ?thisObject:Dynamic):Void;
	function indexOf(arr:Array<Dynamic>, value:Dynamic, fromIndex:Float, findLast:Bool):Float;
	function lastIndexOf(arr:Dynamic, value:Dynamic, fromIndex:Float):Float;
	@:overload(function(arr:String, callback:haxe.Constraints.Function, thisObject:Dynamic, Ctr:Dynamic):Array<Dynamic> { })
	@:overload(function(arr:Array<Dynamic>, callback:String, thisObject:Dynamic, Ctr:Dynamic):Array<Dynamic> { })
	@:overload(function(arr:String, callback:String, thisObject:Dynamic, Ctr:Dynamic):Array<Dynamic> { })
	function map(arr:Array<Dynamic>, callback:haxe.Constraints.Function, thisObject:Dynamic, Ctr:Dynamic):Array<Dynamic>;
	@:overload(function(arr:String, callback:haxe.Constraints.Function, thisObject:Dynamic):Bool { })
	@:overload(function(arr:Array<Dynamic>, callback:String, thisObject:Dynamic):Bool { })
	@:overload(function(arr:String, callback:String, thisObject:Dynamic):Bool { })
	function some(arr:Array<Dynamic>, callback:haxe.Constraints.Function, thisObject:Dynamic):Bool;
};
typedef Connect = {
	@:overload(function(obj:Dynamic, event:String, context:Dynamic, method:String, dontFix:Bool):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, context:Dynamic, method:haxe.Constraints.Function, dontFix:Bool):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, context:Dynamic, method:haxe.Constraints.Function, dontFix:Bool):Dynamic { })
	function connect(obj:Dynamic, event:String, context:Dynamic, method:String, dontFix:Bool):Dynamic;
	function connectPublisher(topic:String, obj:Dynamic, event:String):Dynamic;
	function disconnect(handle:Dynamic):Void;
	function isCopyKey(e:Event):Dynamic;
	function publish(topic:String, args:Array<Dynamic>):Dynamic;
	@:overload(function(topic:String, context:Dynamic, method:haxe.Constraints.Function):Dynamic { })
	function subscribe(topic:String, context:Dynamic, method:String):Dynamic;
	function unsubscribe(handle:Dynamic):Void;
};
typedef Event = {
	function fix(evt:Event, sender:HTMLElement):Event;
	function stop(evt:Event):Void;
};
typedef Html = { };
typedef Json = { };
