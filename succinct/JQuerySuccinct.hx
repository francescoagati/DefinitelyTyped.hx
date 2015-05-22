typedef Options = {
	@:optional
	var size : Float;
	@:optional
	var omission : String;
	@:optional
	var ignore : Bool;
};
typedef JQuery = {
	function succinct(?settings:JQuerySuccinct.Options):JQuery;
};
