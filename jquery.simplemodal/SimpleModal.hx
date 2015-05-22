typedef SimpleModalOptions = {
	@:optional
	var appendTo : String;
	@:optional
	var focus : Bool;
	@:optional
	var opacity : Float;
	@:optional
	var overlayId : String;
	@:optional
	var overlayCss : Dynamic;
	@:optional
	var containerId : String;
	@:optional
	var containerCss : Dynamic;
	@:optional
	var dataId : String;
	@:optional
	var dataCss : Dynamic;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var autoResize : Bool;
	@:optional
	var autoPosition : Bool;
	@:optional
	var zIndex : Float;
	@:optional
	var close : Bool;
	@:optional
	var closeHTML : String;
	@:optional
	var closeClass : String;
	@:optional
	var escClose : Bool;
	@:optional
	var overlayClose : Bool;
	@:optional
	var position : Array<Dynamic>;
	@:optional
	var persist : Bool;
	@:optional
	var modal : Bool;
	@:optional
	var onOpen : SimpleModalDialog -> Void;
	@:optional
	var onShow : SimpleModalDialog -> Void;
	@:optional
	var onClose : SimpleModalDialog -> Void;
};
typedef SimpleModalDialog = {
	var overlay : JQuery;
	var container : JQuery;
	var data : Dynamic;
	var iframe : JQuery;
};
typedef Static = {
	var defaults : SimpleModalOptions;
	function close():Void;
};
typedef JQueryExtension = { };
typedef JQueryStatic = {
	var modal : SimpleModal.Static;
};
typedef JQuery = {
	var modal : SimpleModal.JQueryExtension;
};
