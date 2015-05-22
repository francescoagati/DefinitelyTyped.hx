typedef DSHttpAdapterOptions = {
	@:optional
	var serialize : String -> Dynamic -> Dynamic;
	@:optional
	var deserialize : String -> Dynamic -> Dynamic;
	@:optional
	var queryTransform : String -> DSFilterParams -> Dynamic;
	@:optional
	var httpConfig : Dynamic;
	@:optional
	var forceTrailingSlash : Bool;
	@:optional
	var log : haxe.extern.EitherType<Bool, ?Dynamic -> haxe.extern.Rest<Dynamic> -> Void>;
	@:optional
	var error : haxe.extern.EitherType<Bool, ?Dynamic -> haxe.extern.Rest<Dynamic> -> Void>;
};
typedef DSHttpAdapterPromiseResolveType = {
	var data : Dynamic;
	var headers : Dynamic;
	var status : Float;
	var config : Dynamic;
};
typedef DSHttpAdapter = {
	>IDSAdapter,
	function new(?options:DSHttpAdapterOptions):DSHttpAdapter;
	function HTTP(?options:Dynamic):JSDataPromise<DSHttpAdapterPromiseResolveType>;
	function DEL(url:String, ?data:Dynamic, ?options:Dynamic):JSDataPromise<DSHttpAdapterPromiseResolveType>;
	function GET(url:String, ?data:Dynamic, ?options:Dynamic):JSDataPromise<DSHttpAdapterPromiseResolveType>;
	function POST(url:String, ?data:Dynamic, ?options:Dynamic):JSDataPromise<DSHttpAdapterPromiseResolveType>;
	function PUT(url:String, ?data:Dynamic, ?options:Dynamic):JSDataPromise<DSHttpAdapterPromiseResolveType>;
};
