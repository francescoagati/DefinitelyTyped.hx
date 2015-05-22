typedef IPasswordCredential = {
	var password : String;
	var properties : Windows.Foundation.Collections.IPropertySet;
	var resource : String;
	var userName : String;
	function retrievePassword():Void;
};
extern class PasswordCredential {
	@:overload(function():Void { })
	function new(resource:String, userName:String, password:String):Void;
	var password : String;
	var properties : Windows.Foundation.Collections.IPropertySet;
	var resource : String;
	var userName : String;
	function retrievePassword():Void;
}
typedef ICredentialFactory = {
	function createPasswordCredential(resource:String, userName:String, password:String):Windows.Security.Credentials.PasswordCredential;
};
typedef IPasswordVault = {
	function add(credential:Windows.Security.Credentials.PasswordCredential):Void;
	function remove(credential:Windows.Security.Credentials.PasswordCredential):Void;
	function retrieve(resource:String, userName:String):Windows.Security.Credentials.PasswordCredential;
	function findAllByResource(resource:String):Windows.Foundation.Collections.IVectorView<Windows.Security.Credentials.PasswordCredential>;
	function findAllByUserName(userName:String):Windows.Foundation.Collections.IVectorView<Windows.Security.Credentials.PasswordCredential>;
	function retrieveAll():Windows.Foundation.Collections.IVectorView<Windows.Security.Credentials.PasswordCredential>;
};
extern class PasswordVault {
	function add(credential:Windows.Security.Credentials.PasswordCredential):Void;
	function remove(credential:Windows.Security.Credentials.PasswordCredential):Void;
	function retrieve(resource:String, userName:String):Windows.Security.Credentials.PasswordCredential;
	function findAllByResource(resource:String):Windows.Foundation.Collections.IVectorView<Windows.Security.Credentials.PasswordCredential>;
	function findAllByUserName(userName:String):Windows.Foundation.Collections.IVectorView<Windows.Security.Credentials.PasswordCredential>;
	function retrieveAll():Windows.Foundation.Collections.IVectorView<Windows.Security.Credentials.PasswordCredential>;
}
extern class PasswordCredentialPropertyStore {
	var size : Float;
	var onmapchanged : Dynamic;
	function lookup(key:String):Dynamic;
	function hasKey(key:String):Bool;
	function getView():Windows.Foundation.Collections.IMapView<String, Dynamic>;
	function insert(key:String, value:Dynamic):Bool;
	function remove(key:String):Void;
	function clear():Void;
	function first():Windows.Foundation.Collections.IIterator<Windows.Foundation.Collections.IKeyValuePair<String, Dynamic>>;
}
