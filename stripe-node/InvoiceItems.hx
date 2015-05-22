typedef InvoiceLineItem = {
	var id : String;
	var object : String;
	var livemode : Bool;
	var amount : Float;
	var currency : String;
	var discountable : Bool;
	var period : { var start : Float; var end : Float; };
	var proration : Bool;
	var type : String;
	var description : String;
	var metadata : IMetadata;
	var plan : plans.IPlan;
	var quantity : Float;
	var subscription : String;
};
