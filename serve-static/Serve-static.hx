extern class Serve-staticTopLevel {
	static function serveStatic(root:String, ?options:{ @:optional
	var dotfiles : String; @:optional
	var etag : Bool; @:optional
	var extensions : Array<String>; @:optional
	var index : Bool; @:optional
	var lastModified : Bool; @:optional
	var maxAge : Float; @:optional
	var redirect : Bool; @:optional
	var setHeaders : express.Response -> String -> Dynamic -> Dynamic; }):express.Handler;
}
extern class Serve-staticTopLevel {
	static function serveStatic(root:String, ?options:{ @:optional
	var dotfiles : String; @:optional
	var etag : Bool; @:optional
	var extensions : Array<String>; @:optional
	var index : Bool; @:optional
	var lastModified : Bool; @:optional
	var maxAge : Float; @:optional
	var redirect : Bool; @:optional
	var setHeaders : express.Response -> String -> Dynamic -> Dynamic; }):express.Handler;
}
