extern class ErrorFromName {
	function new(name:String, ?message:String):Void;
}
typedef IPromise<T> = {
	function cancel():Void;
	function done<U>(?onComplete:T -> Dynamic, ?onError:Dynamic -> Dynamic, ?onProgress:Dynamic -> Void):Void;
	@:overload(function<U>(?onComplete:T -> IPromise<U>, ?onError:Dynamic -> U, ?onProgress:Dynamic -> Void):IPromise<U> { })
	@:overload(function<U>(?onComplete:T -> IPromise<U>, ?onError:Dynamic -> Void, ?onProgress:Dynamic -> Void):IPromise<U> { })
	@:overload(function<U>(?onComplete:T -> U, ?onError:Dynamic -> IPromise<U>, ?onProgress:Dynamic -> Void):IPromise<U> { })
	@:overload(function<U>(?onComplete:T -> U, ?onError:Dynamic -> U, ?onProgress:Dynamic -> Void):IPromise<U> { })
	@:overload(function<U>(?onComplete:T -> U, ?onError:Dynamic -> Void, ?onProgress:Dynamic -> Void):IPromise<U> { })
	@:overload(function<U>(?onComplete:T -> Void, ?onError:Dynamic -> IPromise<U>, ?onProgress:Dynamic -> Void):IPromise<U> { })
	@:overload(function<U>(?onComplete:T -> Void, ?onError:Dynamic -> U, ?onProgress:Dynamic -> Void):IPromise<U> { })
	@:overload(function<U>(?onComplete:T -> Void, ?onError:Dynamic -> Void, ?onProgress:Dynamic -> Void):IPromise<U> { })
	function then<U>(?onComplete:T -> IPromise<U>, ?onError:Dynamic -> IPromise<U>, ?onProgress:Dynamic -> Void):IPromise<U>;
};
extern class Promise<T> {
	function new(?init:Dynamic -> Dynamic -> Dynamic -> Void, ?onCancel:haxe.Constraints.Function):Void;
	static function onerror(eventInfo:CustomEvent):Void;
	static function addEventListener(type:String, listener:haxe.Constraints.Function, ?capture:Bool):Void;
	@:overload(function(value:Dynamic):IPromise<Dynamic> { })
	static function any(value:Array<IPromise<Dynamic>>):IPromise<Dynamic>;
	static function as<U>(?value:U):IPromise<U>;
	function cancel():Void;
	static function dispatchEvent(type:String, details:Dynamic):Bool;
	function done<U>(?onComplete:T -> Dynamic, ?onError:Dynamic -> Dynamic, ?onProgress:Dynamic -> Void):Void;
	static function is(value:Dynamic):Bool;
	static function join(values:Dynamic):IPromise<Dynamic>;
	static function removeEventListener(eventType:String, listener:haxe.Constraints.Function, ?capture:Bool):Void;
	@:overload(function<U>(?onComplete:T -> IPromise<U>, ?onError:Dynamic -> U, ?onProgress:Dynamic -> Void):IPromise<U> { })
	@:overload(function<U>(?onComplete:T -> IPromise<U>, ?onError:Dynamic -> Void, ?onProgress:Dynamic -> Void):IPromise<U> { })
	@:overload(function<U>(?onComplete:T -> U, ?onError:Dynamic -> IPromise<U>, ?onProgress:Dynamic -> Void):IPromise<U> { })
	@:overload(function<U>(?onComplete:T -> U, ?onError:Dynamic -> U, ?onProgress:Dynamic -> Void):IPromise<U> { })
	@:overload(function<U>(?onComplete:T -> U, ?onError:Dynamic -> Void, ?onProgress:Dynamic -> Void):IPromise<U> { })
	@:overload(function<U>(?onComplete:T -> Void, ?onError:Dynamic -> IPromise<U>, ?onProgress:Dynamic -> Void):IPromise<U> { })
	@:overload(function<U>(?onComplete:T -> Void, ?onError:Dynamic -> U, ?onProgress:Dynamic -> Void):IPromise<U> { })
	@:overload(function<U>(?onComplete:T -> Void, ?onError:Dynamic -> Void, ?onProgress:Dynamic -> Void):IPromise<U> { })
	@:overload(function(promise:IPromise<Dynamic>, ?onComplete:Dynamic -> Dynamic, ?onError:Dynamic -> Dynamic, ?onProgress:Dynamic -> Void):IPromise<Dynamic> { })
	function then<U>(?onComplete:T -> IPromise<U>, ?onError:Dynamic -> IPromise<U>, ?onProgress:Dynamic -> Void):IPromise<U>;
	static function thenEach(values:Dynamic, ?complete:Dynamic -> Void, ?error:Dynamic -> Void, ?progress:Dynamic -> Void):IPromise<Dynamic>;
	static function timeout(?timeout:Float, ?promise:IPromise<Dynamic>):IPromise<Dynamic>;
	static function wrap<U>(?value:U):IPromise<U>;
	static function wrapError<U>(error:U):IPromise<U>;
}
typedef IXHROptions = {
	@:optional
	var type : String;
	var url : String;
	@:optional
	var user : String;
	@:optional
	var password : String;
	@:optional
	var headers : Dynamic;
	@:optional
	var data : Dynamic;
	@:optional
	var responseType : String;
	@:optional
	var customRequestInitializer : XMLHttpRequest -> Void;
};
extern class WinJSTopLevel {
	static var validation : Bool;
	static function log(message:String, ?tags:String, ?type:String):Void;
	static function log(message:Void -> String, ?tags:String, ?type:String):Void;
	static function strictProcessing():Void;
	static function xhr(options:IXHROptions):Promise<XMLHttpRequest>;
}
