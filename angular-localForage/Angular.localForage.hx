typedef LocalForageConfig = {
	@:optional
	var driver : String;
	@:optional
	var name : haxe.extern.EitherType<String, Float>;
	@:optional
	var version : Float;
	@:optional
	var storeName : String;
	@:optional
	var description : String;
};
typedef ILocalForageProvider = {
	function config(config:LocalForageConfig):Void;
	function setNotify(onItemSet:Bool, onItemRemove:Bool):Void;
};
typedef ILocalForageService = {
	function setDriver(driver:String):angular.IPromise<Void>;
	function driver<T>():lf.ILocalForage<T>;
	@:overload(function(keys:Array<String>, values:Array<Dynamic>):angular.IPromise<Void> { })
	function setItem(key:String, value:Dynamic):angular.IPromise<Void>;
	@:overload(function(keys:Array<String>):angular.IPromise<Array<Dynamic>> { })
	function getItem(key:String):angular.IPromise<Dynamic>;
	function removeItem(key:haxe.extern.EitherType<String, Array<String>>):angular.IPromise<Void>;
	@:overload(function(keys:Array<String>):angular.IPromise<Array<Dynamic>> { })
	function pull(key:String):angular.IPromise<Dynamic>;
	function clear():angular.IPromise<Void>;
	function key(n:Float):angular.IPromise<String>;
	function keys():angular.IPromise<String>;
	function length():angular.IPromise<Float>;
	function iterate<T>(iteratorCallback:haxe.extern.EitherType<String, Float> -> String -> T):angular.IPromise<T>;
	@:overload(function($scope:ng.IScope, config:{ var key : String; var defaultValue : Dynamic; var scopeKey : String; var name : String; }):Void { })
	function bind($scope:ng.IScope, key:String):Void;
	function unbind($scope:ng.IScope, key:String, ?scopeKey:String):Void;
	function createInstance(config:LocalForageConfig):ILocalForageService;
	function instance(name:String):ILocalForageService;
};
