typedef IModule = {
	function factory(name:String, resourceServiceFactoryFunction:angular.resource.IResourceServiceFactoryFunction<Dynamic>):IModule;
};
typedef Array<T> = {
	var $promise : angular.IPromise<Array<T>>;
	var $resolved : Bool;
};
