typedef IUploadService = {
	function http<T>(config:IRequestConfig):IUploadPromise<T>;
	function upload<T>(config:IFileUploadConfig):IUploadPromise<T>;
};
typedef IUploadPromise<T> = {
	>IHttpPromise<T>,
	function progress(callback:IHttpPromiseCallback<T>):IUploadPromise<T>;
};
typedef IFileUploadConfig = {
	>IRequestConfig,
	var file : File;
	@:optional
	var fileName : String;
};
