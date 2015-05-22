typedef IDiscount = {
	var object : String;
	var coupon : ICoupon;
	var customer : String;
	var start : Float;
	var end : Float;
	var subscription : String;
};
typedef ICoupon = {
	var id : String;
	var object : String;
	var livemode : Bool;
	var created : Float;
	var duration : String;
	var amount_off : Float;
	var currency : String;
	var duration_in_months : Float;
	var max_redemptions : Float;
	var metadata : IMetadata;
	var percent_off : Float;
	var redeem_by : Float;
	var times_redeemed : Float;
	var valid : Bool;
};
