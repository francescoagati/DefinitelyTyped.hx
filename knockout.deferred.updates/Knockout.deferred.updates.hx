typedef KnockoutDeferredTasks = {
	function processImmediate(evaluator:haxe.Constraints.Function, ?object:Dynamic, ?args:Array<Dynamic>):Dynamic;
	function processDelayed(evaluator:haxe.Constraints.Function, ?distinct:Bool, ?options:Array<Dynamic>):Bool;
	function makeProcessedCallback(evaluator:haxe.Constraints.Function):Void;
};
typedef KnockoutStatic = {
	var tasks : KnockoutDeferredTasks;
	function processAllDeferredBindingUpdates():Void;
	function processAllDeferredUpdates():Void;
	function evaluateAsynchronously(evaluator:haxe.Constraints.Function, ?timeout:Dynamic):Float;
	function ignoreDependencies(callback:haxe.Constraints.Function, callbackTarget:Dynamic, ?callbackArgs:Array<Dynamic>):Dynamic;
};
typedef KnockoutSubscribableFunctions<T> = {
	var deferUpdates : Bool;
};
typedef KnockoutComputedStatic = {
	var deferUpdates : Bool;
};
typedef KnockoutSubscription = {
	var deferUpdates : Bool;
};
typedef KnockoutUtils = {
	function objectForEach(obj:Dynamic, action:haxe.Constraints.Function):Void;
	function objectMap(source:Dynamic, mapping:haxe.Constraints.Function):Dynamic;
};
typedef KnockoutExtenders = {
	function deferred(target:Dynamic, value:Bool):Dynamic;
};
