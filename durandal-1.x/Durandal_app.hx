extern class Durandal_appTopLevel {
	static var title : String;
	static var showModal : Dynamic -> ?Dynamic -> ?Dynamic -> JQueryPromise<Dynamic>;
	static var showMessage : String -> ?String -> ?Dynamic -> JQueryPromise<Dynamic>;
	static var start : Void -> JQueryPromise<Dynamic>;
	static var setRoot : Dynamic -> ?String -> ?String -> Void;
	static var adaptToDevice : Void -> Void;
	static var on : String -> haxe.Constraints.Function -> ?Dynamic -> IEventSubscription;
	static var off : String -> haxe.Constraints.Function -> ?Dynamic -> Dynamic;
	static var trigger : String -> haxe.extern.Rest<Dynamic> -> Dynamic;
	static var proxy : Dynamic -> haxe.Constraints.Function;
}
