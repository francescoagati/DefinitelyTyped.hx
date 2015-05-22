typedef OpenParameters = { };
typedef FormOpenParameters = {
	>OpenParameters,
	var formid : String;
	@:optional
	var navbar : String;
	@:optional
	var cmdbar : String;
};
extern class UtilityTopLevel {
	static function alertDialog(message:String, onCloseCallback:Void -> Void):Void;
	static function confirmDialog(message:String, yesCloseCallback:Void -> Void, noCloseCallback:Void -> Void):Void;
	static function isActivityType(entityType:String):Bool;
	static function openEntityForm(name:String, ?id:String, ?parameters:FormOpenParameters):Void;
	static function openWebResource(webResourceName:String, ?webResourceData:String, ?width:Float, ?height:Float):Window;
}
