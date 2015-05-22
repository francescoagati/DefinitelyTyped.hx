extern class ValidationResult {
	function new(hasErrors:Bool, errorMsg:String):Void;
}
extern class ValidatorSet {
	function RegisterValidator(validator:IValidator):Dynamic;
}
typedef IValidator = {
	function Validate(value:Dynamic):ValidationResult;
};
extern class RequiredValidator {
	function Validate(value:Dynamic):ValidationResult;
}
