typedef IValidator = {
	function validate():ValidatorValidationResult;
};
typedef ValidatorValidationResult = {
	var isValid : Bool;
	@:optional
	var name : String;
	var value : Dynamic;
	var brokenRule : Dynamic;
	var validationRules : Array<Dynamic>;
};
typedef ValidationGroupValidationResult = {
	var isValid : Bool;
	var brokenRules : Array<Dynamic>;
	var validators : Array<IValidator>;
};
typedef GroupConfig = {
	>EventsMixin<GroupConfig>,
	var group : Dynamic;
	var validators : Array<IValidator>;
	function validate():ValidationGroupValidationResult;
};
extern class ValidationEngineTopLevel {
	static function getGroupConfig(group:Dynamic):GroupConfig;
	static function getGroupConfig():GroupConfig;
	static function validateGroup(group:Dynamic):ValidationGroupValidationResult;
	static function validateGroup():ValidationGroupValidationResult;
	static function validateModel(model:Dynamic):ValidationGroupValidationResult;
	static function registerModelForValidation(model:Dynamic):Void;
	static var hardwareBackButton : JQueryCallback;
	static function processHardwareBackButton():Void;
	static var rtlEnabled : Bool;
	static function registerComponent(name:String, componentClass:Dynamic):Void;
	static function registerComponent(name:String, namespace:Dynamic, componentClass:Dynamic):Void;
	static function requestAnimationFrame(callback:haxe.Constraints.Function):Float;
	static function cancelAnimationFrame(requestID:Float):Void;
}
extern class Action {

}
extern class EndpointSelector {
	function new(options:{ }):Void;
	function urlFor(key:String):String;
}
