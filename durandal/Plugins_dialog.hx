extern class Box {
	function new(message:String, ?title:String, ?options:Array<String>, ?autoclose:Bool, ?settings:Dynamic):Void;
	function selectOption(dialogResult:String):Void;
	function getView():HTMLElement;
	static function setViewUrl(viewUrl:String):Void;
	static var defaultTitle : String;
	static var defaultOptions : Array<String>;
	static function setDefaults(settings:Dynamic):Void;
	static var defaultViewMarkup : String;
}
typedef DialogContext = {
	function addHost(theDialog:Dialog):Dynamic;
	function removeHost(theDialog:Dialog):Dynamic;
	function compositionComplete(child:HTMLElement, parent:HTMLElement, context:composition.CompositionContext):Dynamic;
};
typedef Dialog = {
	var owner : Dynamic;
	var context : DialogContext;
	var activator : DurandalActivator<Dynamic>;
	function close():JQueryPromise<Dynamic>;
	var settings : composition.CompositionContext;
};
extern class Plugins_dialogTopLevel {
	static var MessageBox : Box;
	static var currentZIndex : Float;
	static function getNextZIndex():Float;
	static function isOpen():Bool;
	static function getContext(name:String):DialogContext;
	static function addContext(name:String, modalContext:DialogContext):Void;
	static function getDialog(obj:Dynamic):Dialog;
	static function close(obj:Dynamic, results:haxe.extern.Rest<Dynamic>):Void;
	static function show(obj:Dynamic, ?activationData:Dynamic, ?context:String):JQueryPromise<Dynamic>;
	static function showMessage(message:String, ?title:String, ?options:Array<String>, ?autoclose:Bool, ?settings:Dynamic):JQueryPromise<String>;
	static function showMessage(message:String, ?title:String, ?options:Array<DialogButton>, ?autoclose:Bool, ?settings:Dynamic):JQueryPromise<Dynamic>;
	static function install(config:Dynamic):Void;
}
