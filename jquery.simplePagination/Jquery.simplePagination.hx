typedef SimplePaginationOptions = {
	@:optional
	var items : Float;
	@:optional
	var itemsOnPage : Float;
	@:optional
	var pages : Float;
	@:optional
	var displayedPages : Float;
	@:optional
	var edges : Float;
	@:optional
	var currentPage : Float;
	@:optional
	var hrefTextPrefix : String;
	@:optional
	var hrefTextSuffix : String;
	@:optional
	var prevText : String;
	@:optional
	var nextText : String;
	@:optional
	var cssStyle : String;
	@:optional
	var selectOnClick : Bool;
	@:optional
	var onPageClick : Float -> Dynamic -> Void;
	@:optional
	var onInit : Void -> Void;
};
typedef JQuery = {
	@:overload(function(method:SelectPage, pageNumber:Float):Void { })
	@:overload(function(method:PrevPage):Void { })
	@:overload(function(method:NextPage):Void { })
	@:overload(function(method:GetPagesCount):Float { })
	@:overload(function(method:GetCurrentPage):Float { })
	@:overload(function(method:Disable):Void { })
	@:overload(function(method:Enable):Void { })
	@:overload(function(method:Destroy):Void { })
	@:overload(function(method:Redraw):Void { })
	@:overload(function(method:UpdateItems, items:Float):Void { })
	@:overload(function(method:String):Dynamic { })
	@:overload(function(method:String, value:Dynamic):Dynamic { })
	function pagination(?options:SimplePaginationOptions):JQuery;
};
