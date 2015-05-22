typedef IActionCall = { };
typedef IActionConfig = {
	>IActionCall,
	>IAction,
	@:optional
	var action : IActionCall;
	@:optional
	var timeout : Float;
};
typedef IAction = {
	@:optional
	var desc : String;
};
