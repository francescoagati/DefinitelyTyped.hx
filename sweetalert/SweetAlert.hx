typedef SettingsBase = {
	@:optional
	var text : String;
	@:optional
	var type : String;
	@:optional
	var allowEscapeKey : Bool;
	@:optional
	var customClass : String;
	@:optional
	var allowOutsideClick : Bool;
	@:optional
	var showCancelButton : Bool;
	@:optional
	var showConfirmButton : Bool;
	@:optional
	var confirmButtonText : String;
	@:optional
	var confirmButtonColor : String;
	@:optional
	var cancelButtonText : String;
	@:optional
	var closeOnConfirm : Bool;
	@:optional
	var closeOnCancel : Bool;
	@:optional
	var imageUrl : String;
	@:optional
	var imageSize : String;
	@:optional
	var timer : Float;
	@:optional
	var html : Bool;
	@:optional
	var animation : haxe.extern.EitherType<Bool, String>;
	@:optional
	var inputType : String;
	@:optional
	var inputPlaceholder : String;
};
typedef Settings = {
	>SettingsBase,
	var title : String;
};
typedef SetDefaultsSettings = {
	>SettingsBase,
	@:optional
	var title : String;
};
typedef SweetAlertStatic = {
	function setDefaults(settings:SetDefaultsSettings):Void;
	function close():Void;
	function showInputError(errorMessage:String):Void;
};
