typedef ToastrOptions = {
	@:optional
	var showEasing : String;
	@:optional
	var hideEasing : String;
	@:optional
	var showMethod : String;
	@:optional
	var hideMethod : String;
	@:optional
	var closeButton : Bool;
	@:optional
	var closeHtml : String;
	@:optional
	var tapToDismiss : Bool;
	@:optional
	var toastClass : String;
	@:optional
	var containerId : String;
	@:optional
	var debug : Bool;
	@:optional
	var showDuration : Float;
	@:optional
	var onShown : Void -> Void;
	@:optional
	var hideDuration : Float;
	@:optional
	var onHidden : Void -> Void;
	@:optional
	var extendedTimeOut : Float;
	@:optional
	var iconClasses : { var error : String; var info : String; var success : String; var warning : String; };
	@:optional
	var iconClass : String;
	@:optional
	var positionClass : String;
	@:optional
	var backgroundpositionClass : String;
	@:optional
	var timeOut : Float;
	@:optional
	var titleClass : String;
	@:optional
	var messageClass : String;
	@:optional
	var newestOnTop : Bool;
	@:optional
	var preventDuplicates : Bool;
	@:optional
	var progressBar : Bool;
	@:optional
	var onclick : Void -> Void;
};
typedef ToastrDisplayMethod = { };
typedef Toastr = {
	var clear : { };
	var error : ToastrDisplayMethod;
	var info : ToastrDisplayMethod;
	var options : ToastrOptions;
	var success : ToastrDisplayMethod;
	var warning : ToastrDisplayMethod;
	var version : String;
};
extern class ToastrTopLevel {
	static var toastr : Toastr;
}
