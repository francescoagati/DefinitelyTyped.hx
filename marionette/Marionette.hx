extern class Callbacks {
	function add(callback:haxe.Constraints.Function, contextOverride:Dynamic):Void;
	function run(options:Dynamic, context:Dynamic):Void;
	function reset():Void;
}
extern class Object extends Backbone.Events {
	function initialize(?options:Dynamic):Void;
	function getOption(optionName:String):Dynamic;
	function destroy(args:haxe.extern.Rest<Dynamic>):Void;
}
extern class Controller extends Backbone.Events {
	function new(?options:Dynamic):Void;
	function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	function getOption(optionName:String):Dynamic;
	function triggerMethod(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
}
typedef RegionConstructionOptions = {
	@:optional
	var el : Dynamic;
};
typedef RegionShowOptions = {
	@:optional
	var preventDestroy : Bool;
	@:optional
	var forceShow : Bool;
	@:optional
	var triggerBeforeAttach : Bool;
	@:optional
	var triggerAttach : Bool;
};
extern class Region extends Marionette.Object {
	static function buildRegion(regionConfig:Dynamic, defaultRegionType:Dynamic):Region;
	function new(?options:RegionConstructionOptions):Void;
	var el : Dynamic;
	function show<TModel:(Backbone.Model)>(view:Backbone.View<TModel>, ?options:RegionShowOptions):Void;
	function attachView<TModel:(Backbone.Model)>(view:Backbone.View<TModel>, ?options:RegionShowOptions):Dynamic;
	function attachHtml<TModel:(Backbone.Model)>(view:Backbone.View<TModel>):Void;
	function reset():Dynamic;
	function hasView():Bool;
	function empty():Dynamic;
}
typedef RegionDefaults = {
	@:optional
	var selector : String;
	@:optional
	var el : Dynamic;
	@:optional
	var regionClass : Dynamic;
	@:optional
	var allowMissingEl : Bool;
};
extern class RegionManager extends Controller {
	function new(?options:Dynamic):Void;
	@:overload(function(regionDefinitions:{ }, ?defaults:RegionDefaults):Dynamic { })
	function addRegions(regionDefinitions:haxe.Constraints.Function, ?defaults:RegionDefaults):Dynamic;
	function addRegion(name:String, definition:Dynamic):Region;
	function get(name:String):Region;
	function removeRegion(name:String):Void;
	function removeRegions():Void;
	function emptyRegions():Void;
	function destroy():Void;
	function all(iterator:Region -> Float -> Bool, ?context:Dynamic):Bool;
	function any(iterator:Region -> Float -> Bool, ?context:Dynamic):Bool;
	function contains(value:Dynamic):Bool;
	function detect(iterator:Dynamic -> Bool, ?context:Dynamic):Dynamic;
	function each(iterator:Region -> Float -> ?Dynamic -> Void, ?context:Dynamic):Void;
	function every(iterator:Region -> Float -> Bool, ?context:Dynamic):Bool;
	function filter(iterator:Region -> Float -> Bool, ?context:Dynamic):Array<Region>;
	function find(iterator:Region -> Float -> Bool, ?context:Dynamic):Region;
	@:overload(function(n:Float):Array<Region> { })
	function first():Region;
	function forEach(iterator:Region -> Float -> ?Dynamic -> Void, ?context:Dynamic):Void;
	function include(value:Dynamic):Bool;
	function initial(n:Float):Array<Region>;
	function invoke(methodName:String, ?args:Array<Dynamic>):Dynamic;
	function isEmpty(object:Dynamic):Bool;
	@:overload(function(n:Float):Array<Region> { })
	function last():Region;
	function lastIndexOf(element:Region, ?fromIndex:Float):Float;
	function map(iterator:Region -> Float -> ?Dynamic -> Array<Dynamic>, ?context:Dynamic):Array<Dynamic>;
	function pluck(attribute:String):Array<Dynamic>;
	function reject(iterator:Region -> Float -> Bool, ?context:Dynamic):Array<Region>;
	function rest(n:Float):Array<Region>;
	function select(iterator:Dynamic, ?context:Dynamic):Array<Region>;
	function some(iterator:Region -> Float -> Bool, ?context:Dynamic):Bool;
	function toArray():Array<Region>;
	function without(values:haxe.extern.Rest<Dynamic>):Array<Region>;
}
extern class TemplateCache {
	static function get(templateId:String):Dynamic;
	static function clear(templateId:haxe.extern.Rest<String>):Void;
	function loadTemplate(templateId:String):Dynamic;
	function compileTemplate(rawTemplate:Dynamic):Dynamic;
}
extern class Renderer {
	static function render(template:Dynamic, data:Dynamic):String;
}
extern class View<TModel:(Backbone.Model)> extends Backbone.View<TModel> {
	function new(?options:Backbone.ViewOptions<TModel>):Void;
	var behaviors : Dynamic;
	var triggers : { };
	var modelEvents : Dynamic;
	var collectionEvents : Dynamic;
	var ui : Dynamic;
	function getTemplate():Dynamic;
	function getOption<T>(optionName:String):T;
	function mixinTemplateHelpers(?target:Dynamic):Dynamic;
	function configureTriggers():Dynamic;
	function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	function bindUIElements():Dynamic;
	function unbindUIElements():Dynamic;
	function triggerMethod(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	function onShow():Void;
	function onDestroy():Void;
	function onBeforeDestroy(args:haxe.extern.Rest<Dynamic>):Void;
	function onAttach():Void;
	function onBeforeAttach():Void;
	function onDomRefresh():Void;
}
extern class ItemView<TModel:(Backbone.Model)> extends View<TModel> {
	function new(?options:Backbone.ViewOptions<TModel>):Void;
	function serializeData():Dynamic;
	function render():ItemView<TModel>;
	function onBeforeRender():Void;
	function onRender():Void;
}
typedef CollectionViewOptions<TModel:(Backbone.Model)> = {
	>Backbone.ViewOptions<TModel>,
	@:optional
	var sort : Bool;
};
extern class CollectionView<TModel:(Backbone.Model)> extends View<TModel> {
	function new(?options:CollectionViewOptions<TModel>):Void;
	var childView : Dynamic;
	var childViewOptions : Dynamic;
	var childViewEventPrefix : String;
	var childEvents : Dynamic;
	var emptyView : Dynamic;
	var emptyViewOptions : Dynamic;
	var children : Backbone.ChildViewContainer<TModel>;
	function render():CollectionView<TModel>;
	function addChild(item:Dynamic, ChildView:Backbone.View<TModel>, index:Number):Void;
	function renderChildView(view:Backbone.View<TModel>, index:Number):Void;
	function buildChildView(child:Dynamic, ItemViewType:Dynamic, itemViewOptions:Dynamic):View<TModel>;
	function removeChildView(view:Dynamic):Void;
	function isEmpty():Bool;
	function checkEmpty():Void;
	function destroyChildren():Void;
	function resortView():Void;
	function attachHtml(collectionView:CollectionView<TModel>, childView:Backbone.View<TModel>, index:Float):Void;
	function getChildView(item:TModel):Dynamic;
	function getEmptyView():Dynamic;
	function onBeforeRender():Void;
	function onRender():Void;
	function onBeforeAddChild(view:Dynamic):Void;
	function onAddChild(childView:Dynamic):Void;
	function onBeforeRemoveChild(childView:Dynamic):Void;
	function onRemoveChild(childView:Dynamic):Void;
}
extern class CompositeView<TModel:(Backbone.Model)> extends CollectionView<TModel> {
	function new(?options:CollectionViewOptions<TModel>):Void;
	var childView : Dynamic;
	var childViewContainer : Dynamic;
	function render():CompositeView<TModel>;
	function onBeforeRenderTemplate():Void;
	function onRenderTemplate():Void;
	function onBeforeRenderCollection():Void;
	function onRenderCollection():Void;
}
extern class LayoutView<TModel:(Backbone.Model)> extends ItemView<TModel> {
	var regionClass : Dynamic;
	function new(?options:Dynamic):Void;
	function addRegion(name:String, definition:Dynamic):Region;
	function addRegions(regions:Dynamic):Dynamic;
	function render():LayoutView<TModel>;
	function removeRegion(name:String):Dynamic;
	function getRegionManager():Dynamic;
}
typedef AppRouterOptions = {
	>Backbone.RouterOptions,
	@:optional
	var appRoutes : Dynamic;
	@:optional
	var controller : Dynamic;
};
extern class AppRouter extends Backbone.Router {
	function new(?options:AppRouterOptions):Void;
	function processAppRoutes(controller:Dynamic, appRoutes:Dynamic):Void;
	function appRoute(route:String, methodName:String):Void;
}
extern class Application extends Backbone.Events {
	var vent : Backbone.Wreqr.EventAggregator;
	var commands : Backbone.Wreqr.Commands;
	var reqres : Backbone.Wreqr.RequestResponse;
	var submodules : Dynamic;
	function execute(args:haxe.extern.Rest<Dynamic>):Void;
	function request(args:haxe.extern.Rest<Dynamic>):Dynamic;
	function addInitializer(initializer:Dynamic):Void;
	function start(?options:Dynamic):Void;
	function addRegions(regions:Dynamic):Dynamic;
	function emptyRegions():Void;
	function removeRegion(region:Region):Void;
	function getRegion(regionName:String):Region;
	function module(moduleNames:Dynamic, moduleDefinition:Dynamic):Module;
	function onBeforeStart(?options:Dynamic):Void;
	function onStart(?options:Dynamic):Void;
}
extern class Module extends Backbone.Events {
	function new(moduleName:String, app:Application):Void;
	var submodules : Dynamic;
	function triggerMethod(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	function addInitializer(callback:Dynamic):Void;
	function addFinalizer(callback:Dynamic):Void;
	function start(?options:Dynamic):Void;
	function addDefinition(moduleDefinition:Dynamic, customArgs:Dynamic):Dynamic;
}
extern class Behavior extends Marionette.Object {
	function new(?options:Dynamic, ?view:Dynamic):Void;
	var options : Dynamic;
	var triggers : Dynamic;
	var modelEvents : Dynamic;
	var collectionEvents : Dynamic;
	var behaviors : Dynamic;
	var defaults : Dynamic;
	var el : Dynamic;
	var $el : JQuery;
	var view : Dynamic;
	function $(selector:Dynamic):JQuery;
}
extern class Behaviors {
	static function behaviorsLookup():Dynamic;
	static function getBehaviorClass(options:Dynamic, key:String):Dynamic;
}
extern class MarionetteTopLevel {
	static function getOption(target:Dynamic, optionName:String):Dynamic;
	static function triggerMethod(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function triggerMethodOn(ctx:Dynamic, name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function MonitorDOMRefresh(view:Backbone.View<Backbone.Model>):Void;
	static function bindEntityEvents(target:Dynamic, entity:Dynamic, bindings:Dynamic):Void;
	static function unbindEntityEvents(target:Dynamic, entity:Dynamic, bindings:Dynamic):Void;
}
