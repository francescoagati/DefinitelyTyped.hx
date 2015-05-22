typedef AmplifyRequestSettings = {
	var resourceId : String;
	@:optional
	var data : Dynamic;
	@:optional
	var success : haxe.extern.Rest<Dynamic> -> Void;
	@:optional
	var error : haxe.extern.Rest<Dynamic> -> Void;
};
typedef AmplifyDecoder = { };
typedef AmplifyDecoders = {
	var jsSend : AmplifyDecoder;
};
typedef AmplifyAjaxSettings = {
	>JQueryAjaxSettings,
	@:optional
	var cache : Dynamic;
	@:optional
	var decoder : Dynamic;
};
typedef AmplifyRequest = {
	@:overload(function(resourceId:String, resource:AmplifyRequestSettings -> Void):Void { })
	function define(resourceId:String, requestType:String, ?settings:AmplifyAjaxSettings):Void;
	var decoders : AmplifyDecoders;
	var cache : Dynamic;
};
typedef AmplifySubscribe = { };
typedef AmplifyStorageTypeStore = { };
typedef AmplifyStore = {
	>AmplifyStorageTypeStore,
	var localStorage : AmplifyStorageTypeStore;
	var sessionStorage : AmplifyStorageTypeStore;
	var globalStorage : AmplifyStorageTypeStore;
	var userData : AmplifyStorageTypeStore;
	var memory : AmplifyStorageTypeStore;
};
typedef AmplifyStatic = {
	var subscribe : AmplifySubscribe;
	function unsubscribe(topic:String, callback:haxe.Constraints.Function):Void;
	function publish(topic:String, args:haxe.extern.Rest<Dynamic>):Bool;
	var store : AmplifyStore;
	var request : AmplifyRequest;
};
extern class AmplifyjsTopLevel {
	static var amplify : AmplifyStatic;
}
