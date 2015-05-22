typedef Column<T:(SlickData)> = {
	@:optional
	var header : Header;
};
typedef Header = {
	var buttons : Array<HeaderButton>;
};
typedef HeaderButton = {
	@:optional
	var command : String;
	@:optional
	var cssClass : String;
	@:optional
	var handler : haxe.Constraints.Function;
	@:optional
	var image : String;
	@:optional
	var showOnHover : Bool;
	@:optional
	var tooltip : String;
};
typedef OnCommandEventData<T:(SlickData)> = {
	var grid : Grid<T>;
	var column : Column<T>;
	var command : String;
	var button : HeaderButton;
};
