typedef IErrorCustomMessage = { };
typedef IPropertyValidator = {
	function isAcceptable(s:Dynamic):Bool;
	@:optional
	var customMessage : IErrorCustomMessage;
	@:optional
	var tagName : String;
};
typedef IStringValidator = {
	>IPropertyValidator,
	function isAcceptable(s:String):Bool;
};
typedef IAsyncPropertyValidator = {
	function isAcceptable(s:Dynamic):Q.Promise<Bool>;
	@:optional
	var customMessage : IErrorCustomMessage;
	var isAsync : Bool;
	@:optional
	var tagName : String;
};
typedef IAsyncStringPropertyValidator = {
	>IAsyncPropertyValidator,
	function isAcceptable(s:String):Q.Promise<Bool>;
};
@:enum abstract CompareOperator(Int) {
	var LessThan = 0;
	var LessThanEqual = 1;
	var Equal = 2;
	var NotEqual = 3;
	var GreaterThanEqual = 4;
	var GreaterThan = 5;
}
extern class StringFce {
	static function format(s:String, args:Dynamic):String;
}
extern class NumberFce {
	static function GetNegDigits(value:String):Float;
}
extern class LettersOnlyValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class ZipCodeValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class EmailValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class UrlValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class RequiredValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class DateValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class DateISOValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class NumberValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class DigitValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class SignedDigitValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class MinLengthValidator {
	var MinLength : Float;
	function new(?MinLength:Float):Void;
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class MaxLengthValidator {
	var MaxLength : Float;
	function new(?MaxLength:Float):Void;
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class RangeLengthValidator {
	var RangeLength : Array<Float>;
	function new(?RangeLength:Array<Float>):Void;
	function isAcceptable(s:String):Bool;
	var MinLength : Float;
	var MaxLength : Float;
	var tagName : String;
}
extern class MinValidator {
	var Min : Float;
	function new(?Min:Float):Void;
	function isAcceptable(s:Dynamic):Bool;
	var tagName : String;
}
extern class MaxValidator {
	var Max : Float;
	function new(?Max:Float):Void;
	function isAcceptable(s:Dynamic):Bool;
	var tagName : String;
}
extern class RangeValidator {
	var Range : Array<Float>;
	function new(?Range:Array<Float>):Void;
	function isAcceptable(s:Dynamic):Bool;
	var Min : Float;
	var Max : Float;
	var tagName : String;
}
extern class StepValidator {
	var Step : String;
	function new(?Step:String):Void;
	function isAcceptable(s:Dynamic):Bool;
	var tagName : String;
}
extern class PatternValidator {
	var Pattern : String;
	function new(?Pattern:String):Void;
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class ContainsValidator {
	var Options : Q.Promise<Array<Dynamic>>;
	function new(Options:Q.Promise<Array<Dynamic>>):Void;
	function isAcceptable(s:String):Q.Promise<Bool>;
	var isAsync : Bool;
	var tagName : String;
}
typedef IError = {
	var HasError : Bool;
	var ErrorMessage : String;
	@:optional
	var TranslateArgs : IErrorTranslateArgs;
};
typedef IErrorTranslateArgs = {
	var TranslateId : String;
	var MessageArgs : Dynamic;
	@:optional
	var CustomMessage : IErrorCustomMessage;
};
typedef IOptional = { };
typedef IValidationFailure = {
	>IError,
	var IsAsync : Bool;
	var Error : IError;
};
typedef IValidationResult = {
	var Name : String;
	function Add(validationResult:IValidationResult):Void;
	function Remove(index:Float):Void;
	var Children : Array<IValidationResult>;
	var HasErrors : Bool;
	var HasErrorsDirty : Bool;
	var ErrorMessage : String;
	var ErrorCount : Float;
	@:optional
	var Optional : IOptional;
	@:optional
	var TranslateArgs : Array<IErrorTranslateArgs>;
};
extern class Error {
	var HasError : Bool;
	var ErrorMessage : String;
	function new():Void;
}
extern class ValidationFailure {
	var Error : IError;
	var IsAsync : Bool;
	function new(Error:IError, IsAsync:Bool):Void;
	var HasError : Bool;
	var ErrorMessage : String;
	var TranslateArgs : IErrorTranslateArgs;
}
extern class ValidationResult {
	var Name : String;
	function new(Name:String):Void;
	var IsDirty : Bool;
	var Children : Array<IValidationResult>;
	function Add(error:IValidationResult):Void;
	function Remove(index:Float):Void;
	var Optional : IOptional;
	var TranslateArgs : Array<IErrorTranslateArgs>;
	var HasErrorsDirty : Bool;
	var HasErrors : Bool;
	var ErrorCount : Float;
	var ErrorMessage : String;
}
extern class CompositeValidationResult {
	var Name : String;
	var Children : Array<IValidationResult>;
	function new(Name:String):Void;
	var Optional : IOptional;
	function AddFirst(error:IValidationResult):Void;
	function Add(error:IValidationResult):Void;
	function Remove(index:Float):Void;
	var HasErrorsDirty : Bool;
	var HasErrors : Bool;
	var ErrorCount : Float;
	var ErrorMessage : String;
	var TranslateArgs : Array<IErrorTranslateArgs>;
	function LogErrors(?headerMessage:String):Void;
	var Errors : { };
	var FlattenErros : Dynamic;
	function SetDirty():Void;
	function SetPristine():Void;
	function SetDirtyEx(node:Dynamic, dirty:Dynamic):Dynamic;
	function flattenErrors(node:Dynamic, errorCollection:Dynamic):Dynamic;
	function traverse(node:Dynamic, indent:Dynamic):Dynamic;
}
typedef IValidate = { };
typedef IAsyncValidate = { };
typedef IValidatorFce = {
	var Name : String;
	@:optional
	var ValidationFce : IValidate;
	@:optional
	var AsyncValidationFce : IAsyncValidate;
};
typedef IValidator = {
	function Validate(context:Dynamic):IValidationFailure;
	function ValidateAsync(context:Dynamic):Q.Promise<IValidationFailure>;
	var Error : IError;
};
typedef IAbstractValidator<T> = {
	function RuleFor(prop:String, validator:IPropertyValidator):Dynamic;
	function ValidationFor(prop:String, validator:IValidatorFce):Dynamic;
	function ValidatorFor<K>(prop:String, validator:IAbstractValidator<K>):Dynamic;
	function CreateRule(name:String):IAbstractValidationRule<Dynamic>;
	function CreateAbstractRule(name:String):IAbstractValidationRule<Dynamic>;
	function CreateAbstractListRule(name:String):IAbstractValidationRule<Dynamic>;
	var ForList : Bool;
};
typedef IAbstractValidationRule<T> = {
	function Validate(context:T):IValidationResult;
	function ValidateAsync(context:T):Q.Promise<IValidationResult>;
	function ValidateAll(context:T):Void;
	function ValidateField(context:T, propName:String):Void;
	var ValidationResult : IValidationResult;
	var Rules : { };
	var Validators : { };
	var Children : { };
};
typedef IPropertyValidationRule<T> = {
	var Validators : { };
	function Validate(context:IValidationContext<T>):Array<IValidationFailure>;
	function ValidateAsync(context:IValidationContext<T>):Q.Promise<Array<IValidationFailure>>;
};
typedef IValidationContext<T> = {
	var Value : String;
	var Key : String;
	var Data : T;
};
extern class AbstractValidator<T> {
	var Validators : { };
	var AbstractValidators : { };
	var ValidationFunctions : { };
	function RuleFor(prop:String, validator:IPropertyValidator):Void;
	function ValidationFor(prop:String, fce:IValidatorFce):Void;
	function ValidatorFor<K>(prop:String, validator:IAbstractValidator<K>, ?forList:Bool):Void;
	function CreateAbstractRule(name:String):AbstractValidationRule<T>;
	function CreateAbstractListRule(name:String):AbstractListValidationRule<T>;
	function CreateRule(name:String):AbstractValidationRule<T>;
	var ForList : Bool;
}
extern class AbstractValidationRule<T> {
	var Name : String;
	var validator : AbstractValidator<T>;
	var ValidationResult : IValidationResult;
	var Rules : { };
	var Validators : { };
	var Children : { };
	var ForList : Bool;
	function new(Name:String, validator:AbstractValidator<T>, ?forList:Bool):Void;
	function addChildren():Void;
	function SetOptional(fce:IOptional):Void;
	function createRuleFor(prop:Dynamic):Dynamic;
	function Validate(context:T):IValidationResult;
	function ValidateAsync(context:T):Q.Promise<IValidationResult>;
	function ValidateAll(context:T):Void;
	function ValidateField(context:T, propName:String):Void;
}
extern class AbstractListValidationRule<T> extends AbstractValidationRule<T> {
	var Name : String;
	var validator : AbstractValidator<T>;
	function new(Name:String, validator:AbstractValidator<T>):Void;
	function Validate(context:Dynamic):IValidationResult;
	function ValidateAsync(context:Dynamic):Q.Promise<IValidationResult>;
	function getValidationRule(i:Dynamic):Dynamic;
	function getIndexedKey(i:Dynamic):Dynamic;
	function NotifyListChanged(list:Array<Dynamic>):Void;
}
extern class ValidationContext<T> {
	var Key : String;
	var Data : T;
	function new(Key:String, Data:T):Void;
	var Value : Dynamic;
}
extern class MessageLocalization {
	static var customMsg : String;
	static var defaultMessages : { var required : String; var remote : String; var email : String; var url : String; var date : String; var dateISO : String; var number : String; var digits : String; var signedDigits : String; var creditcard : String; var equalTo : String; var maxlength : String; var minlength : String; var rangelength : String; var range : String; var max : String; var min : String; var step : String; var contains : String; var mask : String; var custom : String; };
	static var ValidationMessages : { var required : String; var remote : String; var email : String; var url : String; var date : String; var dateISO : String; var number : String; var digits : String; var signedDigits : String; var creditcard : String; var equalTo : String; var maxlength : String; var minlength : String; var rangelength : String; var range : String; var max : String; var min : String; var step : String; var contains : String; var mask : String; var custom : String; };
	static function GetValidationMessage(validator:Dynamic):String;
}
extern class PropertyValidationRule<T> extends ValidationResult {
	var Name : String;
	var Validators : { };
	var ValidationFailures : { };
	function new(Name:String, ?validatorsToAdd:Array<IPropertyValidator>):Void;
	function AddValidator(validator:Dynamic):Void;
	var Errors : { };
	var HasErrors : Bool;
	var ErrorCount : Float;
	var ErrorMessage : String;
	var TranslateArgs : Array<IErrorTranslateArgs>;
	function Validate(context:IValidationContext<T>):Array<IValidationFailure>;
	function ValidateEx(value:Dynamic):Array<IValidationFailure>;
	function ValidateAsync(context:IValidationContext<T>):Q.Promise<Array<IValidationFailure>>;
	function ValidateAsyncEx(value:String):Q.Promise<Array<IValidationFailure>>;
}
extern class Validator extends ValidationResult {
	var Name : String;
	var ValidateFce : Dynamic;
	var AsyncValidationFce : Dynamic;
	var Error : IError;
	var ValidationFailures : { };
	function new(Name:String, ?ValidateFce:IValidate, ?AsyncValidationFce:IAsyncValidate):Void;
	var Optional : IOptional;
	function Validate(context:Dynamic):IValidationFailure;
	function ValidateAsync(context:Dynamic):Q.Promise<IValidationFailure>;
	var HasError : Bool;
	var Errors : { };
	var HasErrors : Bool;
	var ErrorCount : Float;
	var ErrorMessage : String;
	var TranslateArgs : Array<IErrorTranslateArgs>;
}
