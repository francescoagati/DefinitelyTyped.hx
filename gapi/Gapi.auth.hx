extern class Gapi.authTopLevel {
	static function authorize(params:{ @:optional
	var client_id : String; @:optional
	var immediate : Bool; @:optional
	var response_type : String; @:optional
	var scope : Dynamic; }, callback:GoogleApiOAuth2TokenObject -> Dynamic):Void;
	static function init(callback:Void -> Dynamic):Void;
	static function getToken():GoogleApiOAuth2TokenObject;
	static function setToken(token:GoogleApiOAuth2TokenObject):Void;
}
