extern class ReCaptcha {
	function render(container:haxe.extern.EitherType<String, HTMLElement>, ?parameters:Parameters):Float;
	function reset(?opt_widget_id:Float):Void;
	function getResponse(?opt_widget_id:Float):String;
}
typedef Parameters = {
	var sitekey : String;
	@:optional
	var theme : String;
	@:optional
	var type : String;
	@:optional
	var tabindex : Float;
	@:optional
	var callback : String -> Void;
	@:optional
	var expired-callback : Void -> Void;
};
