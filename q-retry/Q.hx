typedef IRetryOptions = {
	@:optional
	var limit : Float;
	@:optional
	var interval : Float;
	@:optional
	var maxInterval : Float;
	@:optional
	var intervalMultiplier : Float;
};
typedef Promise<T> = {
	@:overload(function<U>(process:T -> IPromise<U>, onFail:Dynamic -> Float -> Void, ?options:IRetryOptions):Promise<U> { })
	@:overload(function<U>(process:T -> IPromise<U>, limit:Float):Promise<U> { })
	@:overload(function<U>(process:T -> IPromise<U>, ?options:IRetryOptions):Promise<U> { })
	@:overload(function<U>(process:T -> U, onFail:Dynamic -> Float -> Void, limit:Float):Promise<U> { })
	@:overload(function<U>(process:T -> U, onFail:Dynamic -> Float -> Void, ?options:IRetryOptions):Promise<U> { })
	@:overload(function<U>(process:T -> U, limit:Float):Promise<U> { })
	@:overload(function<U>(process:T -> U, ?options:IRetryOptions):Promise<U> { })
	function retry<U>(process:T -> IPromise<U>, onFail:Dynamic -> Float -> Void, limit:Float):Promise<U>;
};
extern class QTopLevel {
	static function retry<U>(process:Void -> IPromise<U>, onFail:Dynamic -> Float -> Void, limit:Float):Promise<U>;
	static function retry<U>(process:Void -> IPromise<U>, onFail:Dynamic -> Float -> Void, ?options:IRetryOptions):Promise<U>;
	static function retry<U>(process:Void -> IPromise<U>, limit:Float):Promise<U>;
	static function retry<U>(process:Void -> IPromise<U>, ?options:IRetryOptions):Promise<U>;
	static function retry<U>(process:Void -> U, onFail:Dynamic -> Float -> Void, limit:Float):Promise<U>;
	static function retry<U>(process:Void -> U, onFail:Dynamic -> Float -> Void, ?options:IRetryOptions):Promise<U>;
	static function retry<U>(process:Void -> U, limit:Float):Promise<U>;
	static function retry<U>(process:Void -> U, ?options:IRetryOptions):Promise<U>;
}
