extern class DnsTopLevel {
	static function lookup(domain:String, family:Float, callback:Error -> String -> Float -> Void):String;
	static function lookup(domain:String, callback:Error -> String -> Float -> Void):String;
	static function resolve(domain:String, rrtype:String, callback:Error -> Array<String> -> Void):Array<String>;
	static function resolve(domain:String, callback:Error -> Array<String> -> Void):Array<String>;
	static function resolve4(domain:String, callback:Error -> Array<String> -> Void):Array<String>;
	static function resolve6(domain:String, callback:Error -> Array<String> -> Void):Array<String>;
	static function resolveMx(domain:String, callback:Error -> Array<String> -> Void):Array<String>;
	static function resolveTxt(domain:String, callback:Error -> Array<String> -> Void):Array<String>;
	static function resolveSrv(domain:String, callback:Error -> Array<String> -> Void):Array<String>;
	static function resolveNs(domain:String, callback:Error -> Array<String> -> Void):Array<String>;
	static function resolveCname(domain:String, callback:Error -> Array<String> -> Void):Array<String>;
	static function reverse(ip:String, callback:Error -> Array<String> -> Void):Array<String>;
}
