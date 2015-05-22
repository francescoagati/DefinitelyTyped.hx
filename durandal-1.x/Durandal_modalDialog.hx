extern class Durandal_modalDialogTopLevel {
	static var currentZIndex : Float;
	static var getNextZIndex : Void -> Float;
	static var isModalOpen : Void -> Bool;
	static var getContext : String -> Dynamic;
	static var addContext : String -> Dynamic -> JQueryPromise<Dynamic>;
	static var createCompositionSettings : Dynamic -> Dynamic -> Dynamic;
	static var show : Dynamic -> Dynamic -> Dynamic -> JQueryPromise<Dynamic>;
}
