extern class Stripe {
	static var DEFAULT_HOST : String;
	static var DEFAULT_PORT : String;
	static var DEFAULT_BASE_PATH : String;
	static var DEFAULT_API_VERSION : String;
	static var DEFAULT_TIMEOUT : Float;
	static var PACKAGE_VERSION : String;
	static var USER_AGENT : { var bindings_version : String; var lang : String; var lang_version : String; var platform : String; var publisher : String; var uname : String; };
	static var USER_AGENT_SERIALIZED : String;
	static var resources : Dynamic;
	static var StripeResource : Dynamic;
	var account : resources.Account;
	var balance : resources.Balance;
	var charges : resources.Charges;
	var coupons : resources.Coupons;
	var customers : resources.Customers;
	var events : resources.Events;
	var invoices : resources.Invoices;
	var invoiceItems : resources.InvoiceItems;
	var plans : resources.Plans;
	var recipientCards : resources.RecipientCards;
	var recipients : resources.Recipients;
	var tokens : resources.Tokens;
	var yransfers : resources.Transfers;
	var applicationFees : resources.ApplicationFees;
	var fileUploads : resources.FileUploads;
	var bitcoinReceivers : resources.BitcoinReceivers;
	var customerCards : resources.CustomerCards;
	var customerSubscriptions : resources.CustomerSubscriptions;
	var chargeRefunds : resources.ChargeRefunds;
	var applicationFeeRefunds : resources.ApplicationFeeRefunds;
	var transferReversals : resources.TransferReversals;
	function new(apiKey:String, ?version:String):Void;
	@:overload(function(host:String, port:haxe.extern.EitherType<String, Float>):Void { })
	@:overload(function(host:String, port:haxe.extern.EitherType<String, Float>, protocol:String):Void { })
	function setHost(host:String):Void;
	function setProtocol(protocol:String):Void;
	function setPort(port:haxe.extern.EitherType<String, Float>):Void;
	function setApiVersion(?version:String):Void;
	function setApiKey(?key:String):Void;
	function setTimeout(?timeout:Float):Void;
	function setHttpAgent(agent:String):Void;
	function getConstant(c:String):Dynamic;
	function getClientUserAgent(response:String -> Void):Void;
}
