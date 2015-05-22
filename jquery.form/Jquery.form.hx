typedef JQueryFormOptions = {
	>JQueryAjaxSettings,
	@:optional
	var beforeSerialize : JQuery -> JQueryFormOptions -> Bool;
	@:optional
	var beforeSubmit : Array<Dynamic> -> JQuery -> JQueryFormOptions -> Bool;
	@:optional
	var clearForm : Bool;
	@:optional
	var forceSync : Bool;
	@:optional
	var iframe : Bool;
	@:optional
	var iframeSrc : String;
	@:optional
	var iframeTarget : Dynamic;
	@:optional
	var replaceTarget : Bool;
	@:optional
	var resetForm : Bool;
	@:optional
	var semantic : Bool;
	@:optional
	var target : Dynamic;
	@:optional
	var uploadProgress : ProgressEvent -> Float -> Float -> Float -> Void;
};
typedef JQueryForm = { };
typedef JQueryFormWithDebug = {
	>JQueryForm,
	var debug : Bool;
};
typedef JQueryStatic = {
	function fieldValue(element:Element, ?successful:Bool):String;
};
typedef JQuery = {
	var ajaxForm : JQueryForm;
	var ajaxSubmit : JQueryFormWithDebug;
	function formSerialize():String;
	function fieldSerialize():String;
	function fieldValue(?successful:Bool):Array<String>;
	function resetForm():JQuery;
	function clearForm():JQuery;
	function clearFields():JQuery;
	var ajaxFormUnbind : Void -> JQuery;
	var formToArray : ?Bool -> ?Array<Element> -> Array<Dynamic>;
	var enable : ?Bool -> JQuery;
	var selected : ?Bool -> JQuery;
};
