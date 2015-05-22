typedef DataError = {
	>Error,
	@:optional
	var httpStatus : Float;
	@:optional
	var errorDetails : Dynamic;
};
typedef ErrorHandler = { };
typedef EntityOptions = {
	var key : Dynamic;
	var keyType : Dynamic;
};
typedef Getter = { };
typedef Setter = { };
typedef QueryOptions = {
	@:optional
	var errorHandler : ErrorHandler;
	@:optional
	var requireTotalCount : Bool;
};
typedef ODataQueryOptions = {
	>QueryOptions,
	@:optional
	var adapter : Dynamic;
};
typedef IQuery = {
	function enumerate():JQueryPromise<Array<Dynamic>>;
	function count():JQueryPromise<Float>;
	function slice(skip:Float, ?take:Float):IQuery;
	@:overload(function(field:Getter):IQuery { })
	@:overload(function(field:{ var field : String; @:optional
	var desc : Bool; }):IQuery { })
	@:overload(function(field:{ var field : Getter; @:optional
	var desc : Bool; }):IQuery { })
	function sortBy(field:String):IQuery;
	@:overload(function(field:Getter):IQuery { })
	@:overload(function(field:{ var field : String; @:optional
	var desc : Bool; }):IQuery { })
	@:overload(function(field:{ var field : Getter; @:optional
	var desc : Bool; }):IQuery { })
	function thenBy(field:String):IQuery;
	@:overload(function(field:String, value:Dynamic):IQuery { })
	@:overload(function(criteria:Array<Dynamic>):IQuery { })
	function filter(field:String, operator:String, value:Dynamic):IQuery;
	@:overload(function(field:Array<String>):IQuery { })
	@:overload(function(field:haxe.extern.Rest<String>):IQuery { })
	@:overload(function(field:Getter):IQuery { })
	@:overload(function(field:Array<Getter>):IQuery { })
	@:overload(function(field:haxe.extern.Rest<Getter>):IQuery { })
	function select(field:String):IQuery;
	@:overload(function(field:Array<Getter>):IQuery { })
	@:overload(function(field:Array<{ var field : String; @:optional
	var desc : Bool; }>):IQuery { })
	@:overload(function(field:Array<{ var field : Getter; @:optional
	var desc : Bool; }>):IQuery { })
	function groupBy(field:Array<String>):IQuery;
	function sum(?getter:String):JQueryPromise<Float>;
	function min(?getter:String):JQueryPromise<Dynamic>;
	function max(?getter:String):JQueryPromise<Dynamic>;
	function avg(?getter:String):JQueryPromise<Dynamic>;
	@:overload(function(seed:Float, step:Dynamic -> Dynamic -> Dynamic, ?finalize:Dynamic -> Dynamic):JQueryPromise<Dynamic> { })
	function aggregate(step:Float):JQueryPromise<Dynamic>;
};
typedef ArrayQuery = {
	>IQuery,
	function toArray():Array<Dynamic>;
};
typedef RemoteQuery = {
	>IQuery,
};
extern class Guid {
	@:overload(function(?value:Dynamic):Void { })
	function new(?value:String):Void;
	function toString():String;
	function valueOf():String;
	function toJSON():String;
}
extern class EdmLiteral {
	function new(value:Dynamic):Void;
	function valueOf():Dynamic;
}
extern class DevExpress.dataTopLevel {
	static function base64_encode(input:String):String;
	static function base64_encode(input:Array<Dynamic>):String;
	static function query(?items:Array<Dynamic>):IQuery;
	static var queryImpl : { var remote : String -> QueryOptions -> RemoteQuery; var array : Array<Dynamic> -> QueryOptions -> ArrayQuery; };
}
