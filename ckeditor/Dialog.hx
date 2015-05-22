typedef IDialogDefinition = {
	@:optional
	var buttons : Array<Dynamic>;
	@:optional
	var contents : Array<Dynamic>;
	@:optional
	var height : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var onCancel : haxe.Constraints.Function;
	@:optional
	var onLoad : haxe.Constraints.Function;
	@:optional
	var onOk : haxe.Constraints.Function;
	@:optional
	var onShow : haxe.Constraints.Function;
	@:optional
	var resizable : Float;
	@:optional
	var title : String;
	@:optional
	var width : Float;
};
extern class DialogTopLevel {
	static function add(name:String, path:String):Void;
	static function add(name:String, dialogDefinition:IDialogDefinition):Void;
	static function addIframe(name:String, title:String, minWidth:Float, minHeight:Float, onContentLoad:haxe.Constraints.Function, userDefinition:Dynamic):Void;
	static function addUIElement(typeName:String, builder:haxe.Constraints.Function):Void;
	static function cancelButton():Void;
	static function exists(name:String):Void;
	static function getCurrent():Void;
	static function isTabEnabled(editor:Editor, dialogName:String, tabName:String):Bool;
	static function okButton():Void;
}
