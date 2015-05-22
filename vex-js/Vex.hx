typedef ICSSAttributes = { };
typedef IVexOptions = {
	@:optional
	var afterClose : Void -> Void;
	@:optional
	var afterOpen : JQuery -> Void;
	@:optional
	var content : String;
	@:optional
	var showCloseButton : Bool;
	@:optional
	var escapeButtonCloses : Bool;
	@:optional
	var overlayClosesOnClick : Bool;
	@:optional
	var appendLocation : haxe.extern.EitherType<HTMLElement, haxe.extern.EitherType<JQuery, String>>;
	@:optional
	var className : String;
	@:optional
	var css : ICSSAttributes;
	@:optional
	var overlayClassName : String;
	@:optional
	var overlayCSS : ICSSAttributes;
	@:optional
	var contentClassName : String;
	@:optional
	var contentCSS : ICSSAttributes;
	@:optional
	var closeClassName : String;
	@:optional
	var closeCSS : ICSSAttributes;
};
typedef Vex = {
	function open(options:IVexOptions):JQuery;
	function close(?id:Float):Bool;
	function closeAll():Bool;
	function closeByID(id:Float):Bool;
};
