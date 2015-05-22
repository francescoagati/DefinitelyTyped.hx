typedef JQueryContextMenuOptions = {
	var selector : String;
	@:optional
	var appendTo : String;
	@:optional
	var trigger : String;
	@:optional
	var autoHide : Bool;
	@:optional
	var delay : Float;
	@:optional
	var determinePosition : JQuery -> Void;
	@:optional
	var position : JQuery -> Float -> Float -> Void;
	@:optional
	var positionSubmenu : JQuery -> Void;
	@:optional
	var zIndex : Float;
	@:optional
	var animation : { @:optional
	var duration : Float; @:optional
	var show : String; @:optional
	var hide : String; };
	@:optional
	var events : { @:optional
	var show : Void -> Void; @:optional
	var hide : Void -> Void; };
	@:optional
	var callback : Dynamic -> Dynamic -> Dynamic;
	var items : Dynamic;
	@:optional
	var reposition : Bool;
	@:optional
	var className : String;
};
typedef JQueryStatic = {
	@:overload(function(type:String, ?selector:Dynamic):JQuery { })
	function contextMenu(?options:JQueryContextMenuOptions):JQuery;
};
typedef JQuery = {
	function contextMenu(?options:Dynamic):JQuery;
};
