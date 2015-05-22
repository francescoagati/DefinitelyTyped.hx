extern class BodyParserTopLevel {
	static function json(?options:{ @:optional
	var inflate : Bool; @:optional
	var limit : Dynamic; @:optional
	var type : Dynamic; @:optional
	var verify : express.Request -> express.Response -> Buffer -> String -> Void; @:optional
	var strict : Bool; @:optional
	var receiver : String -> Dynamic -> Dynamic; }):express.RequestHandler;
	static function raw(?options:{ @:optional
	var inflate : Bool; @:optional
	var limit : Dynamic; @:optional
	var type : Dynamic; @:optional
	var verify : express.Request -> express.Response -> Buffer -> String -> Void; }):express.RequestHandler;
	static function text(?options:{ @:optional
	var inflate : Bool; @:optional
	var limit : Dynamic; @:optional
	var type : Dynamic; @:optional
	var verify : express.Request -> express.Response -> Buffer -> String -> Void; @:optional
	var defaultCharset : String; }):express.RequestHandler;
	static function urlencoded(?options:{ @:optional
	var inflate : Bool; @:optional
	var limit : Dynamic; @:optional
	var type : Dynamic; @:optional
	var verify : express.Request -> express.Response -> Buffer -> String -> Void; @:optional
	var extended : Bool; }):express.RequestHandler;
}
