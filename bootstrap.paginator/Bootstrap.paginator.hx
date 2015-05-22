typedef PaginatorOptions = {
	@:optional
	var alignment : String;
	@:optional
	var size : String;
	@:optional
	var itemContainerClass : Dynamic -> Dynamic -> Dynamic -> String;
	@:optional
	var currentPage : Float;
	@:optional
	var numberOfPages : Float;
	@:optional
	var totalPages : Float;
	@:optional
	var pageUrl : Dynamic -> Dynamic -> Dynamic -> String;
	@:optional
	var shouldShowPage : Bool;
	@:optional
	var itemTexts : String -> Float -> Float -> String;
	@:optional
	var tooltipTitles : Dynamic -> Dynamic -> Dynamic -> String;
	@:optional
	var useBootstrapTooltip : Bool;
	@:optional
	var bootstrapTooltipOptions : { };
	@:optional
	var bootstrapMajorVersion : Float;
	@:optional
	var onPageClicked : Dynamic -> Dynamic -> Dynamic -> Dynamic -> Void;
	@:optional
	var onPageChanged : Dynamic -> Dynamic -> Dynamic -> Dynamic -> Void;
};
typedef JQuery = {
	@:overload(function(options:PaginatorOptions):JQuery { })
	function bootstrapPaginator():JQuery;
};
