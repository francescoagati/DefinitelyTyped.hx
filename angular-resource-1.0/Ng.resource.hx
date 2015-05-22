typedef IResourceService = { };
typedef IActionDescriptor = {
	var method : String;
	@:optional
	var isArray : Bool;
	@:optional
	var params : Dynamic;
	@:optional
	var headers : Dynamic;
};
typedef IResourceClass = {
	var get : IActionCall;
	var save : IActionCall;
	var query : IActionCall;
	var remove : IActionCall;
	var delete : IActionCall;
};
typedef IActionCall = { };
typedef IResource = {
	var $save : IActionCall;
	var $remove : IActionCall;
	var $delete : IActionCall;
	var $query : IActionCall;
	var $get : IActionCall;
};
typedef IResourceServiceFactoryFunction = { };
