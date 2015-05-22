typedef IFirebaseSimpleLoginError = {
	var code : String;
	var message : String;
};
typedef IFirebaseSimpleLoginOptions = {
	@:optional
	var debug : Bool;
	@:optional
	var rememberMe : Bool;
	@:optional
	var email : String;
	@:optional
	var password : String;
	@:optional
	var preferRedirect : Bool;
	@:optional
	var scope : String;
	@:optional
	var access_token : String;
	@:optional
	var oauth_token : String;
	@:optional
	var backgroundColor : String;
	@:optional
	var privacyPolicy : String;
	@:optional
	var siteLogo : String;
	@:optional
	var siteName : String;
	@:optional
	var termsOfService : String;
};
typedef IFirebaseSimpleLoginUser = {
	var firebaseAuthToken : String;
	var id : String;
	var provider : String;
	var uid : String;
	@:optional
	var md5_hash : String;
	@:optional
	var email : String;
	@:optional
	var accessToken : String;
	@:optional
	var displayName : String;
	@:optional
	var thirdPartyUserData : Dynamic;
	@:optional
	var username : String;
	@:optional
	var accessTokenSecret : String;
};
extern class FirebaseSimpleLogin {
	var email : String;
	var id : String;
	var provider : String;
	var uid : String;
	var username : String;
	function new(firebase:Firebase, callback:IFirebaseSimpleLoginError -> IFirebaseSimpleLoginUser -> Dynamic):Void;
	function login(loginType:String, ?options:IFirebaseSimpleLoginOptions):Void;
	function logout():Void;
	function createUser(email:String, password:String, ?callback:IFirebaseSimpleLoginError -> IFirebaseSimpleLoginUser -> Dynamic):Void;
	function changePassword(email:String, oldPassword:String, newPassword:String, ?callback:IFirebaseSimpleLoginError -> Bool -> Dynamic):Void;
	function sendPasswordResetEmail(email:String, ?callback:IFirebaseSimpleLoginError -> Bool -> Dynamic):Void;
	function removeUser(email:String, password:String, ?callback:IFirebaseSimpleLoginError -> Bool -> Dynamic):Void;
}
