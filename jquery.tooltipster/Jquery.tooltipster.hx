typedef JQueryTooltipsterOptions = {
	@:optional
	var animation : String;
	@:optional
	var arrow : Bool;
	@:optional
	var arrowColor : Dynamic;
	@:optional
	var autoClose : Bool;
	@:optional
	var content : Dynamic;
	@:optional
	var contentAsHTML : Bool;
	@:optional
	var contentCloning : Bool;
	@:optional
	var delay : Float;
	@:optional
	var fixedWidth : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var functionInit : Dynamic -> Dynamic -> Dynamic;
	@:optional
	var functionBefore : Dynamic -> Dynamic -> Void;
	@:optional
	var functionReady : Dynamic -> Dynamic -> Void;
	@:optional
	var functionAfter : Dynamic -> Void;
	@:optional
	var icon : Dynamic;
	@:optional
	var iconCloning : Bool;
	@:optional
	var iconDesktop : Bool;
	@:optional
	var iconTheme : String;
	@:optional
	var iconTouch : Bool;
	@:optional
	var interactive : Bool;
	@:optional
	var interactiveTolerance : Float;
	@:optional
	var offsetX : Float;
	@:optional
	var offsetY : Float;
	@:optional
	var onlyOne : Bool;
	@:optional
	var position : String;
	@:optional
	var positionTracker : Bool;
	@:optional
	var speed : Float;
	@:optional
	var timer : Float;
	@:optional
	var theme : String;
	@:optional
	var touchDevices : Bool;
	@:optional
	var trigger : String;
	@:optional
	var updateAnimation : Bool;
};
typedef JQuery = {
	@:overload(function(?options:JQueryTooltipsterOptions):JQuery { })
	@:overload(function(method:String, ?callback:haxe.Constraints.Function):JQuery { })
	@:overload(function(method:String, ?param:String):Dynamic { })
	function tooltipster():Void;
};
