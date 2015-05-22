typedef JQueryCustomSelectOption = {
	@:optional
	var customClass : String;
	@:optional
	var mapClass : Bool;
	@:optional
	var mapStyle : Bool;
};
typedef JQuery = {
	function customSelect(val:JQueryCustomSelectOption):JQuery;
};
