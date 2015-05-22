extern class AccountsTopLevel {
	static function changePassword(oldPassword:String, newPassword:String, ?callback:haxe.Constraints.Function):Void;
	static function config(options:{ @:optional
	var sendVerificationEmail : Bool; @:optional
	var forbidClientAccountCreation : Bool; @:optional
	var restrictCreationByEmailDomain : haxe.extern.EitherType<String, haxe.Constraints.Function>; @:optional
	var loginExpirationInDays : Float; @:optional
	var oauthSecretKey : String; }):Void;
	static function createUser(options:{ @:optional
	var username : String; @:optional
	var email : String; @:optional
	var password : String; @:optional
	var profile : Dynamic; }, ?callback:haxe.Constraints.Function):String;
	static var emailTemplates : Meteor.EmailTemplates;
	static function forgotPassword(options:{ @:optional
	var email : String; }, ?callback:haxe.Constraints.Function):Void;
	static function onCreateUser(func:haxe.Constraints.Function):Void;
	static function onEmailVerificationLink(callback:haxe.Constraints.Function):Void;
	static function onEnrollmentLink(callback:haxe.Constraints.Function):Void;
	static function onLogin(func:haxe.Constraints.Function):{ var stop : haxe.Constraints.Function; };
	static function onLoginFailure(func:haxe.Constraints.Function):{ var stop : haxe.Constraints.Function; };
	static function onResetPasswordLink(callback:haxe.Constraints.Function):Void;
	static function resetPassword(token:String, newPassword:String, ?callback:haxe.Constraints.Function):Void;
	static function sendEnrollmentEmail(userId:String, ?email:String):Void;
	static function sendResetPasswordEmail(userId:String, ?email:String):Void;
	static function sendVerificationEmail(userId:String, ?email:String):Void;
	static function setPassword(userId:String, newPassword:String, ?options:{ @:optional
	var logout : Dynamic; }):Void;
	static var ui : { function config(options:{ @:optional
	var requestPermissions : Dynamic; @:optional
	var requestOfflineToken : Dynamic; @:optional
	var forceApprovalPrompt : Dynamic; @:optional
	var passwordSignupFields : String; }):Void; };
	static function validateLoginAttempt(func:haxe.Constraints.Function):{ var stop : haxe.Constraints.Function; };
	static function validateNewUser(func:haxe.Constraints.Function):Void;
	static function verifyEmail(token:String, ?callback:haxe.Constraints.Function):Void;
}
