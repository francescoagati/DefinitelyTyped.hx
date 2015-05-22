typedef SuperTest = {
	>superagent.SuperAgent<Test>,
};
typedef Test = {
	>superagent.Request<Test>,
	var url : String;
	function serverAddress(app:Dynamic, path:String):String;
	@:overload(function(status:Float, body:String, ?callback:CallbackHandler):Test { })
	@:overload(function(body:String, ?callback:CallbackHandler):Test { })
	@:overload(function(body:js.RegExp, ?callback:CallbackHandler):Test { })
	@:overload(function(body:Dynamic, ?callback:CallbackHandler):Test { })
	@:overload(function(field:String, val:String, ?callback:CallbackHandler):Test { })
	@:overload(function(field:String, val:js.RegExp, ?callback:CallbackHandler):Test { })
	@:overload(function(checker:Response -> Dynamic):Test { })
	function expect(status:Float, ?callback:CallbackHandler):Test;
};
typedef Response = {
	>superagent.Response,
};
extern class SupertestTopLevel {
	static function supertest(app:Dynamic):supertest.SuperTest;
	static function agent(?app:Dynamic):supertest.SuperTest;
}
extern class SupertestTopLevel {
	static function supertest(app:Dynamic):supertest.SuperTest;
	static function agent(?app:Dynamic):supertest.SuperTest;
}
extern class SupertestTopLevel {
	static function supertest(app:Dynamic):supertest.SuperTest;
	static function agent(?app:Dynamic):supertest.SuperTest;
}
