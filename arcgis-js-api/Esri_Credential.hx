extern class Credential {
	var expires : Float;
	var isAdmin : Bool;
	var oAuthState : Dynamic;
	var server : String;
	var ssl : Bool;
	var token : String;
	var userId : String;
	function destroy():Void;
	function refreshToken():Dynamic;
	function toJson():Dynamic;
	@:overload(function(type:Token-change, listener:{ var target : Credential; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Destroy, listener:{ var target : Credential; } -> Void):esri.Handle;
}
