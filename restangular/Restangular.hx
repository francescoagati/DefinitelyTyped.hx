typedef IPromise<T> = {
	>ng.IPromise<T>,
	function call(methodName:String, ?params:Dynamic):IPromise<T>;
	function get(fieldName:String):IPromise<T>;
	var $object : T;
};
typedef ICollectionPromise<T> = {
	>ng.IPromise<Array<T>>,
	function push(object:Dynamic):ICollectionPromise<T>;
	function call(methodName:String, ?params:Dynamic):ICollectionPromise<T>;
	function get(fieldName:String):ICollectionPromise<T>;
	var $object : Array<T>;
};
typedef IRequestConfig = {
	@:optional
	var params : Dynamic;
	@:optional
	var headers : Dynamic;
	@:optional
	var cache : Dynamic;
	@:optional
	var withCredentials : Bool;
	@:optional
	var data : Dynamic;
	@:optional
	var transformRequest : Dynamic;
	@:optional
	var transformResponse : Dynamic;
	@:optional
	var timeout : Dynamic;
};
typedef IResponse = {
	var status : Float;
	var data : Dynamic;
	var config : { var method : String; var url : String; var params : Dynamic; };
};
typedef IProvider = {
	function setBaseUrl(baseUrl:String):Void;
	function setExtraFields(fields:Array<String>):Void;
	function setParentless(parentless:Bool, routes:Array<String>):Void;
	function setDefaultHttpFields(httpFields:Dynamic):Void;
	@:overload(function(route:String, isCollection:Bool, transformer:haxe.Constraints.Function):Void { })
	function addElementTransformer(route:String, transformer:haxe.Constraints.Function):Void;
	function setTransformOnlyServerElements(active:Bool):Void;
	function setOnElemRestangularized(callback:Dynamic -> Bool -> String -> IService -> Dynamic):Void;
	function setResponseInterceptor(responseInterceptor:Dynamic -> String -> String -> String -> IResponse -> ng.IDeferred<Dynamic> -> Dynamic):Void;
	function setResponseExtractor(responseInterceptor:Dynamic -> String -> String -> String -> IResponse -> ng.IDeferred<Dynamic> -> Dynamic):Void;
	function addResponseInterceptor(responseInterceptor:Dynamic -> String -> String -> String -> IResponse -> ng.IDeferred<Dynamic> -> Dynamic):Void;
	function setRequestInterceptor(requestInterceptor:Dynamic -> String -> String -> String -> Dynamic):Void;
	function addRequestInterceptor(requestInterceptor:Dynamic -> String -> String -> String -> Dynamic):Void;
	function setFullRequestInterceptor(fullRequestInterceptor:Dynamic -> String -> String -> String -> Dynamic -> Dynamic -> IRequestConfig -> { var element : Dynamic; var headers : Dynamic; var params : Dynamic; }):Void;
	function addFullRequestInterceptor(requestInterceptor:Dynamic -> String -> String -> String -> Dynamic -> Dynamic -> IRequestConfig -> { var headers : Dynamic; var params : Dynamic; var element : Dynamic; var httpConfig : IRequestConfig; }):Void;
	function setErrorInterceptor(errorInterceptor:IResponse -> ng.IDeferred<Dynamic> -> Dynamic):Void;
	function setRestangularFields(fields:{ }):Void;
	function setMethodOverriders(overriders:Array<String>):Void;
	function setJsonp(jsonp:Bool):Void;
	@:overload(function(method:String, params:Dynamic):Void { })
	@:overload(function(methods:Array<String>, params:Dynamic):Void { })
	function setDefaultRequestParams(params:Dynamic):Void;
	function setFullResponse(fullResponse:Bool):Void;
	function setDefaultHeaders(headers:Dynamic):Void;
	function setRequestSuffix(suffix:String):Void;
	function setUseCannonicalId(useCannonicalId:Bool):Void;
	function setEncodeIds(encode:Bool):Void;
};
typedef ICustom = {
	function customGET(path:String, ?params:Dynamic, ?headers:Dynamic):IPromise<Dynamic>;
	function customGETLIST(path:String, ?params:Dynamic, ?headers:Dynamic):ICollectionPromise<Dynamic>;
	function customDELETE(path:String, ?params:Dynamic, ?headers:Dynamic):IPromise<Dynamic>;
	function customPOST(?elem:Dynamic, ?path:String, ?params:Dynamic, ?headers:Dynamic):IPromise<Dynamic>;
	function customPUT(?elem:Dynamic, ?path:String, ?params:Dynamic, ?headers:Dynamic):IPromise<Dynamic>;
	function customOperation(operation:String, path:String, ?params:Dynamic, ?headers:Dynamic, ?elem:Dynamic):IPromise<Dynamic>;
	function addRestangularMethod(name:String, operation:String, ?path:String, ?params:Dynamic, ?headers:Dynamic, ?elem:Dynamic):IPromise<Dynamic>;
};
typedef IService = {
	>ICustom,
	@:overload(function(route:String, ?id:String):IElement { })
	function one(route:String, ?id:Float):IElement;
	function oneUrl(route:String, url:String):IElement;
	function all(route:String):IElement;
	function allUrl(route:String, url:String):IElement;
	function copy(fromElement:Dynamic):IElement;
	function withConfig(configurer:IProvider -> Dynamic):IService;
	function restangularizeElement(parent:Dynamic, element:Dynamic, route:String, ?collection:Dynamic, ?reqParams:Dynamic):IElement;
	function restangularizeCollection(parent:Dynamic, element:Dynamic, route:String):ICollection;
	function service(route:String, ?parent:Dynamic):IService;
	function stripRestangular(element:Dynamic):Dynamic;
	function extendModel(route:String, extender:IElement -> Dynamic):Void;
};
typedef IElement = {
	>IService,
	@:overload(function<T>(?queryParams:Dynamic, ?headers:Dynamic):IPromise<T> { })
	function get(?queryParams:Dynamic, ?headers:Dynamic):IPromise<Dynamic>;
	@:overload(function<T>(?subElement:Dynamic, ?queryParams:Dynamic, ?headers:Dynamic):ICollectionPromise<T> { })
	function getList(?subElement:Dynamic, ?queryParams:Dynamic, ?headers:Dynamic):ICollectionPromise<Dynamic>;
	function put(?queryParams:Dynamic, ?headers:Dynamic):IPromise<Dynamic>;
	@:overload(function<T>(subElement:Dynamic, elementToPost:T, ?queryParams:Dynamic, ?headers:Dynamic):IPromise<T> { })
	@:overload(function(elementToPost:Dynamic, ?queryParams:Dynamic, ?headers:Dynamic):IPromise<Dynamic> { })
	@:overload(function<T>(elementToPost:T, ?queryParams:Dynamic, ?headers:Dynamic):IPromise<T> { })
	function post(subElement:Dynamic, elementToPost:Dynamic, ?queryParams:Dynamic, ?headers:Dynamic):IPromise<Dynamic>;
	function remove(?queryParams:Dynamic, ?headers:Dynamic):IPromise<Dynamic>;
	function head(?queryParams:Dynamic, ?headers:Dynamic):IPromise<Dynamic>;
	function trace(?queryParams:Dynamic, ?headers:Dynamic):IPromise<Dynamic>;
	function options(?queryParams:Dynamic, ?headers:Dynamic):IPromise<Dynamic>;
	function patch(?queryParams:Dynamic, ?headers:Dynamic):IPromise<Dynamic>;
	function clone():IElement;
	@:overload(function<T>():T { })
	function plain():Dynamic;
	function withHttpConfig(httpConfig:IRequestConfig):IElement;
	function save(?queryParams:Dynamic, ?headers:Dynamic):IPromise<Dynamic>;
	function getRestangularUrl():String;
};
typedef ICollection = {
	>IService,
	@:overload(function<T>(?queryParams:Dynamic, ?headers:Dynamic):ICollectionPromise<T> { })
	function getList(?queryParams:Dynamic, ?headers:Dynamic):ICollectionPromise<Dynamic>;
	@:overload(function<T>(elementToPost:T, ?queryParams:Dynamic, ?headers:Dynamic):IPromise<T> { })
	function post(elementToPost:Dynamic, ?queryParams:Dynamic, ?headers:Dynamic):IPromise<Dynamic>;
	function head(?queryParams:Dynamic, ?headers:Dynamic):IPromise<Dynamic>;
	function trace(?queryParams:Dynamic, ?headers:Dynamic):IPromise<Dynamic>;
	function options(?queryParams:Dynamic, ?headers:Dynamic):IPromise<Dynamic>;
	function patch(?queryParams:Dynamic, ?headers:Dynamic):IPromise<Dynamic>;
	function putElement(idx:Dynamic, params:Dynamic, headers:Dynamic):IPromise<Dynamic>;
	function withHttpConfig(httpConfig:IRequestConfig):ICollection;
	function clone():ICollection;
	@:overload(function<T>():Array<T> { })
	function plain():Dynamic;
	function getRestangularUrl():String;
};
