typedef KnockoutStatic = {
	function track(obj:Dynamic, ?propertyNames:Array<String>):Dynamic;
	@:overload(function(obj:Dynamic, propertyName:String, options:KnockoutDefinePropertyOptions):Dynamic { })
	function defineProperty(obj:Dynamic, propertyName:String, evaluator:haxe.Constraints.Function):Dynamic;
	function getObservable(obj:Dynamic, propertyName:String):KnockoutObservable<Dynamic>;
	function valueHasMutated(obj:Dynamic, propertyName:String):Void;
};
typedef KnockoutDefinePropertyOptions = {
	function get():Dynamic;
	@:optional
	function set(value:Dynamic):Void;
};
typedef Array<T> = {
	function remove(item:T):Array<T>;
	@:overload(function():Array<T> { })
	function removeAll(items:Array<T>):Array<T>;
	function destroy(item:T):Void;
	@:overload(function():Void { })
	function destroyAll(items:Array<T>):Void;
};
