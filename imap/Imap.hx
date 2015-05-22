typedef ImapOptions = {
	var user : String;
	var password : String;
	var host : String;
	var port : Float;
	var tls : Bool;
};
typedef ImapBox = {
	var name : String;
	var readOnly : Bool;
	var newKeywords : Bool;
	var uidvalidity : Float;
	var uidnext : Float;
	var flags : Array<Dynamic>;
	var permFlags : Array<Dynamic>;
	var persistentUIDs : Bool;
	var messages : { var total : Float; var new : Float; var unseen : Float; };
};
typedef ImapChunk = {
	function toString(charset:String):String;
	var length : Float;
};
typedef ImapFetch = {
	@:overload(function(event:Error, callback:Error -> Void):Void { })
	@:overload(function(event:String, callback:haxe.Constraints.Function):Void { })
	function once(event:End, callback:Void -> Void):Void;
	@:overload(function(event:String, callback:haxe.Constraints.Function):Void { })
	function on(event:Message, callback:ImapMessage -> Float -> Void):Void;
};
typedef ImapBodyStream = {
	@:overload(function(event:String, callback:haxe.Constraints.Function):Void { })
	function once(event:End, callback:Void -> Void):Void;
	@:overload(function(event:String, callback:haxe.Constraints.Function):Void { })
	function on(event:Data, callback:ImapChunk -> Void):Void;
	function pipe(stream:Dynamic):Void;
};
typedef ImapMessage = {
	@:overload(function(event:String, callback:haxe.Constraints.Function):Void { })
	function once(event:Attributes, callback:Dynamic -> Void):Void;
	@:overload(function(event:String, callback:haxe.Constraints.Function):Void { })
	function on(event:Body, callback:ImapBodyStream -> Dynamic -> Void):Void;
};
extern class Imap {
	function new(options:ImapOptions):Void;
	function connect():Void;
	function openBox(name:String, a:Bool, callback:Error -> ImapBox -> Void):Void;
	@:overload(function(event:Error, callback:Error -> Void):Void { })
	@:overload(function(a:String, callback:haxe.Constraints.Function):Void { })
	function once(event:End, callback:Void -> Void):Void;
	function end():Void;
	@:overload(function(header:String):Dynamic { })
	function parseHeader(header:String):Dynamic;
	function search(searchTerms:Array<Dynamic>, callback:haxe.Constraints.Function):Void;
	function fetch(results:Dynamic, options:{ }):ImapFetch;
	var seq : { function fetch(messageSourceQuery:String, options:{ }):ImapFetch; };
}
