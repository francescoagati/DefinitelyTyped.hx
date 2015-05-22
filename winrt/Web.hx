@:enum abstract WebAuthenticationStatus(Int) {
	var success = 0;
	var userCancel = 1;
	var errorHttp = 2;
}
@:enum abstract WebAuthenticationOptions(Int) {
	var none = 0;
	var silentMode = 1;
	var useTitle = 2;
	var useHttpPost = 3;
	var useCorporateNetwork = 4;
}
typedef IWebAuthenticationResult = {
	var responseData : String;
	var responseErrorDetail : Float;
	var responseStatus : Windows.Security.Authentication.Web.WebAuthenticationStatus;
};
extern class WebAuthenticationResult {
	var responseData : String;
	var responseErrorDetail : Float;
	var responseStatus : Windows.Security.Authentication.Web.WebAuthenticationStatus;
}
typedef IWebAuthenticationBrokerStatics = {
	@:overload(function(options:Windows.Security.Authentication.Web.WebAuthenticationOptions, requestUri:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperation<Windows.Security.Authentication.Web.WebAuthenticationResult> { })
	function authenticateAsync(options:Windows.Security.Authentication.Web.WebAuthenticationOptions, requestUri:Windows.Foundation.Uri, callbackUri:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperation<Windows.Security.Authentication.Web.WebAuthenticationResult>;
	function getCurrentApplicationCallbackUri():Windows.Foundation.Uri;
};
extern class WebAuthenticationBroker {
	@:overload(function(options:Windows.Security.Authentication.Web.WebAuthenticationOptions, requestUri:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperation<Windows.Security.Authentication.Web.WebAuthenticationResult> { })
	static function authenticateAsync(options:Windows.Security.Authentication.Web.WebAuthenticationOptions, requestUri:Windows.Foundation.Uri, callbackUri:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperation<Windows.Security.Authentication.Web.WebAuthenticationResult>;
	static function getCurrentApplicationCallbackUri():Windows.Foundation.Uri;
}
@:enum abstract WebErrorStatus(Int) {
	var unknown = 0;
	var certificateCommonNameIsIncorrect = 1;
	var certificateExpired = 2;
	var certificateContainsErrors = 3;
	var certificateRevoked = 4;
	var certificateIsInvalid = 5;
	var serverUnreachable = 6;
	var timeout = 7;
	var errorHttpInvalidServerResponse = 8;
	var connectionAborted = 9;
	var connectionReset = 10;
	var disconnected = 11;
	var httpToHttpsOnRedirection = 12;
	var httpsToHttpOnRedirection = 13;
	var cannotConnect = 14;
	var hostNameNotResolved = 15;
	var operationCanceled = 16;
	var redirectFailed = 17;
	var unexpectedStatusCode = 18;
	var unexpectedRedirection = 19;
	var unexpectedClientError = 20;
	var unexpectedServerError = 21;
	var multipleChoices = 22;
	var movedPermanently = 23;
	var found = 24;
	var seeOther = 25;
	var notModified = 26;
	var useProxy = 27;
	var temporaryRedirect = 28;
	var badRequest = 29;
	var unauthorized = 30;
	var paymentRequired = 31;
	var forbidden = 32;
	var notFound = 33;
	var methodNotAllowed = 34;
	var notAcceptable = 35;
	var proxyAuthenticationRequired = 36;
	var requestTimeout = 37;
	var conflict = 38;
	var gone = 39;
	var lengthRequired = 40;
	var preconditionFailed = 41;
	var requestEntityTooLarge = 42;
	var requestUriTooLong = 43;
	var unsupportedMediaType = 44;
	var requestedRangeNotSatisfiable = 45;
	var expectationFailed = 46;
	var internalServerError = 47;
	var notImplemented = 48;
	var badGateway = 49;
	var serviceUnavailable = 50;
	var gatewayTimeout = 51;
	var httpVersionNotSupported = 52;
}
typedef IWebErrorStatics = {
	function getStatus(hresult:Float):Windows.Web.WebErrorStatus;
};
extern class WebError {
	static function getStatus(hresult:Float):Windows.Web.WebErrorStatus;
}
