typedef MIMEConverter = {
	function read(value:String):haxe.extern.EitherType<Dynamic, when.Promise<Dynamic>>;
	function write(value:Dynamic):haxe.extern.EitherType<String, when.Promise<String>>;
};
typedef Registry = {
	function lookup(mimeType:String):when.Promise<MIMEConverter>;
	function register(mimeType:String, converter:MIMEConverter):Void;
};
