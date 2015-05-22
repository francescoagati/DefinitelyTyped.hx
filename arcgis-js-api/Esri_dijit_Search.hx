extern class Search {
	var activeSource : Dynamic;
	var activeSourceIndex : Float;
	var addLayersFromMap : Bool;
	var autoNavigate : Bool;
	var autoSelect : Bool;
	var enableButtonMode : Bool;
	var enableHighlight : Bool;
	var enableInfoWindow : Bool;
	var enableLabel : Bool;
	var enableSourcesMenu : Bool;
	var enableSuggestions : Bool;
	var enableSuggestionsMenu : Bool;
	var expanded : Bool;
	var graphicsLayer : Layer;
	var highlightGraphic : Graphic;
	var infoTemplate : InfoTemplate;
	var labelGraphic : Graphic;
	var labelSymbol : TextSymbol;
	var loaded : Bool;
	var locationToAddressDistance : Float;
	var map : Map;
	var maxResults : Float;
	var maxSuggestions : Float;
	var minCharacters : Float;
	var searchResults : Array<Dynamic>;
	var showInfoWindowOnSelect : Bool;
	var sources : Array<Dynamic>;
	var suggestionDelay : Float;
	var suggestResults : Array<Dynamic>;
	var theme : String;
	var value : String;
	var visible : Bool;
	var zoomScale : Float;
	@:overload(function(options:esri.SearchOptions, srcNode:String):Void { })
	function new(options:esri.SearchOptions, srcNode:Node):Void;
	function blur():Void;
	function clear():Void;
	function collapse():Void;
	function destroy():Void;
	function expand():Void;
	function focus():Void;
	function get(name:String):Dynamic;
	function hide():Void;
	@:overload(function(?value:Geometry):Dynamic { })
	@:overload(function(?value:Dynamic):Dynamic { })
	@:overload(function(?value:Array<Dynamic>):Dynamic { })
	function search(?value:String):Dynamic;
	function select(value:Dynamic):Void;
	function set(name:String):Dynamic;
	function show():Void;
	function startup():Void;
	function suggest(?value:String):Dynamic;
	@:overload(function(type:Clear-search, listener:{ var target : Search; } -> Void):esri.Handle { })
	@:overload(function(type:Focus, listener:{ var target : Search; } -> Void):esri.Handle { })
	@:overload(function(type:Load, listener:{ var target : Search; } -> Void):esri.Handle { })
	@:overload(function(type:Search-results, listener:{ var activeSourceIndex : Float; var error : Error; var numResults : Float; var results : Dynamic; var value : String; var target : Search; } -> Void):esri.Handle { })
	@:overload(function(type:Select-result, listener:{ var result : Dynamic; var source : Dynamic; var sourceIndex : Float; var target : Search; } -> Void):esri.Handle { })
	@:overload(function(type:Suggest-results, listener:{ var activeSourceIndex : Float; var error : Error; var numResults : Float; var results : Dynamic; var value : String; var target : Search; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Blur, listener:{ var target : Search; } -> Void):esri.Handle;
}
