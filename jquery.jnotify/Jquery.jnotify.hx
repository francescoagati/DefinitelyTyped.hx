typedef JNotifyInitOptions = {
	@:optional
	var oneAtTime : Bool;
	@:optional
	var appendType : String;
};
typedef JNotifyOptions = {
	@:optional
	var text : String;
	@:optional
	var type : String;
	@:optional
	var showIcon : Bool;
	@:optional
	var permanent : Bool;
	@:optional
	var disappearTime : Float;
};
typedef JQuery = {
	function jnotifyInizialize(?options:JNotifyInitOptions):Dynamic;
	function jnotifyAddMessage(?options:JNotifyOptions):Dynamic;
};
