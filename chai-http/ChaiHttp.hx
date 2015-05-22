typedef Promise<T> = {
	function then<U>(onFulfilled:T -> U, ?onRejected:Dynamic -> U):Promise<U>;
};
typedef Response = {
	var body : Dynamic;
	var type : String;
	var status : Float;
};
typedef Request = {
	>FinishedRequest,
	function attach(field:String, file:haxe.extern.EitherType<String, Buffer>, filename:String):Request;
	function set(field:String, val:String):Request;
	function query(params:Dynamic):Request;
	function send(data:Dynamic):Request;
	function auth(user:String, name:String):Request;
	function field(name:String, val:String):Request;
	function end(?callback:Dynamic -> Response -> Void):FinishedRequest;
};
typedef FinishedRequest = {
	function then(?success:Response -> Void, ?failure:Dynamic -> Void):FinishedRequest;
	function catch(?failure:Dynamic -> Void):FinishedRequest;
};
typedef Agent = {
	function get(url:String, ?callback:Dynamic -> Response -> Void):Request;
	function post(url:String, ?callback:Dynamic -> Response -> Void):Request;
	function put(url:String, ?callback:Dynamic -> Response -> Void):Request;
	function head(url:String, ?callback:Dynamic -> Response -> Void):Request;
	function del(url:String, ?callback:Dynamic -> Response -> Void):Request;
	function options(url:String, ?callback:Dynamic -> Response -> Void):Request;
	function patch(url:String, ?callback:Dynamic -> Response -> Void):Request;
};
typedef TypeComparison = {
	var ip : Dynamic;
};
