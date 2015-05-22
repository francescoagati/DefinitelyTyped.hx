@:enum abstract AddAccount(Int) {
	var FormatError = 0;
	var AlreadyExist = 1;
}
@:enum abstract Login(Int) {
	var FormatError = 0;
	var LoginError = 1;
	var EmailNotVerificated = 2;
}
@:enum abstract GetCurrentUser(Int) {
	var NotLoggedIn = 0;
}
typedef DataStore = {
	function push(object:{ }, ?callback:DataStoreCallbackData -> Void):Void;
	function set(id:String, data:{ }):Void;
	function remove(id:String):Void;
	function send(object:{ }):Void;
	function on(event:String, callback:DataStoreCallbackData -> Void):Void;
	function off(event:String):Void;
	function get(id:String, callback:{ } -> Void):Void;
	function query(?condition:{ }):Query;
	function child(path:String):DataStore;
	function parent():DataStore;
	function root():DataStore;
};
typedef DataStoreCallbackData = {
	var err : String;
	var path : String;
	var id : String;
	var value : Dynamic;
};
typedef Query = {
	function done(callback:Dynamic -> Void):Void;
	function limit(number:Float):Query;
	function skip(index:Float):Query;
	function sort(mode:String):Query;
};
typedef User = {
	var id : String;
	var email : String;
	var option : { };
};
