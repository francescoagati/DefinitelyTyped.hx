typedef WizardHandler = {
	function wizard(?name:String):Wizard;
	function addWizard(name:String, wizard:Wizard):Void;
	function removeWizard(name:String):Void;
};
typedef Wizard = {
	function next(?nextHandler:haxe.Constraints.Function):Void;
	function previous():Void;
	@:overload(function(step:String):Void { })
	function goTo(step:Float):Void;
	function finish():Void;
	function currentStepNumber():Float;
};
