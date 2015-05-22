typedef StateMachineErrorCallback = { };
typedef StateMachineEventDef = {
	var name : String;
	var from : Dynamic;
	var to : String;
};
typedef StateMachineEvent = { };
typedef StateMachineConfig = {
	@:optional
	var initial : Dynamic;
	@:optional
	var events : Array<StateMachineEventDef>;
	@:optional
	var callbacks : { };
	@:optional
	var target : StateMachine;
	@:optional
	var error : StateMachineErrorCallback;
};
typedef StateMachineStatic = {
	var VERSION : String;
	var WILDCARD : String;
	var ASYNC : String;
	var Result : { var SUCCEEDED : Float; var NOTRANSITION : Float; var CANCELLED : Float; var ASYNC : Float; };
	var Error : { var INVALID_TRANSITION : Float; var PENDING_TRANSITION : Float; var INVALID_CALLBACK : Float; };
	function create(config:StateMachineConfig, ?target:StateMachine):StateMachine;
};
typedef StateMachineTransition = {
	function cancel():Void;
};
typedef StateMachineIs = { };
typedef StateMachineCan = { };
typedef StateMachine = {
	var current : String;
	var is : StateMachineIs;
	var can : StateMachineCan;
	var cannot : StateMachineCan;
	var error : StateMachineErrorCallback;
	var transition : StateMachineTransition;
};
extern class State-machineTopLevel {
	static var StateMachine : StateMachineStatic;
}
extern class State-machineTopLevel {
	static var StateMachine : StateMachineStatic;
}
