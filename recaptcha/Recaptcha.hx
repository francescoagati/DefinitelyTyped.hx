extern class Recaptcha {
	function new():Void;
	static function reload():Void;
	static function switch_type(newtype:String):Void;
	static function showhelp():Void;
	static function get_challenge():String;
	static function get_response():String;
	static function focus_response_field():Void;
	static function create(public_key:String, element:String, options:RecaptchaOptions):Void;
	static function destroy():Void;
}
typedef RecaptchaOptions = {
	@:optional
	var tabindex : Float;
	@:optional
	var theme : String;
	@:optional
	var callback : haxe.Constraints.Function;
	@:optional
	var lang : String;
	@:optional
	var custom_theme_widget : String;
	@:optional
	var custom_translations : CustomTranslations;
};
typedef CustomTranslations = {
	@:optional
	var visual_challenge : String;
	@:optional
	var audio_challenge : String;
	@:optional
	var refresh_btn : String;
	@:optional
	var instructions_visual : String;
	@:optional
	var instructions_audio : String;
	@:optional
	var help_btn : String;
	@:optional
	var play_again : String;
	@:optional
	var cant_hear_this : String;
	@:optional
	var incorrect_try_again : String;
	@:optional
	var image_alt_text : String;
	@:optional
	var privacy_and_terms : String;
};
