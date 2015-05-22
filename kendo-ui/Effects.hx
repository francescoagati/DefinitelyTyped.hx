extern class EffectsTopLevel {
	static function box(element:HTMLElement):Dynamic;
	static function fillScale(firstElement:HTMLElement, secondElement:HTMLElement):Float;
	static function fitScale(firstElement:HTMLElement, secondElement:HTMLElement):Float;
	static function transformOrigin(firstElement:HTMLElement, secondElement:HTMLElement):Dynamic;
	static function bind(element:String, viewModel:Dynamic, ?namespace:Dynamic):Void;
	static function bind(element:String, viewModel:kendo.data.ObservableObject, ?namespace:Dynamic):Void;
	static function bind(element:JQuery, viewModel:Dynamic, ?namespace:Dynamic):Void;
	static function bind(element:JQuery, viewModel:kendo.data.ObservableObject, ?namespace:Dynamic):Void;
	static function bind(element:Element, viewModel:Dynamic, ?namespace:Dynamic):Void;
	static function bind(element:Element, viewModel:kendo.data.ObservableObject, ?namespace:Dynamic):Void;
	static function observableHierarchy(array:Dynamic):Void;
	static function culture(culture:String):Void;
	static function destroy(element:String):Void;
	static function destroy(element:JQuery):Void;
	static function destroy(element:Element):Void;
	static function htmlEncode(value:String):String;
	static function parseDate(value:String, ?formats:String, ?culture:String):Date;
	static function parseDate(value:String, ?formats:Dynamic, ?culture:String):Date;
	static function parseFloat(value:String, ?culture:String):Float;
	static function parseInt(value:String, ?culture:String):Float;
	static function parseColor(color:String, noerror:Bool):kendo.Color;
	static function resize(element:String, force:Bool):Void;
	static function resize(element:JQuery, force:Bool):Void;
	static function resize(element:Element, force:Bool):Void;
	static function saveAs(options:Dynamic):Void;
	static function stringify(value:Dynamic):String;
	static function throttle(fn:haxe.Constraints.Function, timeout:Float):Void;
	static function touchScroller(element:String):Void;
	static function touchScroller(element:JQuery):Void;
	static function touchScroller(element:Element):Void;
	static function toString(value:Date, format:String, ?culture:String):String;
	static function toString(value:Float, format:String, ?culture:String):String;
	static function unbind(element:String):Void;
	static function unbind(element:JQuery):Void;
	static function unbind(element:Element):Void;
}