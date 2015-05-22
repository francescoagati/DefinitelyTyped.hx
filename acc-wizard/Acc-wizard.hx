typedef AccWizardOptions = {
	var addButtons : Bool;
	var sidebar : String;
	var activeClass : String;
	var completedClass : String;
	var todoClass : String;
	var stepClass : String;
	var nextText : String;
	var backType : String;
	var nextClasses : String;
	var backClasses : String;
	var autoScrolling : Bool;
	var onNext : haxe.Constraints.Function;
	var onBack : haxe.Constraints.Function;
	var onInit : haxe.Constraints.Function;
	var onDestroy : haxe.Constraints.Function;
};
typedef JQuery = {
	function accwizard(?options:AccWizardOptions):Void;
};
