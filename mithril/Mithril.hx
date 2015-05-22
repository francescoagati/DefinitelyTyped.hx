typedef MithrilStatic = {
	@:overload(function<T>(promise:MithrilPromise<T>):MithrilPromiseProperty<T> { })
	function prop<T>(?value:T):?T -> T;
	function withAttr(property:String, callback:Dynamic -> Void):Event -> Dynamic;
	function module(rootElement:Node, module:MithrilModule):Void;
	function trust(html:String):String;
	@:overload(function(rootElement:HTMLDocument, ?children:Dynamic):Void { })
	function render(rootElement:Element, ?children:Dynamic):Void;
	var redraw : MithrilRedraw;
	@:overload(function(rootElement:HTMLDocument, defaultRoute:String, routes:{ }):Void { })
	@:overload(function(path:String, ?params:Dynamic, ?shouldReplaceHistory:Bool):Void { })
	@:overload(function():String { })
	@:overload(function(element:Element, isInitialized:Bool):Void { })
	function route(rootElement:Element, defaultRoute:String, routes:{ }):Void;
	function request(options:MithrilXHROptions):MithrilPromise<Dynamic>;
	function deferred<T>():MithrilDeferred<T>;
	function sync<T>(promises:Array<MithrilPromise<T>>):MithrilPromise<T>;
	function startComputation():Void;
	function endComputation():Void;
};
typedef MithrilRedraw = {
	var strategy : ?String -> String;
};
typedef MithrilVirtualElement = {
	var tag : String;
	var attrs : Dynamic;
	var children : Dynamic;
};
typedef MithrilModule = {
	var controller : haxe.Constraints.Function;
	var view : ?Dynamic -> MithrilVirtualElement;
};
typedef MithrilDeferred<T> = {
	function resolve(?value:T):Void;
	function reject(?value:Dynamic):Void;
	var promise : MithrilPromise<T>;
};
typedef MithrilPromise<T> = {
	@:overload(function<R>(?successCallback:T -> MithrilPromise<R>, ?errorCallback:Dynamic -> Dynamic):MithrilPromise<R> { })
	function then<R>(?successCallback:T -> R, ?errorCallback:Dynamic -> Dynamic):MithrilPromise<R>;
};
typedef MithrilPromiseProperty<T> = {
	>MithrilPromise<T>,
	function toJSON():T;
};
typedef MithrilXHROptions = {
	var method : String;
	var url : String;
	@:optional
	var user : String;
	@:optional
	var password : String;
	@:optional
	var data : Dynamic;
	@:optional
	var background : Bool;
	@:optional
	function unwrapSuccess(data:Dynamic):Dynamic;
	@:optional
	function unwrapError(data:Dynamic):Dynamic;
	@:optional
	function serialize(dataToSerialize:Dynamic):String;
	@:optional
	function deserialize(dataToDeserialize:String):Dynamic;
	@:optional
	function extract(xhr:XMLHttpRequest, options:MithrilXHROptions):String;
	@:optional
	function type(data:Dynamic):Void;
	@:optional
	function config(xhr:XMLHttpRequest, options:MithrilXHROptions):XMLHttpRequest;
};
extern class MithrilTopLevel {
	static var Mithril : MithrilStatic;
	static var m : MithrilStatic;
}
