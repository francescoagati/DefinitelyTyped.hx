typedef Select2QueryOptions = {
	@:optional
	var term : String;
	@:optional
	var page : Float;
	@:optional
	var context : Dynamic;
	@:optional
	var callback : { var results : Dynamic; @:optional
	var more : Bool; @:optional
	var context : Dynamic; } -> Void;
};
typedef AjaxFunction = { };
typedef Select2AjaxOptions = {
	@:optional
	var transport : AjaxFunction;
	@:optional
	var url : Dynamic;
	@:optional
	var dataType : String;
	@:optional
	var quietMillis : Float;
	@:optional
	var data : String -> Float -> Dynamic -> Dynamic;
	@:optional
	var results : Dynamic -> Float -> Dynamic -> Dynamic;
};
typedef IdTextPair = {
	var id : Dynamic;
	var text : String;
};
typedef Select2Options = {
	@:optional
	var width : String;
	@:optional
	var dropdownAutoWidth : Bool;
	@:optional
	var minimumInputLength : Float;
	@:optional
	var minimumResultsForSearch : Float;
	@:optional
	var maximumSelectionSize : Float;
	@:optional
	var placeholder : String;
	@:optional
	var separator : String;
	@:optional
	var allowClear : Bool;
	@:optional
	var multiple : Bool;
	@:optional
	var closeOnSelect : Bool;
	@:optional
	var openOnEnter : Bool;
	@:optional
	var id : Dynamic -> String;
	@:optional
	var matcher : String -> String -> Dynamic -> Bool;
	@:optional
	var formatSelection : Dynamic -> JQuery -> String -> String -> String;
	@:optional
	var formatResult : Dynamic -> JQuery -> Dynamic -> String -> String -> String;
	@:optional
	var formatResultCssClass : Dynamic -> String;
	@:optional
	var formatNoMatches : String -> String;
	@:optional
	var formatSearching : Void -> String;
	@:optional
	var formatInputTooShort : String -> Float -> String;
	@:optional
	var formatSelectionTooBig : Float -> String;
	@:optional
	var formatLoadMore : Float -> String;
	@:optional
	var createSearchChoice : String -> Dynamic -> Dynamic;
	@:optional
	var initSelection : JQuery -> Dynamic -> Void -> Void;
	@:optional
	var tokenizer : String -> Array<Dynamic> -> Void -> Void -> Select2Options -> String;
	@:optional
	var tokenSeparators : Array<String>;
	@:optional
	var query : Select2QueryOptions -> Void;
	@:optional
	var ajax : Select2AjaxOptions;
	@:optional
	var data : Dynamic;
	@:optional
	var tags : Dynamic;
	@:optional
	var containerCss : Dynamic;
	@:optional
	var containerCssClass : Dynamic;
	@:optional
	var dropdownCss : Dynamic;
	@:optional
	var dropdownCssClass : Dynamic;
	@:optional
	var escapeMarkup : String -> String;
};
typedef Select2JQueryEventObject = {
	>JQueryEventObject,
	var val : Dynamic;
	var added : Dynamic;
	var removed : Dynamic;
};
typedef JQuery = {
	function off(?events:Change, ?selector:Dynamic, ?handler:Select2JQueryEventObject -> Dynamic):JQuery;
	@:overload(function(events:Change, ?selector:String, ?handler:Select2JQueryEventObject -> Dynamic):JQuery { })
	@:overload(function(events:Change, ?handler:Select2JQueryEventObject -> Dynamic):JQuery { })
	function on(events:Change, ?selector:String, ?data:Dynamic, ?handler:Select2JQueryEventObject -> Dynamic):JQuery;
	@:overload(function(it:IdTextPair):JQuery { })
	@:overload(function(method:Val):Dynamic { })
	@:overload(function(method:Val, value:Dynamic, ?triggerChange:Bool):Dynamic { })
	@:overload(function(method:Data):Dynamic { })
	@:overload(function(method:Data, value:Dynamic, ?triggerChange:Bool):Dynamic { })
	@:overload(function(method:Destroy):JQuery { })
	@:overload(function(method:Open):JQuery { })
	@:overload(function(method:Close):JQuery { })
	@:overload(function(method:Enable, value:Bool):JQuery { })
	@:overload(function(method:Readonly, value:Bool):JQuery { })
	@:overload(function(method:Container):JQuery { })
	@:overload(function(method:OnSortStart):JQuery { })
	@:overload(function(method:OnSortEnd):JQuery { })
	@:overload(function(method:String):Dynamic { })
	@:overload(function(method:String, value:Dynamic, ?trigger:Bool):Dynamic { })
	@:overload(function(options:Select2Options):JQuery { })
	function select2():JQuery;
};
