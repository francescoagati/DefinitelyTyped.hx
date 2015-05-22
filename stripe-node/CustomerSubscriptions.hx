typedef ISubscription = {
	var id : String;
	var object : String;
	var cancel_at_period_end : Bool;
	var customer : String;
	var plan : plans.IPlan;
	var quantity : Float;
	var start : Float;
	var status : String;
	var application_fee_percent : Float;
	var canceled_at : Float;
	var current_period_end : Float;
	var current_period_start : Float;
	var discount : coupons.IDiscount;
	var ended_at : Float;
	var metadata : IMetadata;
	var trial_end : Float;
	var trial_start : Float;
	var tax_percent : Float;
};
