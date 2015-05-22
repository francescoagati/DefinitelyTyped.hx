typedef IPageControlMembers = {
	@:optional
	function error(err:Dynamic):Dynamic;
	@:optional
	function init(element:HTMLElement, options:Dynamic):Dynamic;
	@:optional
	function load(uri:String):Dynamic;
	@:optional
	function processed(element:HTMLElement, options:Dynamic):Dynamic;
	@:optional
	function ready(element:HTMLElement, options:Dynamic):Dynamic;
	@:optional
	function render(element:HTMLElement, options:Dynamic, loadResult:Promise<Dynamic>):Void;
};
extern class WinJS.UI.PagesTopLevel {
	static function define(uri:String, members:IPageControlMembers):?HTMLElement -> ?Dynamic -> ?Dynamic -> Void -> ?Promise<Dynamic> -> Void;
	static function get(uri:String):?HTMLElement -> ?Dynamic -> ?Dynamic -> Void -> ?Promise<Dynamic> -> Void;
	static function render(uri:String, ?element:HTMLElement, ?options:Dynamic, ?parentedPromise:Promise<Dynamic>):Promise<Dynamic>;
}
