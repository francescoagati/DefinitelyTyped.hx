typedef IPromise<T> = {
	@:overload(function<U>(?success:T -> IPromise<U>, ?error:Dynamic -> U, ?progress:Dynamic -> Void):IPromise<U> { })
	@:overload(function<U>(?success:T -> U, ?error:Dynamic -> IPromise<U>, ?progress:Dynamic -> Void):IPromise<U> { })
	@:overload(function<U>(?success:T -> U, ?error:Dynamic -> U, ?progress:Dynamic -> Void):IPromise<U> { })
	function then<U>(?success:T -> IPromise<U>, ?error:Dynamic -> IPromise<U>, ?progress:Dynamic -> Void):IPromise<U>;
	function done<U>(?success:T -> Dynamic, ?error:Dynamic -> Dynamic, ?progress:Dynamic -> Void):Void;
	function cancel():Void;
	@:optional
	function onerror(eventInfo:CustomEvent):Void;
	@:optional
	function addEventListener(type:String, listener:haxe.Constraints.Function, ?capture:Bool):Void;
	@:optional
	function dispatchEvent(type:String, details:Dynamic):Bool;
	@:optional
	function removeEventListener(eventType:String, listener:haxe.Constraints.Function, ?capture:Bool):Void;
};
