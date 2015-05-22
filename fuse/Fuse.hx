extern class Fuse {
	function new(list:Array<Dynamic>, ?options:fuse.IFuseOptions):Void;
	function search(pattern:String):Array<Dynamic>;
}
typedef IFuseOptions = {
	>ISearchOptions,
	@:optional
	var caseSensitive : Bool;
	@:optional
	var includeScore : Bool;
	@:optional
	var shouldSort : Bool;
	@:optional
	var searchFn : Dynamic;
	@:optional
	var sortFn : { var score : Float; } -> { var score : Float; } -> Float;
	@:optional
	var getFn : Dynamic -> String -> Dynamic;
	@:optional
	var keys : Array<String>;
};
typedef ISearchOptions = {
	@:optional
	var location : Float;
	@:optional
	var distance : Float;
	@:optional
	var threshold : Float;
	@:optional
	var maxPatternLength : Float;
};
