typedef ModalOptions = {
	@:optional
	var backdrop : Bool;
	@:optional
	var keyboard : Bool;
	@:optional
	var show : Bool;
	@:optional
	var remote : String;
};
typedef ModalOptionsBackdropString = {
	@:optional
	var backdrop : String;
	@:optional
	var keyboard : Bool;
	@:optional
	var show : Bool;
	@:optional
	var remote : String;
};
typedef ScrollSpyOptions = {
	@:optional
	var offset : Float;
};
typedef TooltipOptions = {
	@:optional
	var animation : Bool;
	@:optional
	var html : Bool;
	@:optional
	var placement : Dynamic;
	@:optional
	var selector : String;
	@:optional
	var title : Dynamic;
	@:optional
	var trigger : String;
	@:optional
	var delay : Dynamic;
	@:optional
	var container : Dynamic;
};
typedef PopoverOptions = {
	@:optional
	var animation : Bool;
	@:optional
	var html : Bool;
	@:optional
	var placement : Dynamic;
	@:optional
	var selector : String;
	@:optional
	var trigger : String;
	@:optional
	var title : Dynamic;
	@:optional
	var content : Dynamic;
	@:optional
	var delay : Dynamic;
	@:optional
	var container : Dynamic;
};
typedef CollapseOptions = {
	@:optional
	var parent : Dynamic;
	@:optional
	var toggle : Bool;
};
typedef CarouselOptions = {
	@:optional
	var interval : Float;
	@:optional
	var pause : String;
};
typedef TypeaheadOptions = {
	@:optional
	var source : Dynamic;
	@:optional
	var items : Float;
	@:optional
	var minLength : Float;
	@:optional
	var matcher : Dynamic -> Bool;
	@:optional
	var sorter : Array<Dynamic> -> Array<Dynamic>;
	@:optional
	var updater : Dynamic -> Dynamic;
	@:optional
	var highlighter : Dynamic -> String;
};
typedef AffixOptions = {
	@:optional
	var offset : Dynamic;
};
typedef JQuery = {
	@:overload(function(?options:ModalOptionsBackdropString):JQuery { })
	@:overload(function(command:String):JQuery { })
	function modal(?options:ModalOptions):JQuery;
	@:overload(function(command:String):JQuery { })
	function dropdown():JQuery;
	@:overload(function(?options:ScrollSpyOptions):JQuery { })
	function scrollspy(command:String):JQuery;
	@:overload(function(command:String):JQuery { })
	function tab():JQuery;
	@:overload(function(command:String):JQuery { })
	function tooltip(?options:TooltipOptions):JQuery;
	@:overload(function(command:String):JQuery { })
	function popover(?options:PopoverOptions):JQuery;
	@:overload(function(command:String):JQuery { })
	function alert():JQuery;
	@:overload(function(command:String):JQuery { })
	function button():JQuery;
	@:overload(function(command:String):JQuery { })
	function collapse(?options:CollapseOptions):JQuery;
	@:overload(function(command:String):JQuery { })
	function carousel(?options:CarouselOptions):JQuery;
	function typeahead(?options:TypeaheadOptions):JQuery;
	function affix(?options:AffixOptions):JQuery;
};
