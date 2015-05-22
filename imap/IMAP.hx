typedef Config = {
	var user : String;
	var password : String;
	@:optional
	var xoauth : String;
	@:optional
	var xoauth2 : String;
	@:optional
	var host : String;
	@:optional
	var port : Float;
	@:optional
	var tls : Bool;
	@:optional
	var tlsOptions : Dynamic;
	@:optional
	var autotls : String;
	@:optional
	var connTimeout : Float;
	@:optional
	var authTimeout : Float;
	@:optional
	var keepalive : Dynamic;
	@:optional
	var debug : haxe.Constraints.Function;
};
typedef KeepAlive = {
	@:optional
	var interval : Float;
	@:optional
	var idleInterval : Float;
	@:optional
	var forceNoop : Bool;
};
typedef Box = {
	var name : String;
	@:optional
	var readOnly : Bool;
	var newKeywords : Bool;
	var uidvalidity : Float;
	var uidnext : Float;
	var flags : Array<String>;
	var permFlags : Array<String>;
	var persistentUIDs : Bool;
	var messages : { var total : Float; var new : Float; var unseen : Float; };
};
typedef ImapMessage = {
	>NodeJS.EventEmitter,
};
typedef FetchOptions = {
	@:optional
	var markSeen : Bool;
	@:optional
	var struct : Bool;
	@:optional
	var envelope : Bool;
	@:optional
	var size : Bool;
	@:optional
	var modifiers : Dynamic;
	@:optional
	var bodies : Dynamic;
};
typedef ImapFetch = {
	>NodeJS.EventEmitter,
};
typedef Folder = {
	var attribs : Array<String>;
	var delimiter : String;
	var children : Array<Folder>;
	var parent : Folder;
};
typedef MailBoxes = { };
typedef AppendOptions = {
	@:optional
	var mailbox : String;
	@:optional
	var flags : Dynamic;
	@:optional
	var date : Date;
};
typedef MessageFunctions = {
	function search(criteria:Array<Dynamic>, callback:Error -> Array<String> -> Void):Void;
	function fetch(source:Dynamic, options:FetchOptions):ImapFetch;
	function copy(source:Dynamic, mailboxName:String, callback:Error -> Void):Void;
	function move(source:Dynamic, mailboxName:String, callback:Error -> Void):Void;
	function addFlags(source:Dynamic, flags:Dynamic, callback:Error -> Void):Void;
	function delFlags(source:Dynamic, flags:Dynamic, callback:Error -> Void):Void;
	function setFlags(source:Dynamic, flags:Dynamic, callback:Error -> Void):Void;
	function addKeywords(source:Dynamic, keywords:Dynamic, callback:Error -> Void):Void;
	function delKeywords(source:Dynamic, keywords:Dynamic, callback:Error -> Void):Void;
	function setKeywords(source:Dynamic, keywords:Dynamic, callback:Error -> Void):Void;
	function serverSupports(capability:String):Bool;
};
extern class Connection {
	function new(config:Config):Void;
	function addListener(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	function on(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	function once(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	function removeListener(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	function removeAllListeners(?event:String):NodeJS.EventEmitter;
	function setMaxListeners(n:Float):Void;
	function listeners(event:String):Array<haxe.Constraints.Function>;
	function emit(event:String, args:haxe.extern.Rest<Dynamic>):Bool;
	function search(criteria:Array<Dynamic>, callback:Error -> Array<String> -> Void):Void;
	function fetch(source:Dynamic, options:FetchOptions):ImapFetch;
	function copy(source:Dynamic, mailboxName:String, callback:Error -> Void):Void;
	function move(source:Dynamic, mailboxName:String, callback:Error -> Void):Void;
	function addFlags(source:Dynamic, flags:Dynamic, callback:Error -> Void):Void;
	function delFlags(source:Dynamic, flags:Dynamic, callback:Error -> Void):Void;
	function setFlags(source:Dynamic, flags:Dynamic, callback:Error -> Void):Void;
	function addKeywords(source:Dynamic, keywords:Dynamic, callback:Error -> Void):Void;
	function delKeywords(source:Dynamic, keywords:Dynamic, callback:Error -> Void):Void;
	function setKeywords(source:Dynamic, keywords:Dynamic, callback:Error -> Void):Void;
	function serverSupports(capability:String):Bool;
	static function parseHeader(rawHeader:String, ?disableAutoDecode:Bool):Dynamic;
	var state : String;
	var delimiter : String;
	var namespaces : { var personal : Array<Dynamic>; var other : Array<Dynamic>; var shared : Array<Dynamic>; };
	var seq : MessageFunctions;
	function connect():Void;
	function end():Void;
	function destroy():Void;
	@:overload(function(mailboxName:String, openReadOnly:Bool, callback:Error -> Box -> Void):Void { })
	@:overload(function(mailboxName:String, openReadOnly:Bool, modifiers:Dynamic, callback:Error -> Box -> Void):Void { })
	function openBox(mailboxName:String, callback:Error -> Box -> Void):Void;
	@:overload(function(autoExpunge:Bool, callback:Error -> Void):Void { })
	function closeBox(callback:Error -> Void):Void;
	function addBox(mailboxName:String, callback:Error -> Void):Void;
	function delBox(mailboxName:String, callback:Error -> Array<String> -> Void):Void;
	function renameBox(oldMailboxName:String, newMailboxName:String, callback:Error -> Box -> Void):Void;
	function subscribeBox(mailboxName:String, callback:Error -> Void):Void;
	function unsubscribeBox(mailboxName:String, callback:Error -> Void):Void;
	function status(mailboxName:String, callback:Error -> Box -> Void):Void;
	@:overload(function(nsPrefix:String, callback:Error -> MailBoxes -> Void):Void { })
	function getBoxes(callback:Error -> MailBoxes -> Void):Void;
	@:overload(function(nsPrefix:String, callback:Error -> MailBoxes -> Void):Void { })
	function getSubscribedBoxes(callback:Error -> MailBoxes -> Void):Void;
	@:overload(function(uids:Dynamic, callback:Error -> Void):Void { })
	function expunge(callback:Error -> Void):Void;
	@:overload(function(msgData:Dynamic, options:AppendOptions, callback:Error -> Void):Void { })
	function append(msgData:Dynamic, callback:Error -> Void):Void;
}
