typedef BindingInstruction = {
	var applyBindings : Bool;
};
extern class Durandal_binderTopLevel {
	static var binding : Dynamic -> HTMLElement -> BindingInstruction -> Void;
	static var bindingComplete : Dynamic -> HTMLElement -> BindingInstruction -> Void;
	static var throwOnErrors : Bool;
	static function getBindingInstruction(view:HTMLElement):BindingInstruction;
	static function bindContext(bindingContext:KnockoutBindingContext, view:HTMLElement, ?obj:Dynamic, ?dataAlias:String):BindingInstruction;
	static function bind(obj:Dynamic, view:HTMLElement):BindingInstruction;
}
