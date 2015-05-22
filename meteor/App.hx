extern class AppTopLevel {
	static function accessRule(domainRule:String, ?options:{ @:optional
	var launchExternal : Bool; }):Dynamic;
	static function configurePlugin(pluginName:String, config:Dynamic):Void;
	static function icons(icons:Dynamic):Void;
	static function info(options:{ @:optional
	var id : String; @:optional
	var version : String; @:optional
	var name : String; @:optional
	var description : String; @:optional
	var author : String; @:optional
	var email : String; @:optional
	var website : String; }):Void;
	static function launchScreens(launchScreens:Dynamic):Void;
	static function setPreference(name:String, value:String):Void;
}
