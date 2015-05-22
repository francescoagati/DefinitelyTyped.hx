typedef IAnimateService = {
	>ng.IAnimateService,
	function enabled(?value:Bool, ?element:JQuery):Bool;
	function enter(element:JQuery, parentElement:JQuery, ?afterElement:JQuery, ?doneCallback:Void -> Void):Void;
	function leave(element:JQuery, ?doneCallback:Void -> Void):Void;
	function move(element:JQuery, parentElement:JQuery, ?afterElement:JQuery, ?doneCallback:Void -> Void):Void;
	function addClass(element:JQuery, className:String, ?doneCallback:Void -> Void):Void;
	function removeClass(element:JQuery, className:String, ?doneCallback:Void -> Void):Void;
	function setClass(element:JQuery, add:String, remove:String, ?doneCallback:Void -> Void):Void;
};
typedef IAnimateProvider = {
	function register(name:String, factory:Void -> ng.IAnimateCallbackObject):Void;
	function classNameFilter(?expression:js.RegExp):js.RegExp;
};
