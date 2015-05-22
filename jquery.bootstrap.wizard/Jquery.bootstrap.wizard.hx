typedef WizardOptions = {
	@:optional
	var tabClass : String;
	@:optional
	var nextSelector : String;
	@:optional
	var previousSelector : String;
	@:optional
	var firstSelector : String;
	@:optional
	var lastSelector : String;
	@:optional
	var onShow : Dynamic -> Dynamic -> Float -> Void;
	@:optional
	var onInit : Dynamic -> Dynamic -> Float -> Void;
	@:optional
	var onNext : Dynamic -> Dynamic -> Float -> Bool;
	@:optional
	var onPrevious : Dynamic -> Dynamic -> Float -> Bool;
	@:optional
	var onLast : Dynamic -> Dynamic -> Float -> Bool;
	@:optional
	var onFirst : Dynamic -> Dynamic -> Float -> Bool;
	@:optional
	var onTabClick : Dynamic -> Dynamic -> Float -> Bool;
	@:optional
	var onTabShow : Dynamic -> Dynamic -> Float -> Bool;
};
typedef Wizard = {
	function next():Void;
	function previous():Void;
	function first():Void;
	function last():Void;
	function currentIndex():Float;
	function firstIndex():Float;
	function lastIndex():Float;
	function getIndex(element:Dynamic):Float;
	function nextIndex():Float;
	function previousIndex():Float;
	function navigationLength():Float;
	function activeTab():Dynamic;
	function nextTab():Dynamic;
	function previousTab():Dynamic;
	function show(index:Float):Dynamic;
};
typedef JQuery = {
	function bootstrapWizard(?options:WizardOptions):Wizard;
};
typedef JQueryStatic = {
	var bootstrapWizard : Wizard;
};
