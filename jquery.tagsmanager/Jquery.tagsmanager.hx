typedef ITagsManagerOptions = {
	@:optional
	var prefilled : Dynamic;
	@:optional
	var CapitalizeFirstLetter : Bool;
	@:optional
	var preventSubmitOnEnter : Bool;
	@:optional
	var isClearInputOnEsc : Bool;
	@:optional
	var typeahead : Bool;
	@:optional
	var typeaheadAjaxSource : String;
	@:optional
	var typeaheadAjaxPolling : Bool;
	@:optional
	var typeaheadDelegate : haxe.Constraints.Function;
	@:optional
	var typeaheadOverrides : ITypeaheadOverrides;
	@:optional
	var typeaheadSource : Dynamic;
	@:optional
	var AjaxPush : String;
	@:optional
	var delimeters : Array<Float>;
	@:optional
	var backspace : Array<Float>;
	@:optional
	var maxTags : Float;
	@:optional
	var blinkBGColor_1 : String;
	@:optional
	var blinkBGColor_2 : String;
	@:optional
	var hiddenTagListName : String;
	@:optional
	var hiddenTagListId : String;
	@:optional
	var deleteTagsOnBackspace : Bool;
	@:optional
	var tagsContainer : HTMLElement;
	@:optional
	var tagCloseIcon : String;
	@:optional
	var tagClass : String;
	@:optional
	var validator : haxe.Constraints.Function;
};
typedef ITypeaheadOverrides = {
	@:optional
	var instanceSelectHandler : haxe.Constraints.Function;
	@:optional
	var selectedClass : String;
	@:optional
	var select : haxe.Constraints.Function;
};
typedef ITagsManager = {
	var tagManagerOptions : ITagsManagerOptions;
	var obj : JQuery;
	var objName : String;
	var queuedTag : String;
	var delimeters : Array<Float>;
	var backspace : Array<Float>;
	var tagToManipulate : String;
	function initialize(context:JQuery, ?options:ITagsManagerOptions, ?tagToManipulate:String):Void;
	function setupTypeahead():Void;
	function onTypeaheadAjaxSuccess(data:Dynamic, isSetTypeaheadSource:Bool, ?process:haxe.Constraints.Function):Void;
	function ajaxPolling(query:String, process:haxe.Constraints.Function):Void;
	function setTypeaheadSource(source:Dynamic):Void;
	function trimTag(tag:String):String;
	function popTag():Void;
	function empty():Void;
	function refreshHiddenTagList():Void;
	function spliceTag(tagId:Float, eventData:Dynamic):Void;
	function pushTag(tag:String, objToPush:Dynamic, isValid:Bool):Void;
	function setOptions(options:ITagsManagerOptions):Void;
	function setContext(context:JQuery, ?tagToManipulate:String):Void;
	function processCommand(context:JQuery, command:String, ?tagToManipulate:String):JQuery;
	function processTags(?command:String, ?context:JQuery, ?tagToManipulate:String):JQuery;
};
typedef JQuery = {
	@:overload(function(command:String, ?tagToManipulate:String):JQuery { })
	function tagsManager(?options:ITagsManagerOptions):JQuery;
};
