typedef JQueryMenuAimOptions = {
	@:optional
	function activate():Void;
	@:optional
	function deactivate():Void;
	@:optional
	function enter():Void;
	@:optional
	function exit():Void;
	@:optional
	function exitMenu():Void;
	@:optional
	var rowSelector : String;
	@:optional
	var submenuSelector : String;
	@:optional
	var submenuDirection : String;
};
typedef JQuery = {
	function menuAim(options:JQueryMenuAimOptions):JQuery;
};
