typedef Static = {
	function mapApplicableModel(sourceModel:Dynamic):Dynamic;
	function mapModel(sourceModel:Dynamic, ?includeWrappedFunction:IncludePropertyCallback, ?includeUnwrappedFunction:IncludePropertyCallback):Dynamic;
	function validatableModel(model:Dynamic, ?options:ValidationOptions):ModelValidationState;
	function validatableProperty<T>(value:T, ?options:ValidationOptions):PropertyValidationState<T>;
	var ValidationResult : ValidationResultStatic;
	var converters : ConvertersStatic;
	var utils : UtilsStatic;
	var validationState : ValidationState;
};
typedef ValidationResultStatic = {
	var passedInstance : ValidationResult;
	function createFailedResult(message:String):ValidationResult;
};
typedef ConvertersStatic = {
	var passThrough : Valerie.IConverter;
};
typedef UtilsStatic = {
	function asArray<T>(value:Dynamic):Array<Dynamic>;
	@:overload(function<T>(fn:Void -> T):Void -> T { })
	function asFunction<T>(value:T):Void -> T;
	function isArray(value:Dynamic):Bool;
	function isArrayOrObject(value:Dynamic):Bool;
	function isFunction(value:Dynamic):Bool;
	function isMissing(value:Dynamic):Bool;
	function isObject(value:Dynamic):Bool;
	function isString(value:Dynamic):Bool;
	function mergeOptions(defaultOptions:ValidationOptions, options:Dynamic):ValidationOptions;
};
typedef IncludePropertyCallback = { };
typedef ModelValidationState = {
	var new : Dynamic -> ?ModelValidationStateOptions -> ModelValidationState;
	var model : Dynamic;
	@:optional
	var options : ModelValidationStateOptions;
	function addValidationStates(validationStateOrStates:Dynamic):ModelValidationState;
	function applicable(valueOrFunction:Dynamic):ModelValidationState;
	function clearSummary(valueOrFunction:Dynamic):ModelValidationState;
	function failed():Bool;
	function failedStates():Array<Valerie.IValidationState>;
	function getName():String;
	function isApplicable():Bool;
	function message():String;
	function passed():Bool;
	function paused(value:Bool):Bool;
	function pending():Bool;
	function pendingStates():Array<IValidationState>;
	function refresh():Void;
	function result():ValidationResult;
	function summary():Array<SummaryItem>;
	function touched(value:Bool):Bool;
	function validationStates():Array<IValidationState>;
	function includeInSummary():ModelValidationState;
	function name(valueOrFunction:Dynamic):ModelValidationState;
	function removeValidationStates(validationStateOrStates:Dynamic):ModelValidationState;
	function startValidatingSubModel(validatableSubModel:Dynamic):ModelValidationState;
	function stopValidatingSubModel(validatableSubModel:Dynamic):ModelValidationState;
	function updateSummary(updateSubModelSummaries:Bool):ModelValidationState;
	function validateAll():ModelValidationState;
	function validateAllProperties():ModelValidationState;
	function validateChildProperties():ModelValidationState;
	function validateChildPropertiesAndSubModels():ModelValidationState;
	function end():Dynamic;
};
typedef ModelValidationStateOptions = {
	function applicable():Bool;
	var excludeFromSummary : Bool;
	var failureMessage : String;
	function name():String;
	function paused():Bool;
};
typedef PropertyValidationState<T> = {
	var observableOrComputed : T;
	var options : ValidationOptions;
	function addRule(rule:IRule):PropertyValidationState<T>;
	@:overload(function(fn:Void -> Bool):PropertyValidationState<T> { })
	function applicable(value:Bool):PropertyValidationState<T>;
	function currencyMajor(?options:ValidationOptions):PropertyValidationState<T>;
	function currencyMajorMinor(?options:ValidationOptions):PropertyValidationState<T>;
	function date():PropertyValidationState<T>;
	@:overload(function(earliest:Void -> Date, latest:Date, ?options:ValidationOptions):PropertyValidationState<T> { })
	@:overload(function(earliest:Date, latest:Void -> Date, ?options:ValidationOptions):PropertyValidationState<T> { })
	@:overload(function(earliest:Void -> Date, latest:Void -> Date, ?options:ValidationOptions):PropertyValidationState<T> { })
	function during(earliest:Date, latest:Date, ?options:ValidationOptions):PropertyValidationState<T>;
	@:overload(function(earliest:Void -> Date, ?options:ValidationOptions):PropertyValidationState<T> { })
	function earliest(earliest:Date, ?options:ValidationOptions):PropertyValidationState<T>;
	function email():PropertyValidationState<T>;
	function entryFormat(format:String):PropertyValidationState<T>;
	function excludeFromSummary():PropertyValidationState<T>;
	@:overload(function(regularExpressionString:String, ?options:ValidationOptions):PropertyValidationState<T> { })
	function expression(regularExpression:js.RegExp, ?options:ValidationOptions):PropertyValidationState<T>;
	function float(?options:ValidationOptions):PropertyValidationState<T>;
	function integer(?options:ValidationOptions):PropertyValidationState<T>;
	@:overload(function(latestValueOrFunction:Void -> Date, ?options:ValidationOptions):PropertyValidationState<T> { })
	function latest(latestValueOrFunction:Date, ?options:ValidationOptions):PropertyValidationState<T>;
	@:overload(function(shortest:Float, longest:Void -> Float, ?options:ValidationOptions):PropertyValidationState<T> { })
	@:overload(function(shortest:Void -> Float, longest:Float, ?options:ValidationOptions):PropertyValidationState<T> { })
	@:overload(function(shortest:Void -> Float, longest:Void -> Float, ?options:ValidationOptions):PropertyValidationState<T> { })
	function lengthBetween(shortest:Float, longest:Float, ?options:ValidationOptions):PropertyValidationState<T>;
	@:overload(function(permitted:Void -> Dynamic, ?options:ValidationOptions):PropertyValidationState<T> { })
	function matches(permitted:Dynamic, ?options:ValidationOptions):PropertyValidationState<T>;
	@:overload(function(maximum:Void -> Dynamic, ?options:ValidationOptions):PropertyValidationState<T> { })
	function maximum(maximum:Dynamic, ?options:ValidationOptions):PropertyValidationState<T>;
	@:overload(function(longest:Void -> Float, ?options:ValidationOptions):PropertyValidationState<T> { })
	function maximumLength(longest:Float, ?options:ValidationOptions):PropertyValidationState<T>;
	@:overload(function(maximum:Void -> Float, ?options:ValidationOptions):PropertyValidationState<T> { })
	function maximumNumberOfItems(maximum:Float, ?options:ValidationOptions):PropertyValidationState<T>;
	function minimum(minimumValueOrFunction:Dynamic, ?options:ValidationOptions):PropertyValidationState<T>;
	@:overload(function(shortest:Void -> Float, ?options:ValidationOptions):PropertyValidationState<T> { })
	function minimumLength(shortest:Float, ?options:ValidationOptions):PropertyValidationState<T>;
	@:overload(function(minimum:Void -> Float, ?options:ValidationOptions):PropertyValidationState<T> { })
	function minimumNumberOfItems(minimum:Float, ?options:ValidationOptions):PropertyValidationState<T>;
	@:overload(function(value:Void -> String):PropertyValidationState<T> { })
	function name(value:String):PropertyValidationState<T>;
	@:overload(function(forbiddenValues:Void -> Array<Dynamic>, ?options:ValidationOptions):PropertyValidationState<T> { })
	function noneOf(forbiddenValues:Array<Dynamic>, ?options:ValidationOptions):PropertyValidationState<T>;
	function not(forbiddenValueOrFunction:Dynamic, ?options:ValidationOptions):PropertyValidationState<T>;
	function number():PropertyValidationState<T>;
	function numberOfItems(minimumValueOrFunction:Dynamic, maximumValueOrFunction:Dynamic, ?options:ValidationOptions):PropertyValidationState<T>;
	@:overload(function(permittedValues:Void -> Array<Dynamic>, ?options:ValidationOptions):PropertyValidationState<T> { })
	function oneOf(permittedValues:Array<Dynamic>, ?options:ValidationOptions):PropertyValidationState<T>;
	function postcode():PropertyValidationState<T>;
	function range(minimumValueOrFunction:Dynamic, maximumValueOrFunction:Dynamic, ?options:ValidationOptions):PropertyValidationState<T>;
	function required(?valueOrFunction:Dynamic):PropertyValidationState<T>;
	function rule(testFunction:Void -> Dynamic):PropertyValidationState<T>;
	function ruleMessage(failureMessageFormat:String):PropertyValidationState<T>;
	function string():PropertyValidationState<T>;
	function valueFormat(format:String):PropertyValidationState<T>;
	function validateChildProperties():PropertyValidationState<T>;
	function end():T;
	function failed():Bool;
	function getName():String;
	function isApplicable():Bool;
	function isRequired():Bool;
	function message():String;
	function passed():Bool;
	function pending():Bool;
	function showMessage():Bool;
	@:overload(function(value:Bool):Bool { })
	function touched():Bool;
	function result():ValidationResult;
};
typedef ValidationResult = {
	var state : Dynamic;
	var failed : Bool;
	var passed : Bool;
	var pending : Bool;
	var message : String;
	var new : Dynamic -> ?String -> ValidationResult;
};
typedef IRule = {
	var defaultOptions : ValidationOptions;
	function test(value:Dynamic):ValidationResult;
};
typedef IValidationState = {
	function failed():Bool;
	function getName():String;
	function isApplicable():Bool;
	function message():String;
	function passed():Bool;
	function pending():Bool;
	function result():ValidationResult;
	function touched(?value:Bool):Bool;
};
typedef ValidatableModel<T> = {
	var name : String -> PropertyValidationState<T>;
	var end : Void -> T;
};
typedef ValidationOptions = {
	@:optional
	function applicable():Dynamic;
	@:optional
	var converter : IConverter;
	@:optional
	var entryFormat : String;
	@:optional
	var excludeFromSummary : Bool;
	@:optional
	var invalidFailureMessage : String;
	@:optional
	var missingFailureMessage : String;
	@:optional
	var name : Void -> Dynamic;
	@:optional
	var required : Void -> Dynamic;
	@:optional
	var rules : Dynamic;
	@:optional
	var valueFormat : String;
};
typedef IConverter = {
	var format : Dynamic -> ?String -> String;
	var parse : String -> Dynamic;
};
typedef NumericHelper = {
	function addThousandsSeparator(numericString:String):String;
	function format(value:Float, format:String):String;
	function init(decimalSeparator:String, thousandsSeparator:String, currencySign:String, currencyMinorUnitPlaces:Float):NumericHelper;
	function isCurrencyMajor(numericString:String):Bool;
	function isCurrencyMajorMinor(numericString:String):Bool;
	function isFloat(numericString:String):Bool;
	function isInteger(numericString:String):Bool;
	function parse(numericString:String):Float;
	function unformat(numericString:String):String;
};
typedef ValidationState = {
	function findIn(model:Dynamic, ?includeSubModels:Bool, ?recurse:Bool, ?validationStates:Array<IValidationState>):Array<IValidationState>;
	function getFor(modelOrObservableOrComputed:Dynamic):IValidationState;
	function has(modelOrObservableOrComputed:Dynamic):Bool;
	function setFor(modelOrObservableOrComputed:Dynamic, state:IValidationState):Void;
};
typedef SummaryItem = {
	var name : String;
	var message : String;
};
