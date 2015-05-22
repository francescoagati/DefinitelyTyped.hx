typedef IAuthService = {
	function loginConfirmed(?data:Dynamic, ?configUpdater:haxe.Constraints.Function):Void;
	function loginCancelled(?data:Dynamic, ?reason:Dynamic):Void;
};
typedef IHttpBuffer = {
	function append(config:ng.IRequestConfig, deferred:{ function resolve(data:Dynamic):Void; function reject(data:Dynamic):Void; }):Void;
	function rejectAll(?reason:Dynamic):Void;
	function retryAll(?updater:haxe.Constraints.Function):Void;
};
