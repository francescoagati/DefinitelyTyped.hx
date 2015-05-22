typedef IOptions<T, U> = {
	@:optional
	var delimiter : String;
	@:optional
	var diacritics : Bool;
	@:optional
	var create : Dynamic;
	@:optional
	var createOnBlur : Bool;
	@:optional
	var createFilter : Dynamic;
	@:optional
	var highlight : Bool;
	@:optional
	var persist : Bool;
	@:optional
	var openOnFocus : Bool;
	@:optional
	var maxOptions : Float;
	@:optional
	var maxItems : Float;
	@:optional
	var hideSelected : Bool;
	@:optional
	var allowEmptyOption : Bool;
	@:optional
	var scrollDuration : Float;
	@:optional
	var loadThrottle : Float;
	@:optional
	var preload : Dynamic;
	@:optional
	var dropdownParent : String;
	@:optional
	var addPrecedence : Bool;
	@:optional
	var selectOnTab : Bool;
	@:optional
	var plugins : Array<String>;
	@:optional
	var options : Array<U>;
	@:optional
	var dataAttr : String;
	@:optional
	var valueField : String;
	@:optional
	var optgroupValueField : String;
	@:optional
	var labelField : String;
	@:optional
	var optgroupLabelField : String;
	@:optional
	var optgroupField : String;
	@:optional
	var sortField : Dynamic;
	@:optional
	var searchField : Dynamic;
	@:optional
	var searchConjunction : String;
	@:optional
	var optgroupOrder : Array<String>;
	@:optional
	var copyClassesToDropdown : Bool;
	@:optional
	function load(query:String, callback:haxe.Constraints.Function):Dynamic;
	@:optional
	function score(search:ISearch):Dynamic -> Float;
	@:optional
	function onInitialize():Dynamic;
	@:optional
	function onChange(value:Dynamic):Dynamic;
	@:optional
	function onItemAdd(value:T, item:JQuery):Dynamic;
	@:optional
	function onItemRemove(value:T):Dynamic;
	@:optional
	function onClear():Dynamic;
	@:optional
	function onDelete(values:Array<T>):Dynamic;
	@:optional
	function onOptionAdd(value:T, data:U):Dynamic;
	@:optional
	function onOptionRemove(value:T):Dynamic;
	@:optional
	function onDropdownOpen(dropdown:JQuery):Dynamic;
	@:optional
	function onDropdownClose(dropdown:JQuery):Dynamic;
	@:optional
	function onType(srt:String):Dynamic;
	@:optional
	function onLoad(data:Array<U>):Dynamic;
	@:optional
	var render : ICustomRenderers<U>;
};
typedef ICustomRenderers<U> = {
	@:optional
	function option(data:U, escape:String -> String):String;
	@:optional
	function item(data:U, escape:String -> String):String;
	@:optional
	function option_create(data:U, escape:String -> String):String;
	@:optional
	function optgroup_header(data:U, escape:String -> String):String;
	@:optional
	function optgroup(data:U, escape:String -> String):String;
};
typedef IApi<T, U> = {
	function addOption(data:U):Void;
	function updateOption(value:T, data:U):Void;
	function removeOption(value:T):Void;
	function clearOptions():Void;
	function getOption(value:T):Dynamic;
	function getAdjacentOption(value:T, direction:Float):Void;
	function refreshOptions(triggerDropdown:Bool):Void;
	function clear():Void;
	function getItem(value:T):JQuery;
	function addItem(value:T):Void;
	function removeItem(value:T):Void;
	function createItem(value:T):Void;
	function refreshItems():Void;
	function addOptionGroup(id:String, data:U):Void;
	function on(eventName:String, handler:haxe.Constraints.Function):Void;
	function off(eventName:String, ?handler:haxe.Constraints.Function):Void;
	function trigger(eventName:String, args:haxe.extern.Rest<Dynamic>):Void;
	function open():Void;
	function close():Void;
	function positionDropdown():Void;
	function destroy():Void;
	function load(callback:Dynamic -> Dynamic):Void;
	function focus():Void;
	function blur():Void;
	function lock():Void;
	function unlock():Void;
	function disable():Void;
	function enable():Void;
	function getValue():Dynamic;
	@:overload(function(value:Array<T>):Void { })
	function setValue(value:T):Void;
	function setCaret(index:Float):Void;
	function isFull():Bool;
	function clearCache(?template:String):Void;
};
typedef ISearchToken = {
	var regex : js.RegExp;
	var string : String;
};
typedef ISearchResult = {
	var id : String;
	var score : Float;
};
typedef ISearch = {
	var options : Dynamic;
	var query : String;
	var tokens : Array<ISearchToken>;
	var total : Float;
	var items : Array<ISearchResult>;
};
typedef JQuery = {
	function selectize(?options:Selectize.IOptions<Dynamic, Dynamic>):JQuery;
};
typedef HTMLElement = {
	var selectize : Selectize.IApi<Dynamic, Dynamic>;
};
