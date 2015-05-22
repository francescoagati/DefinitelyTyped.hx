extern class Durandal_viewModelBinderTopLevel {
	static var bindContext : KnockoutBindingContext -> HTMLElement -> ?Dynamic -> Void;
	static var bind : Dynamic -> HTMLElement -> Void;
}
typedef IViewModelDefaults = {
	function areSameItem(currentItem:Dynamic, newItem:Dynamic, activationData:Dynamic):Bool;
	var closeOnDeactivate : Bool;
	function interpretResponse(value:Dynamic):Bool;
	function beforeActivate(newItem:Dynamic):Dynamic;
	function afterDeactivate():Dynamic;
};
typedef IDurandalViewModelActiveItem = {
	var settings : IViewModelDefaults;
	function isActivating(?val:Bool):Bool;
	function canDeactivateItem(item:Dynamic, close:Dynamic):JQueryPromise<Dynamic>;
	function deactivateItem(item:Dynamic, close:Dynamic):JQueryDeferred<Dynamic>;
	function canActivateItem(newItem:Dynamic, ?activationData:Dynamic):JQueryPromise<Dynamic>;
	function activateItem(newItem:Dynamic, ?activationData:Dynamic):JQueryPromise<Dynamic>;
	function canActivate():JQueryPromise<Dynamic>;
	function activate():JQueryPromise<Dynamic>;
	function canDeactivate():JQueryPromise<Dynamic>;
	function deactivate():JQueryDeferred<Dynamic>;
	function includeIn(includeIn:Dynamic):JQueryPromise<Dynamic>;
	function forItems(items:Dynamic):IDurandalViewModelActiveItem;
};
