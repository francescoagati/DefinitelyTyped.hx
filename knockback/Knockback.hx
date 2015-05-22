typedef EventWatcherOptions = {
	var emitter : Dynamic -> Void;
	var update : Dynamic -> Void;
	var event_selector : String;
	@:optional
	var key : String;
};
typedef FactoryOptions = {
	var factories : Dynamic;
};
typedef StoreOptions = {
	var creator : Dynamic;
	var path : String;
	var store : Store;
	var factory : Factory;
};
extern class Destroyable {
	function destroy():Dynamic;
}
extern class ViewModel extends Destroyable {
	function new(?model:Backbone.Model, ?options:ViewModelOptions, ?viewModel:ViewModel):Void;
	function shareOptions():ViewModelOptions;
	function extend(source:Dynamic):Dynamic;
	function model():Backbone.Model;
}
extern class EventWatcher extends Destroyable {
	static function useOptionsOrCreate(options:Dynamic, emitter:KnockoutObservable<Dynamic>, obj:Backbone.Model, callback_options:Dynamic):Dynamic;
	@:overload(function(newEmitter:Backbone.Model):Dynamic { })
	function emitter():Backbone.Model;
	function registerCallbacks(obj:Dynamic, callback_info:Dynamic):Dynamic;
	function releaseCallbacks(obj:Dynamic):Dynamic;
}
extern class Factory {
	static function useOptionsOrCreate(options:FactoryOptions, obj:Dynamic, owner_path:String):Dynamic;
	function new(parent_factory:Dynamic):Void;
	function hasPath(path:String):Bool;
	function addPathMapping(path:String, create_info:Dynamic):Dynamic;
	function addPathMappings(factories:Dynamic, owner_path:String):Dynamic;
	function hasPathMappings(factories:Dynamic, owner_path:String):Bool;
	function creatorForPath(obj:Dynamic, path:String):Dynamic;
}
extern class Store extends Destroyable {
	static function useOptionsOrCreate(options:StoreOptions, obj:Dynamic, observable:KnockoutObservable<Dynamic>):Dynamic;
	function new(model:Backbone.Model, options:StoreOptions):Void;
	function clear():Dynamic;
	function register(obj:Backbone.Model, observable:KnockoutObservable<Dynamic>, options:StoreOptions):Dynamic;
	function findOrCreate(obj:Backbone.Model, options:StoreOptions):Dynamic;
}
extern class DefaultObservable extends Destroyable {
	function new(targetObservable:KnockoutObservable<Dynamic>, defaultValue:Dynamic):Void;
	function setToDefault():Dynamic;
}
extern class FormattedObservable extends Destroyable {
	@:overload(function(format:KnockoutObservable<Dynamic>, args:Array<Dynamic>):Void { })
	function new(format:String, args:Array<Dynamic>):Void;
}
typedef LocalizedObservable = {
	function new(value:Dynamic, options:Dynamic, vm:Dynamic):Void;
	function destroy():Dynamic;
	function resetToCurrent():Dynamic;
	function observedValue(value:Dynamic):Dynamic;
};
extern class TriggeredObservable extends Destroyable {
	function new(emitter:Backbone.ModelBase, event:String):Void;
	@:overload(function(newEmitter:Backbone.ModelBase):Dynamic { })
	function emitter():Backbone.ModelBase;
}
extern class Statistics {
	function new():Void;
	function clear():Dynamic;
	function addModelEvent(event:String):Dynamic;
	function modelEventsStatsString():Dynamic;
	function register(key:String, obj:Dynamic):Dynamic;
	function unregister(key:String, obj:Dynamic):Dynamic;
	function registeredCount(type:Dynamic):Float;
	function registeredStatsString(success_message:String):String;
}
typedef OptionsBase = {
	@:optional
	var path : String;
	@:optional
	var store : Store;
	@:optional
	var factory : Factory;
	@:optional
	var options : Dynamic;
};
typedef ViewModelOptions = {
	>OptionsBase,
	@:optional
	var internals : Array<String>;
	@:optional
	var requires : Array<String>;
	@:optional
	var keys : Array<String>;
	function if(objOrArray:Dynamic):Dynamic;
	@:optional
	var path : String;
	@:optional
	var factories : Dynamic;
};
typedef CollectionOptions = {
	>OptionsBase,
	@:optional
	var models_only : Bool;
	@:optional
	var view_model : Dynamic;
	@:optional
	var create : Dynamic;
	@:optional
	var factories : Dynamic;
	@:optional
	var comparator : Dynamic;
	@:optional
	var sort_attribute : String;
	@:optional
	var filters : Dynamic;
};
typedef CollectionObservable = {
	>KnockoutObservableArray<Dynamic>,
	@:overload(function():Backbone.Collection<Backbone.Model> { })
	function collection(colleciton:Backbone.Collection<Backbone.Model>):Dynamic;
	function destroy():Dynamic;
	function shareOptions():CollectionOptions;
	@:overload(function(ids:Array<Dynamic>):CollectionObservable { })
	@:overload(function(iterator:Backbone.Model -> Bool):CollectionObservable { })
	function filters(id:Dynamic):Backbone.Model;
	function comparator(comparatorFunction:Dynamic):Dynamic;
	function sortAttribute(attr:String):Dynamic;
	function viewModelByModel(model:Backbone.Model):ViewModel;
	function hasViewModels():Bool;
};
typedef Utils = {
	@:overload(function(obj:Dynamic, value:Dynamic):Dynamic { })
	function wrappedObservable(obj:Dynamic):Dynamic;
	@:overload(function(obj:Dynamic, value:Dynamic):Dynamic { })
	function wrappedObject(obj:Dynamic):Dynamic;
	@:overload(function(obj:Dynamic, value:Dynamic):Dynamic { })
	function wrappedModel(obj:Dynamic):Dynamic;
	@:overload(function(obj:Dynamic, value:Dynamic):Dynamic { })
	function wrappedStore(obj:Dynamic):Dynamic;
	@:overload(function(obj:Dynamic, value:Dynamic):Dynamic { })
	function wrappedFactory(obj:Dynamic):Dynamic;
	@:overload(function(obj:Dynamic, value:Dynamic):Dynamic { })
	function wrappedEventWatcher(obj:Dynamic):Dynamic;
	function wrappedDestroy(obj:Dynamic):Dynamic;
	function valueType(observable:KnockoutObservable<Dynamic>):Dynamic;
	function pathJoin(path1:String, path2:String):String;
	function optionsPathJoin(options:Dynamic, path:String):Dynamic;
	function inferCreator(value:Dynamic, factory:Factory, path:String, owner:Dynamic, key:String):Dynamic;
	function createFromDefaultCreator(obj:Dynamic, ?options:Dynamic):Dynamic;
	function hasModelSignature(obj:Dynamic):Bool;
	function hasCollectionSignature(obj:Dynamic):Bool;
};
typedef Static = {
	>Utils,
	var ViewModel : Dynamic;
	var CollectionObservable : Dynamic;
	function collectionObservable(?model:Backbone.Collection<Backbone.Model>, ?options:CollectionOptions):CollectionObservable;
	@:overload(function(model:Backbone.Model, options_attributeName:String, ?vm:ViewModel):KnockoutObservable<Dynamic> { })
	function observable(model:Backbone.Model, options:IObservableOptions, ?vm:ViewModel):KnockoutObservable<Dynamic>;
	function viewModel(?model:Backbone.Model, ?options:Dynamic):KnockoutObservable<Dynamic>;
	function defaultObservable(targetObservable:KnockoutObservable<Dynamic>, defaultValue:Dynamic):KnockoutObservable<Dynamic>;
	@:overload(function(format:KnockoutObservable<Dynamic>, args:Array<Dynamic>):KnockoutObservable<Dynamic> { })
	function formattedObservable(format:String, args:Array<Dynamic>):KnockoutObservable<Dynamic>;
	function localizedObservable(data:Dynamic, options:Dynamic):KnockoutObservable<Dynamic>;
	function release(object:Dynamic, ?pre_release:Void -> Void):Dynamic;
	function releaseKeys(object:Dynamic):Dynamic;
	function releaseOnNodeRemove(viewmodel:ViewModel, node:Element):Dynamic;
	function renderTemplate(template:String, viewModel:ViewModel, options:Dynamic):Dynamic;
	function renderAutoReleasedTemplate(template:String, viewModel:ViewModel, options:Dynamic):Dynamic;
	function applyBindings(viewModel:ViewModel, ?node:Element):Dynamic;
};
typedef IObservableOptions = {
	var key : String;
	@:optional
	var read : Void -> Dynamic;
	@:optional
	var write : Dynamic -> Void;
	@:optional
	var args : Array<KnockoutObservable<Dynamic>>;
	@:optional
	var localizer : LocalizedObservable;
	@:optional
	var default : Dynamic;
	@:optional
	var path : String;
	@:optional
	var store : Dynamic;
	@:optional
	var factory : Dynamic;
	@:optional
	var options : Dynamic;
};
