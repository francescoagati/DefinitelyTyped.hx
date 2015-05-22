typedef XEditableOptions = {
	@:optional
	var ajaxOptions : Dynamic;
	@:optional
	var anim : String;
	@:optional
	var autotext : String;
	@:optional
	var defaultValue : Dynamic;
	@:optional
	var disabled : Bool;
	@:optional
	var display : Dynamic;
	@:optional
	var emptyclass : String;
	@:optional
	var emptytext : String;
	@:optional
	var error : Dynamic;
	@:optional
	var highlight : Dynamic;
	@:optional
	var mode : String;
	@:optional
	var name : String;
	@:optional
	var onblur : String;
	@:optional
	var params : Dynamic;
	@:optional
	var pk : Dynamic;
	@:optional
	var placement : String;
	@:optional
	var savenochange : Bool;
	@:optional
	var selector : String;
	@:optional
	var send : String;
	@:optional
	var showbuttons : Dynamic;
	@:optional
	var success : Dynamic;
	@:optional
	var toggle : String;
	@:optional
	var type : String;
	@:optional
	var unsavedclass : String;
	@:optional
	var url : Dynamic;
	@:optional
	var validate : Dynamic;
	@:optional
	var value : Dynamic;
};
typedef XEditableSubmitOptions = {
	@:optional
	var url : Dynamic;
	@:optional
	var data : Dynamic;
	@:optional
	var ajaxOptions : Dynamic;
	function error(obj:Dynamic):Void;
	function success(obj:Dynamic, config:Dynamic):Void;
};
typedef XEditable = {
	var options : XEditableOptions;
	function activate():Void;
	function destroy():Void;
	function disable():Void;
	function enable():Void;
	function getValue(isSingle:Bool):Dynamic;
	function hide():Void;
	function option(key:Dynamic, value:Dynamic):Void;
	function setValue(value:Dynamic, convertStr:Bool):Void;
	function show(closeAll:Bool):Void;
	function submit(options:XEditableSubmitOptions):Void;
	function toggle(closeAll:Bool):Void;
	function toggleDisabled():Void;
	function validate():Void;
};
typedef JQuery = {
	@:overload(function(method:String, ?params:Dynamic):XEditable { })
	function editable(?options:Dynamic):XEditable;
};
