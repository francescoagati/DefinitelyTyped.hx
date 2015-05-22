typedef CompositionTransation = {
	function complete(callback:haxe.Constraints.Function):Void;
};
typedef CompositionContext = {
	var mode : String;
	var parent : HTMLElement;
	var activeView : HTMLElement;
	function triggerAttach():Void;
	@:optional
	var bindingContext : KnockoutBindingContext;
	@:optional
	var cacheViews : Bool;
	@:optional
	var viewElements : Array<HTMLElement>;
	@:optional
	var model : Dynamic;
	@:optional
	var view : Dynamic;
	@:optional
	var area : String;
	@:optional
	var preserveContext : Bool;
	@:optional
	var activate : Bool;
	@:optional
	var strategy : CompositionContext -> JQueryPromise<HTMLElement>;
	var composingNewView : Bool;
	var child : HTMLElement;
	@:optional
	var binding : HTMLElement -> HTMLElement -> CompositionContext -> Void;
	@:optional
	var attached : HTMLElement -> HTMLElement -> CompositionContext -> Void;
	@:optional
	var compositionComplete : HTMLElement -> HTMLElement -> CompositionContext -> Void;
	@:optional
	var transition : String;
};
extern class Durandal_compositionTopLevel {
	static function convertTransitionToModuleId(name:String):String;
	static var defaultTransitionName : String;
	static var current : CompositionTransation;
	static function addBindingHandler(name:Dynamic, ?config:KnockoutBindingHandler, ?initOptionsFactory:?HTMLElement -> ?Dynamic -> ?Dynamic -> ?Dynamic -> ?KnockoutBindingContext -> Dynamic):Dynamic;
	static function getParts(elements:Array<HTMLElement>):Dynamic;
	static function getParts(element:HTMLElement):Dynamic;
	static var defaultStrategy : CompositionContext -> JQueryPromise<HTMLElement>;
	static function compose(element:HTMLElement, settings:CompositionContext, bindingContext:KnockoutBindingContext):Void;
}
