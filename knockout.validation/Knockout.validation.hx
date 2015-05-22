typedef KnockoutValidationGroupingOptions = {
	@:optional
	var deep : Bool;
	@:optional
	var observable : Bool;
};
typedef KnockoutValidationConfiguration = {
	@:optional
	var registerExtenders : Bool;
	@:optional
	var messagesOnModified : Bool;
	@:optional
	var messageTemplate : String;
	@:optional
	var insertMessages : Bool;
	@:optional
	var parseInputAttributes : Bool;
	@:optional
	var writeInputAttributes : Bool;
	@:optional
	var decorateElement : Bool;
	@:optional
	var errorClass : String;
	@:optional
	var errorElementClass : String;
	@:optional
	var errorMessageClass : String;
	@:optional
	var grouping : KnockoutValidationGroupingOptions;
};
typedef KnockoutValidationUtils = {
	function isArray(o:Dynamic):Bool;
	function isObject(o:Dynamic):Bool;
	function values(o:Dynamic):Array<Dynamic>;
	function getValue(o:Dynamic):Dynamic;
	function hasAttribute(node:Element, attr:String):Bool;
	function isValidatable(o:Dynamic):Bool;
	function insertAfter(node:Element, newNode:Element):Void;
	function newId():Float;
	function getConfigOptions(element:Element):KnockoutValidationConfiguration;
	function setDomData(node:Element, data:KnockoutValidationConfiguration):Void;
	function getDomData(node:Element):KnockoutValidationConfiguration;
	function contextFor(node:Element):KnockoutValidationConfiguration;
	function isEmptyVal(val:Dynamic):Bool;
};
typedef KnockoutValidationAsyncCallbackArgs = {
	var isValid : Bool;
	var message : String;
};
typedef KnockoutValidationAsyncCallback = { };
typedef KnockoutValidationRuleBase = {
	var message : String;
};
typedef KnockoutValidationRuleDefinition = {
	>KnockoutValidationRuleBase,
	function validator(value:Dynamic, params:Dynamic):Bool;
};
typedef KnockoutValidationAsyncRuleDefinition = {
	>KnockoutValidationRuleBase,
	var async : Bool;
	function validator(value:Dynamic, params:Dynamic, callback:KnockoutValidationAsyncCallback):Void;
};
typedef KnockoutValidationAnonymousRuleDefinition = {
	var validation : KnockoutValidationRuleDefinition;
};
typedef KnockoutValidationRuleDefinitions = {
	var date : KnockoutValidationRuleDefinition;
	var dateISO : KnockoutValidationRuleDefinition;
	var digit : KnockoutValidationRuleDefinition;
	var email : KnockoutValidationRuleDefinition;
	var equal : KnockoutValidationRuleDefinition;
	var max : KnockoutValidationRuleDefinition;
	var maxLength : KnockoutValidationRuleDefinition;
	var min : KnockoutValidationRuleDefinition;
	var minLength : KnockoutValidationRuleDefinition;
	var notEqual : KnockoutValidationRuleDefinition;
	var number : KnockoutValidationRuleDefinition;
	var pattern : KnockoutValidationRuleDefinition;
	var phoneUS : KnockoutValidationRuleDefinition;
	var required : KnockoutValidationRuleDefinition;
	var step : KnockoutValidationRuleDefinition;
	var unique : KnockoutValidationRuleDefinition;
};
typedef KnockoutValidationRule = {
	var rule : String;
	var params : Dynamic;
	@:optional
	var message : String;
	@:optional
	var condition : Void -> Bool;
};
typedef KnockoutValidationErrors = {
	@:overload(function(show:Bool):Void { })
	function showAllMessages():Void;
};
typedef KnockoutValidationGroup = {
	@:optional
	var errors : KnockoutValidationErrors;
	@:optional
	var isValid : Void -> Bool;
	@:optional
	var isAnyMessageShown : Void -> Bool;
};
typedef KnockoutValidationStatic = {
	function init(?options:KnockoutValidationConfiguration, ?force:Bool):Void;
	function reset():Void;
	function group(obj:Dynamic, ?options:Dynamic):KnockoutValidationErrors;
	function formatMessage(message:String, params:String):String;
	function addRule<T>(observable:KnockoutObservable<T>, rule:KnockoutValidationRule):KnockoutObservable<T>;
	function addAnonymousRule(observable:KnockoutObservable<Dynamic>, ruleObj:KnockoutValidationAnonymousRuleDefinition):Void;
	function insertValidationMessage(element:Element):Element;
	function parseInputValidationAttributes(element:Element, valueAccessor:Void -> KnockoutObservable<Dynamic>):Void;
	var rules : KnockoutValidationRuleDefinitions;
	function addExtender(ruleName:String):Void;
	function registerExtenders():Void;
	var utils : KnockoutValidationUtils;
	function localize(msgTranslations:Dynamic):Void;
	function validateObservable(observable:KnockoutObservable<Dynamic>):Bool;
};
typedef KnockoutStatic = {
	var validation : KnockoutValidationStatic;
	function validatedObservable<T>(?initialValue:T):KnockoutObservable<T>;
	function applyBindingsWithValidation(viewModel:Dynamic, ?rootNode:Dynamic, ?options:KnockoutValidationConfiguration):Void;
};
typedef KnockoutSubscribableFunctions<T> = {
	var isValid : KnockoutComputed<Bool>;
	var isValidating : KnockoutObservable<Bool>;
	var rules : KnockoutObservableArray<KnockoutValidationRule>;
	var isModified : KnockoutObservable<Bool>;
	var error : KnockoutComputed<String>;
	function setError(error:String):Void;
	function clearError():Void;
};
extern class Knockout.validationTopLevel {
	static var validation : KnockoutValidationStatic;
}
