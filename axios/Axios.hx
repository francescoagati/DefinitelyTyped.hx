typedef AxiosXHRConfigBase<T> = {
	@:optional
	var transformRequest : T -> U;
	@:optional
	var transformResponse : T -> U;
	@:optional
	var headers : Dynamic;
	@:optional
	var params : Dynamic;
	@:optional
	var withCredentials : Bool;
	@:optional
	var responseType : String;
	@:optional
	var xsrfCookieName : String;
	@:optional
	var xsrfHeaderName : String;
};
typedef AxiosXHRConfig<T> = {
	>AxiosXHRConfigBase<T>,
	var url : String;
	@:optional
	var method : String;
	@:optional
	var data : T;
};
typedef AxiosXHR<T> = {
	var data : T;
	var status : Float;
	var statusText : String;
	var headers : Dynamic;
	var config : AxiosXHRConfig<T>;
};
typedef AxiosStatic = {
	function new<T>(config:AxiosXHRConfig<T>):Promise<AxiosXHR<T>>;
	function get<T>(url:String, ?config:AxiosXHRConfigBase<T>):Promise<AxiosXHR<T>>;
	function delete<T>(url:String, ?config:AxiosXHRConfigBase<T>):Promise<AxiosXHR<T>>;
	function head<T>(url:String, ?config:AxiosXHRConfigBase<T>):Promise<AxiosXHR<T>>;
	function post<T>(url:String, ?data:Dynamic, ?config:AxiosXHRConfigBase<T>):Promise<AxiosXHR<T>>;
	function put<T>(url:String, ?data:Dynamic, ?config:AxiosXHRConfigBase<T>):Promise<AxiosXHR<T>>;
	function patch<T>(url:String, ?data:Dynamic, ?config:AxiosXHRConfigBase<T>):Promise<AxiosXHR<T>>;
};
