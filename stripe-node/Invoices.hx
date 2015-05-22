typedef IInvoice = {
	var id : String;
	var object : String;
	var livemode : Bool;
	var amount_due : Float;
	var attempt_count : Float;
	var attempted : Bool;
	var closed : Bool;
	var currency : String;
	var customer : String;
	var date : Float;
	var forgiven : Bool;
	var lines : IList<invoiceItems.InvoiceLineItem>;
	var paid : Bool;
	var period_end : Float;
	var period_start : Float;
	var starting_balance : Float;
	var subtotal : Float;
	var total : Float;
	var application_fee : Float;
	var charge : String;
	var description : String;
	var discount : coupons.IDiscount;
	var ending_balance : Float;
	var next_payment_attempt : Float;
	var receipt_number : String;
	var statement_descriptor : String;
	var subscription : String;
	var webhooks_delivered_at : Float;
	var metadata : IMetadata;
	var tax : Float;
	var tax_percent : Float;
};
