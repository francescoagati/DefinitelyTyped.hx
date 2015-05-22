typedef IDocumentService = {
	>ng.IDocumentService,
	@:overload(function(left:Float, top:Float, duration:Float, ?easing:haxe.Constraints.Function):ng.IPromise<Void> { })
	@:overload(function(element:ng.IAugmentedJQuery, ?offset:Float):Void { })
	@:overload(function(element:ng.IAugmentedJQuery, offset:Float, duration:Float, ?easing:haxe.Constraints.Function):ng.IPromise<Void> { })
	function duScrollTo(left:Float, top:Float):Void;
	@:overload(function(element:ng.IAugmentedJQuery, offset:Float, duration:Float, ?easing:haxe.Constraints.Function):ng.IPromise<Void> { })
	function duScrollToElement(element:ng.IAugmentedJQuery, ?offset:Float):Void;
	@:overload(function(element:ng.IAugmentedJQuery, offset:Float, duration:Float, ?easing:haxe.Constraints.Function):ng.IPromise<Void> { })
	function duScrollToElementAnimated(element:ng.IAugmentedJQuery, ?offset:Float):ng.IPromise<Void>;
	@:overload(function(top:Float, duration:Float, ?easing:haxe.Constraints.Function):ng.IPromise<Void> { })
	@:overload(function():Float { })
	function duScrollTop(top:Float):Void;
	@:overload(function(top:Float, duration:Float, ?easing:haxe.Constraints.Function):ng.IPromise<Void> { })
	function duScrollTopAnimated(top:Float):ng.IPromise<Void>;
	@:overload(function(left:Float, duration:Float, ?easing:haxe.Constraints.Function):ng.IPromise<Void> { })
	@:overload(function():Float { })
	function duScrollLeft(left:Float):Void;
	@:overload(function(left:Float, duration:Float, ?easing:haxe.Constraints.Function):ng.IPromise<Void> { })
	function duScrollLeftAnimated(left:Float):ng.IPromise<Void>;
};
