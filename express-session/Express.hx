typedef Request = {
	@:optional
	var session : Session;
};
typedef Session = {
	var regenerate : Dynamic -> Void -> Void;
	var destroy : Dynamic -> Void -> Void;
	var reload : Dynamic -> Void -> Void;
	var save : Dynamic -> Void -> Void;
	var touch : Dynamic -> Void -> Void;
	var cookie : SessionCookie;
};
typedef SessionCookie = {
	var originalMaxAge : Float;
	var path : String;
	var maxAge : Float;
	@:optional
	var secure : Bool;
	var httpOnly : Bool;
	@:optional
	var domain : String;
	var expires : Date;
	var serialize : String -> String -> String;
};
