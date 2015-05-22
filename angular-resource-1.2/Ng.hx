typedef IModule = {
	function factory(name:String, resourceServiceFactoryFunction:ng.resource.IResourceServiceFactoryFunction<Dynamic>):IModule;
};
typedef Array<T> = {
	var $promise : ng.IPromise<Array<T>>;
	var $resolved : Bool;
};
