typedef IProduct = {
	>Ext.data.IModel,
	@:optional
	var fields : Dynamic;
	@:optional
	function getFields():Array<Dynamic>;
	@:optional
	function purchase(?config:Dynamic):Void;
	@:optional
	function setFields(?fields:Array<Dynamic>):Void;
};
typedef IPurchase = {
	>Ext.data.IModel,
	@:optional
	var fields : Dynamic;
	@:optional
	function complete(?config:Dynamic):Void;
	@:optional
	function getFields():Array<Dynamic>;
	@:optional
	function setFields(?fields:Array<Dynamic>):Void;
};
typedef ISencha = {
	>Ext.IBase,
	@:optional
	function canMakePayments(?config:Dynamic):Void;
	@:optional
	function getCompletedPurchases(?config:Dynamic):Void;
	@:optional
	function getProducts(?config:Dynamic):Void;
	@:optional
	function getPurchases(?config:Dynamic):Void;
};
