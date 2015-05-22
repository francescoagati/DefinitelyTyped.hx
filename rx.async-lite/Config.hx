extern class ConfigTopLevel {
	static var useNativeEvents : Bool;
}
typedef ObservableStatic = {
	function startAsync<T>(functionAsync:Void -> IPromise<T>):Observable<T>;
	var fromCallback : { };
	var fromNodeCallback : { };
	@:overload(function<T>(element:Node, eventName:String, ?selector:Array<Dynamic> -> T):Observable<T> { })
	function fromEvent<T>(element:NodeList, eventName:String, ?selector:Array<Dynamic> -> T):Observable<T>;
	function fromEventPattern<T>(addHandler:haxe.Constraints.Function -> Void, removeHandler:haxe.Constraints.Function -> Void, ?selector:Array<Dynamic> -> T):Observable<T>;
};
