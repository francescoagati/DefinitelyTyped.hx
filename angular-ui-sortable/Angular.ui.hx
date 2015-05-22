typedef UISortableOptions<T> = {
	>SortableOptions<T>,
	@:optional
	var ui-floating : haxe.extern.EitherType<String, Bool>;
};
typedef UISortableProperties<T> = {
	var dropindex : Float;
	var droptarget : Float;
	var droptargetModel : Array<T>;
	var index : Float;
	var model : T;
	@:optional
	var moved : T;
	var received : Boolean;
	var source : ng.IAugmentedJQuery;
	var sourceModel : Array<T>;
	function cancel():Void;
	function isCanceled():Boolean;
	function isCustomHelperUsed():Boolean;
};
typedef UISortableUIItem<T> = {
	>ng.IAugmentedJQuery,
	var sortable : UISortableProperties<T>;
};
typedef UISortableUIParams<T> = {
	>SortableUIParams,
	var item : UISortableUIItem<T>;
};
typedef SortableCursorAtOptions = {
	@:optional
	var top : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var bottom : Float;
};
typedef SortableHelperFunctionOption = { };
typedef SortableOptions<T> = {
	>SortableEvents<T>,
	@:optional
	var appendTo : Dynamic;
	@:optional
	var axis : haxe.extern.EitherType<String, Bool>;
	@:optional
	var cancel : String;
	@:optional
	var connectWith : haxe.extern.EitherType<String, Bool>;
	@:optional
	var containment : Dynamic;
	@:optional
	var cursor : String;
	@:optional
	var cursorAt : haxe.extern.EitherType<SortableCursorAtOptions, Bool>;
	@:optional
	var delay : Float;
	@:optional
	var disabled : Bool;
	@:optional
	var distance : Float;
	@:optional
	var dropOnEmpty : Bool;
	@:optional
	var forceHelperSize : Bool;
	@:optional
	var forcePlaceholderSize : Bool;
	@:optional
	var grid : haxe.extern.EitherType<Array<Float>, Bool>;
	@:optional
	var handle : Dynamic;
	@:optional
	var helper : haxe.extern.EitherType<String, SortableHelperFunctionOption>;
	@:optional
	var items : String;
	@:optional
	var opacity : haxe.extern.EitherType<Float, Bool>;
	@:optional
	var placeholder : haxe.extern.EitherType<String, Bool>;
	@:optional
	var revert : haxe.extern.EitherType<Float, Bool>;
	@:optional
	var scroll : Bool;
	@:optional
	var scrollSensitivity : Float;
	@:optional
	var scrollSpeed : Float;
	@:optional
	var tolerance : String;
	@:optional
	var zIndex : Float;
};
typedef SortableUIParams = {
	var helper : ng.IAugmentedJQuery;
	var item : ng.IAugmentedJQuery;
	var offset : Dynamic;
	var position : Dynamic;
	var originalPosition : Dynamic;
	var sender : ng.IAugmentedJQuery;
	var placeholder : ng.IAugmentedJQuery;
};
typedef SortableEvent<T> = { };
typedef SortableEvents<T> = {
	@:optional
	var activate : SortableEvent<T>;
	@:optional
	var beforeStop : SortableEvent<T>;
	@:optional
	var change : SortableEvent<T>;
	@:optional
	var deactivate : SortableEvent<T>;
	@:optional
	var out : SortableEvent<T>;
	@:optional
	var over : SortableEvent<T>;
	@:optional
	var receive : SortableEvent<T>;
	@:optional
	var remove : SortableEvent<T>;
	@:optional
	var sort : SortableEvent<T>;
	@:optional
	var start : SortableEvent<T>;
	@:optional
	var stop : SortableEvent<T>;
	@:optional
	var update : SortableEvent<T>;
};
