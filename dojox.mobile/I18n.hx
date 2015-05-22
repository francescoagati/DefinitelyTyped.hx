typedef I18NProperties = {
	var mblNoConv : Bool;
};
typedef Mobile_all = { };
typedef Sniff = { };
typedef Transition = { };
typedef Uacss = { };
typedef ViewRegistry = {
	var initialView : Dynamic;
	var length : Float;
	function add(view:dojox.mobile.View):Void;
	function getChildViews(parent:dojox.mobile.View):Array<Dynamic>;
	function getEnclosingScrollable(node:HTMLElement):dojox.mobile.Scrollable;
	function getEnclosingView(node:HTMLElement):dojox.mobile.View;
	function getParentView(view:dojox.mobile.View):dojox.mobile.View;
	function getViews():Array<Dynamic>;
	function remove(id:String):Void;
};
