typedef PgwModalOption = {
	@:optional
	var content : String;
	@:optional
	var target : String;
	@:optional
	var url : String;
	@:optional
	var title : String;
	@:optional
	var titleBar : Bool;
	@:optional
	var mainClassName : String;
	@:optional
	var backdropClassName : String;
	@:optional
	var maxWidth : Float;
	@:optional
	var angular : Bool;
	@:optional
	var modalData : Dynamic;
	@:optional
	var ajaxOptions : Dynamic;
	@:optional
	var closable : Bool;
	@:optional
	var closeContent : String;
	@:optional
	var closeOnEscape : Bool;
	@:optional
	var closeOnBackgroundClick : Bool;
	@:optional
	var loadingContent : String;
	@:optional
	var errorContent : String;
	@:optional
	var pushContent : String;
};
typedef PgwModalMethod = { };
typedef ZeptoStatic = {
	var pgwModal : PgwModalMethod;
};
typedef JQueryStatic = {
	var pgwModal : PgwModalMethod;
};
