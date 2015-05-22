typedef Gamepad = {
	var id : String;
	var index : Float;
	var timestamp : Float;
	var axes : Array<Float>;
	var buttons : Array<GamepadButton>;
	var connected : Bool;
	var mapping : String;
};
typedef GamepadEvent = {
	>Event,
	var gamepad : Gamepad;
};
typedef GamepadList = {
	var length : Float;
};
typedef GamepadButton = {
	var pressed : Bool;
	var value : Float;
};
typedef Navigator = {
	function getGamepads():Array<Gamepad.Gamepad>;
	function webkitGetGamepads():Gamepad.GamepadList;
};
