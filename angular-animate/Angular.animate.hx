typedef IAnimateService = {
	>angular.IAnimateService,
	function enabled(?value:Bool, ?element:JQuery):Bool;
	function animate(element:JQuery, from:Dynamic, to:Dynamic, ?className:String, ?options:IAnimationOptions):IPromise<Void>;
	function enter(element:JQuery, parentElement:JQuery, ?afterElement:JQuery, ?options:IAnimationOptions):IPromise<Void>;
	function leave(element:JQuery, ?options:IAnimationOptions):IPromise<Void>;
	function move(element:JQuery, parentElement:JQuery, ?afterElement:JQuery):IPromise<Void>;
	function addClass(element:JQuery, className:String, ?options:IAnimationOptions):IPromise<Void>;
	function removeClass(element:JQuery, className:String, ?options:IAnimationOptions):IPromise<Void>;
	function setClass(element:JQuery, add:String, remove:String, ?options:IAnimationOptions):IPromise<Void>;
	function cancel(animationPromise:IPromise<Void>):Void;
};
typedef IAnimateProvider = {
	function register(name:String, factory:Void -> IAnimateCallbackObject):Void;
	function classNameFilter(?expression:js.RegExp):js.RegExp;
};
typedef IAnimationOptions = {
	@:optional
	var to : Dynamic;
	@:optional
	var from : Dynamic;
};
