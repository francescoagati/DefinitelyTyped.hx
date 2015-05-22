typedef ICustomer = {
	var id : String;
	var object : String;
	var livemode : Bool;
	var created : Float;
	@:optional
	var account_balance : Float;
	var currency : String;
	var default_source : String;
	var delinquent : Bool;
	var discount : coupons.IDiscount;
	@:optional
	var description : String;
	@:optional
	var email : String;
	@:optional
	var metadata : IMetadata;
	@:optional
	var sources : IList<haxe.extern.EitherType<ICard, bitcoinReceivers.IBitcoinReceiver>>;
	var subscriptions : IList<customerSubscriptions.ISubscription>;
};
