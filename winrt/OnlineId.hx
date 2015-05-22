@:enum abstract CredentialPromptType(Int) {
	var promptIfNeeded = 0;
	var retypeCredentials = 1;
	var doNotPrompt = 2;
}
typedef IOnlineIdServiceTicketRequest = {
	var policy : String;
	var service : String;
};
typedef IOnlineIdServiceTicketRequestFactory = {
	@:overload(function(service:String):Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest { })
	function createOnlineIdServiceTicketRequest(service:String, policy:String):Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest;
};
extern class OnlineIdServiceTicketRequest {
	@:overload(function(service:String):Void { })
	function new(service:String, policy:String):Void;
	var policy : String;
	var service : String;
}
typedef IOnlineIdServiceTicket = {
	var errorCode : Float;
	var request : Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest;
	var value : String;
};
typedef IUserIdentity = {
	var firstName : String;
	var id : String;
	var isBetaAccount : Bool;
	var isConfirmedPC : Bool;
	var lastName : String;
	var safeCustomerId : String;
	var signInName : String;
	var tickets : Windows.Foundation.Collections.IVectorView<Windows.Security.Authentication.OnlineId.OnlineIdServiceTicket>;
};
extern class OnlineIdServiceTicket {
	var errorCode : Float;
	var request : Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest;
	var value : String;
}
typedef IOnlineIdAuthenticator = {
	var applicationId : String;
	var authenticatedSafeCustomerId : String;
	var canSignOut : Bool;
	@:overload(function(requests:Windows.Foundation.Collections.IIterable<Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest>, credentialPromptType:Windows.Security.Authentication.OnlineId.CredentialPromptType):Windows.Security.Authentication.OnlineId.UserAuthenticationOperation { })
	function authenticateUserAsync(request:Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest):Windows.Security.Authentication.OnlineId.UserAuthenticationOperation;
	function signOutUserAsync():Windows.Security.Authentication.OnlineId.SignOutUserOperation;
};
extern class UserAuthenticationOperation {
	var completed : Windows.Foundation.AsyncOperationCompletedHandler<Windows.Security.Authentication.OnlineId.UserIdentity>;
	var errorCode : Float;
	var id : Float;
	var status : Windows.Foundation.AsyncStatus;
	function getResults():Windows.Security.Authentication.OnlineId.UserIdentity;
	function cancel():Void;
	function close():Void;
	@:overload(function<U>(?success:Windows.Security.Authentication.OnlineId.UserIdentity -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Windows.Security.Authentication.OnlineId.UserIdentity -> U, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Windows.Security.Authentication.OnlineId.UserIdentity -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	function then<U>(?success:Windows.Security.Authentication.OnlineId.UserIdentity -> U, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U>;
	function done<U>(?success:Windows.Security.Authentication.OnlineId.UserIdentity -> Dynamic, ?error:Dynamic -> Dynamic, ?progress:Dynamic -> Void):Void;
	var operation : { var completed : Windows.Foundation.AsyncOperationCompletedHandler<Windows.Security.Authentication.OnlineId.UserIdentity>; function getResults():Windows.Security.Authentication.OnlineId.UserIdentity; };
}
extern class SignOutUserOperation {
	var completed : Windows.Foundation.AsyncActionCompletedHandler;
	var errorCode : Float;
	var id : Float;
	var status : Windows.Foundation.AsyncStatus;
	function getResults():Void;
	function cancel():Void;
	function close():Void;
	@:overload(function<U>(?success:Void -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Void -> U, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Void -> U, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	function then<U>(?success:Void -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U>;
	function done<U>(?success:Void -> Dynamic, ?error:Dynamic -> Dynamic, ?progress:Dynamic -> Void):Void;
	var operation : { var completed : Windows.Foundation.AsyncOperationCompletedHandler<Dynamic>; function getResults():Dynamic; };
}
extern class UserIdentity {
	var firstName : String;
	var id : String;
	var isBetaAccount : Bool;
	var isConfirmedPC : Bool;
	var lastName : String;
	var safeCustomerId : String;
	var signInName : String;
	var tickets : Windows.Foundation.Collections.IVectorView<Windows.Security.Authentication.OnlineId.OnlineIdServiceTicket>;
}
extern class OnlineIdAuthenticator {
	var applicationId : String;
	var authenticatedSafeCustomerId : String;
	var canSignOut : Bool;
	@:overload(function(requests:Windows.Foundation.Collections.IIterable<Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest>, credentialPromptType:Windows.Security.Authentication.OnlineId.CredentialPromptType):Windows.Security.Authentication.OnlineId.UserAuthenticationOperation { })
	function authenticateUserAsync(request:Windows.Security.Authentication.OnlineId.OnlineIdServiceTicketRequest):Windows.Security.Authentication.OnlineId.UserAuthenticationOperation;
	function signOutUserAsync():Windows.Security.Authentication.OnlineId.SignOutUserOperation;
}
