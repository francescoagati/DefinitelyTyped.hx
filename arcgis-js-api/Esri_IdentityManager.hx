extern class IdentityManager extends IdentityManagerBase {
	var dialog : Dynamic;
	function setOAuthRedirectionHandler(handlerFunction:haxe.Constraints.Function):Void;
	function setOAuthResponseHash(hash:String):Void;
	function signIn():Dynamic;
	@:overload(function(type:Dialog-create, listener:{ var target : IdentityManager; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Dialog-cancel, listener:{ var info : Dynamic; var target : IdentityManager; } -> Void):esri.Handle;
}
