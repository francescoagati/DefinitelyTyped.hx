typedef AreYouSureOptions = {
	@:optional
	var message : String;
	@:optional
	var dirtyClass : String;
	@:optional
	var change : haxe.Constraints.Function;
	@:optional
	var fieldSelector : String;
	@:optional
	var silent : Bool;
};
typedef AreYouSure = { };
typedef JQuery = {
	var areYouSure : AreYouSure;
};
