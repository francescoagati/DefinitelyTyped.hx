extern class Durandal_compositionTopLevel {
	static var activateDuringComposition : Bool;
	static var convertTransitionToModuleId : String -> String;
	static var defaultTransitionName : String;
	static var switchContent : HTMLElement -> HTMLElement -> Dynamic -> Void;
	static var bindAndShow : HTMLElement -> HTMLElement -> Dynamic -> Void;
	static var defaultStrategy : Dynamic -> JQueryPromise<Dynamic>;
	static var getSettings : Dynamic -> Dynamic;
	static var executeStrategy : HTMLElement -> Dynamic -> Void;
	static var inject : HTMLElement -> Dynamic -> Void;
	static var compose : HTMLElement -> Dynamic -> Dynamic -> Void;
}
