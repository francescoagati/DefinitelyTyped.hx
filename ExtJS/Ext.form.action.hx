typedef IAction = {
	>Ext.IBase,
	@:optional
	var failure : Dynamic;
	@:optional
	var form : Ext.form.IBasic;
	@:optional
	var headers : Dynamic;
	@:optional
	var method : String;
	@:optional
	var params : Dynamic;
	@:optional
	var reset : Bool;
	@:optional
	var scope : Dynamic;
	@:optional
	var submitEmptyText : Bool;
	@:optional
	var success : Dynamic;
	@:optional
	var timeout : Float;
	@:optional
	var url : String;
	@:optional
	var waitMsg : String;
	@:optional
	var waitTitle : String;
	@:optional
	var failureType : String;
	@:optional
	var response : Dynamic;
	@:optional
	var result : Dynamic;
	@:optional
	var type : String;
	@:optional
	var CLIENT_INVALID : String;
	@:optional
	var CONNECT_FAILURE : String;
	@:optional
	var LOAD_FAILURE : String;
	@:optional
	var SERVER_INVALID : String;
	@:optional
	function run():Void;
};
typedef IDirectLoad = {
	>Ext.form.action.ILoad,
	@:optional
	var type : String;
};
typedef IDirectSubmit = {
	>Ext.form.action.ISubmit,
	@:optional
	var type : String;
};
typedef ILoad = {
	>Ext.form.action.IAction,
	@:optional
	var type : String;
};
typedef IStandardSubmit = {
	>Ext.form.action.ISubmit,
	@:optional
	var target : String;
};
typedef ISubmit = {
	>Ext.form.action.IAction,
	@:optional
	var clientValidation : Bool;
	@:optional
	var type : String;
	@:optional
	function run():Void;
};
