typedef JQueryTinyScrollbarOptions = {
	@:optional
	var invertscroll : Bool;
	@:optional
	var axis : String;
	@:optional
	var wheel : Float;
	@:optional
	var scroll : Bool;
	@:optional
	var lockscroll : Bool;
	@:optional
	var size : Dynamic;
	@:optional
	var sizethumb : Dynamic;
};
typedef JQuery = {
	function tinyscrollbar(?options:JQueryTinyScrollbar.JQueryTinyScrollbarOptions):JQuery;
	function tinyscrollbar_update(?options:Dynamic):JQuery;
};
