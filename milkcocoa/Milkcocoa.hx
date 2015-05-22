extern class MilkCocoa {
	function new(host:String, ?callback:haxe.Constraints.Function):Void;
	function dataStore(path:String):DataStore;
	function addAccount(email:String, password:String, ?options:{ }, ?callback:MilkCocoa.Error.AddAccount -> User -> Void):Void;
	function login(email:String, password:String, callback:MilkCocoa.Error.Login -> User -> Void):Void;
	function logout(?callback:String -> Void):Void;
	function getCurrentUser(callback:MilkCocoa.Error.GetCurrentUser -> { var id : String; } -> Void):Void;
}
