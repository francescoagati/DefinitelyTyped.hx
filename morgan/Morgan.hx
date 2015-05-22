typedef Options = {
	@:optional
	var buffer : Bool;
	@:optional
	var immediate : Bool;
	@:optional
	var skip : express.Request -> express.Response -> Bool;
	@:optional
	var stream : String -> Void;
};
extern class MorganTopLevel {
	static function token<T>(name:String, callback:express.Request -> express.Response -> T):express.RequestHandler;
	static function morgan(format:String, ?options:morgan.Options):express.RequestHandler;
	static function morgan(format:Combined, ?options:morgan.Options):express.RequestHandler;
	static function morgan(format:Common, ?options:morgan.Options):express.RequestHandler;
	static function morgan(format:Dev, ?options:morgan.Options):express.RequestHandler;
	static function morgan(format:Short, ?options:morgan.Options):express.RequestHandler;
	static function morgan(format:Tiny, ?options:morgan.Options):express.RequestHandler;
	static function morgan(custom:express.Request -> express.Response -> String):express.RequestHandler;
}
extern class MorganTopLevel {
	static function token<T>(name:String, callback:express.Request -> express.Response -> T):express.RequestHandler;
	static function morgan(format:String, ?options:morgan.Options):express.RequestHandler;
	static function morgan(format:Combined, ?options:morgan.Options):express.RequestHandler;
	static function morgan(format:Common, ?options:morgan.Options):express.RequestHandler;
	static function morgan(format:Dev, ?options:morgan.Options):express.RequestHandler;
	static function morgan(format:Short, ?options:morgan.Options):express.RequestHandler;
	static function morgan(format:Tiny, ?options:morgan.Options):express.RequestHandler;
	static function morgan(custom:express.Request -> express.Response -> String):express.RequestHandler;
}
extern class MorganTopLevel {
	static function token<T>(name:String, callback:express.Request -> express.Response -> T):express.RequestHandler;
	static function morgan(format:String, ?options:morgan.Options):express.RequestHandler;
	static function morgan(format:Combined, ?options:morgan.Options):express.RequestHandler;
	static function morgan(format:Common, ?options:morgan.Options):express.RequestHandler;
	static function morgan(format:Dev, ?options:morgan.Options):express.RequestHandler;
	static function morgan(format:Short, ?options:morgan.Options):express.RequestHandler;
	static function morgan(format:Tiny, ?options:morgan.Options):express.RequestHandler;
	static function morgan(custom:express.Request -> express.Response -> String):express.RequestHandler;
}
