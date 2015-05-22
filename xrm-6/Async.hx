typedef SuccessCallbackDelegate = { };
typedef ErrorCallbackDelegate = { };
typedef XrmPromise = {
	function then(successCallback:SuccessCallbackDelegate, errorCallback:ErrorCallbackDelegate):Void;
};
