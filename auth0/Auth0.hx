typedef Window = {
	var token : String;
};
typedef Location = {
	var origin : String;
};
typedef Auth0Static = {
	function new(options:Auth0ClientOptions):Auth0Static;
	function changePassword(options:Dynamic, ?callback:haxe.Constraints.Function):Void;
	function decodeJwt(jwt:String):Dynamic;
	function login(options:Dynamic, callback:?Auth0Error -> ?Auth0UserProfile -> ?String -> ?String -> ?String -> Dynamic):Void;
	function loginWithPopup(options:Auth0LoginOptions, callback:?Auth0Error -> ?Auth0UserProfile -> ?String -> ?String -> ?String -> Dynamic):Void;
	function loginWithResourceOwner(options:Auth0LoginOptions, callback:?Auth0Error -> ?Auth0UserProfile -> ?String -> ?String -> ?Dynamic -> Dynamic):Void;
	function loginWithUsernamePassword(options:Auth0LoginOptions, callback:?Auth0Error -> ?Auth0UserProfile -> ?String -> ?String -> ?String -> Dynamic):Void;
	function logout(query:String):Void;
	function getConnections(?callback:haxe.Constraints.Function):Void;
	function getDelegationToken(targetClientId:String, id_token:String, options:Dynamic, callback:?Auth0Error -> ?Auth0DelegationToken -> Dynamic):Void;
	function getProfile(id_token:String, ?callback:haxe.Constraints.Function):Auth0UserProfile;
	function getSSOData(withActiveDirectories:Dynamic, ?callback:haxe.Constraints.Function):Void;
	function parseHash(hash:String):Auth0DecodedHash;
	function signup(options:Auth0SignupOptions, callback:haxe.Constraints.Function):Void;
	function validateUser(options:Dynamic, callback:?Auth0Error -> ?Dynamic -> Dynamic):Void;
};
typedef Auth0ClientOptions = {
	var clientID : String;
	var callbackURL : String;
	@:optional
	var callbackOnLoactionHash : Bool;
	var domain : String;
	@:optional
	var forceJSONP : Bool;
};
typedef Auth0UserProfile = {
	var email : String;
	var family_name : String;
	var gender : String;
	var given_name : String;
	var locale : String;
	var name : String;
	var nickname : String;
	var picture : String;
	var user_id : String;
	var identities : Array<Auth0Identity>;
};
typedef MicrosoftUserProfile = {
	>Auth0UserProfile,
	var emails : Array<String>;
};
typedef Office365UserProfile = {
	>Auth0UserProfile,
	var tenantid : String;
	var upn : String;
};
typedef AdfsUserProfile = {
	>Auth0UserProfile,
	var issuer : String;
};
typedef Auth0Identity = {
	var access_token : String;
	var connection : String;
	var isSocial : Bool;
	var provider : String;
	var user_id : String;
};
typedef Auth0DecodedHash = {
	var access_token : String;
	var id_token : String;
	var profile : Auth0UserProfile;
	var state : Dynamic;
};
typedef Auth0PopupOptions = {
	var width : Float;
	var height : Float;
};
typedef Auth0LoginOptions = {
	@:optional
	var auto_login : Bool;
	@:optional
	var connection : String;
	@:optional
	var email : String;
	@:optional
	var username : String;
	@:optional
	var password : String;
	@:optional
	var popup : Bool;
	@:optional
	var popupOptions : Auth0PopupOptions;
};
typedef Auth0SignupOptions = {
	>Auth0LoginOptions,
	var auto_login : Bool;
};
typedef Auth0Error = {
	var code : Dynamic;
	var details : Dynamic;
	var name : String;
	var message : String;
	var status : Dynamic;
};
typedef Auth0DelegationToken = {
	var expires_in : String;
	var id_token : String;
	var token_type : String;
};
extern class Auth0TopLevel {
	static var Auth0 : Auth0Static;
}
