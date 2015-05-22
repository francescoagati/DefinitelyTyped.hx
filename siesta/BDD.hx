typedef Expectation = {
	var not : Expectation;
	function toBe(expectedValue:Dynamic):Void;
	function toBeCloseTo(expectedValue:Float, ?precision:Float):Void;
	function toBeDefined(expectedValue:Dynamic):Void;
	function toBeFalsy(expectedValue:Dynamic):Void;
	function toBeGreaterThan(expectedValue:Dynamic):Void;
	function toBeLessThan(expectedValue:Dynamic):Void;
	function toBeNaN(expectedValue:Dynamic):Void;
	function toBeNull(expectedValue:Dynamic):Void;
	function toBeTruthy(expectedValue:Dynamic):Void;
	function toBeUndefined(value:Dynamic):Void;
	function toContain(element:Dynamic):Void;
	function toEqual(expectedValue:Dynamic):Void;
	function toMatch(regexp:js.RegExp):Void;
	function toThrow():Void;
};
typedef IExtJSAjax = {
	function ajaxRequestAndThen(url:String, callback:haxe.Constraints.Function, scope:Dynamic):Void;
	function isAjaxLoading(?object:Dynamic, ?description:String):Void;
	@:overload(function(object:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void { })
	function waitForAjaxRequest(callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
};
typedef IExtJSComponent = {
	function destroysOk(components:Dynamic, ?description:String):Void;
	function hasPosition(component:Dynamic, x:Float, y:Float, ?description:String):Void;
	function hasSize(component:Dynamic, width:Float, height:Float, ?description:String):Void;
	@:overload(function(query:String, root:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void { })
	function waitForCQ(query:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	function waitForCQNotFound(query:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	function waitForCQNotVisible(query:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	function waitForCQVisible(query:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	function waitForComponent(component:String, rendered:Bool, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	function waitForComponentNotVisible(component:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	@:overload(function(query:String, root:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void { })
	function waitForComponentQuery(query:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	@:overload(function(query:String, root:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void { })
	function waitForComponentQueryNotFound(query:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	@:overload(function(query:String, root:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void { })
	function waitForComponentQueryNotVisible(query:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	@:overload(function(query:String, root:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void { })
	function waitForComponentQueryVisible(query:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	function waitForComponentVisible(component:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	@:overload(function(query:String, root:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void { })
	function waitForCompositeQuery(query:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	@:overload(function(query:String, root:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void { })
	function waitForCompositeQueryNotFound(query:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	@:overload(function(xtype:String, root:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void { })
	function waitForXType(xtype:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
};
typedef IExtJSDataView = {
	function getFirstItem(view:Dynamic):Dynamic;
	function waitForViewRendered(view:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
};
typedef IExtJSElement = {
	function hasRegion(el:Dynamic, region:Dynamic, ?description:String):Void;
};
typedef IExtJSFormField = {
	function fieldHasValue(field:Dynamic, value:Dynamic, ?description:String):Void;
	function isFieldEmpty(field:Dynamic, ?description:String):Void;
};
typedef IExtJSGrid = {
	function getCell(panel:Dynamic, row:Float, column:Float):HTMLElement;
	function getFirstCell(panel:Dynamic):HTMLElement;
	function getFirstRow(panel:Dynamic):Dynamic;
	function getLastCellInRow(panel:Dynamic, row:Float):HTMLElement;
	function getRow(panel:Dynamic, index:Float):Dynamic;
	@:overload(function(panel:Dynamic, row:Float, column:Float, string:String, ?description:String):Void { })
	function matchGridCellContent(panel:Dynamic, row:Float, column:Float, string:js.RegExp, ?description:String):Void;
	function waitForRowsVisible(panel:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
};
typedef IExtJSObservable = {
	function firesAtLeastNTimes(observable:Dynamic, event:String, n:Float, desc:String):Void;
	function firesOnce(observable:Dynamic, event:String, desc:String):Void;
	function hasListener(observable:Dynamic, eventName:String, ?description:String):Void;
	function isFiredWithSignature(observable:Dynamic, event:String, checkerFn:haxe.Constraints.Function, desc:String):Void;
	function waitForEvent(observable:Dynamic, event:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	function wontFire(observable:Dynamic, event:String, desc:String):Void;
};
typedef IExtJSStore = {
	function isStoreEmpty(store:Dynamic, ?description:String):Void;
	function loadStoresAndThen(args:haxe.extern.Rest<Dynamic>):Void;
	function waitForStoresToLoad(args:haxe.extern.Rest<Dynamic>):Void;
};
typedef ExtJS = {
	>Browser,
	>IExtJSAjax,
	>IExtJSComponent,
	>IExtJSDataView,
	>IExtJSElement,
	>IExtJSFormField,
	>IExtJSGrid,
	>IExtJSObservable,
	>IExtJSStore,
	>IExtJSCore,
	function assertMaxNumberOfGlobalExtOverrides(maxNumber:Float, ?description:Dynamic):Void;
	function assertNoGlobalExtOverrides(?description:String):Void;
	function assertNoLayoutTriggered(fn:haxe.Constraints.Function, scope:Dynamic, ?description:String):Void;
	function getTotalLayoutCounter():Float;
	function waitForPageLoad(callback:haxe.Constraints.Function, ?scope:Dynamic):Void;
};
