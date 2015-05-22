typedef ICharge = {
	var id : String;
	var object : String;
	var livemode : Bool;
	var amount : Float;
	var captured : Bool;
	var created : Float;
	var currency : String;
	var paid : Bool;
	var refunded : Bool;
	var refunds : IList<chargeRefunds.IRefund>;
	var source : ICard;
	var status : String;
	var amount_refunded : Float;
	var balance_transaction : String;
	var customer : String;
	@:optional
	var description : String;
	@:optional
	var dispute : IDispute;
	var failure_code : String;
	var failure_message : String;
	var invoice : String;
	var metadata : IMetadata;
	var receipt_email : String;
	var receipt_number : String;
	@:optional
	var application_fee : String;
	var fraud_details : { @:optional
	var user_report : String; @:optional
	var stripe_report : String; };
	@:optional
	var shipping : IShippingInformation;
};
