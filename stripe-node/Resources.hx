extern class Account extends StripeResource {
	function create():Void;
	function list():Void;
	function update(id:String):Void;
	function retrieve(id:String):Void;
}
extern class ApplicationFeeRefunds extends StripeResource {
	function create():Void;
	function list():Void;
	function update(id:String):Void;
	function retrieve(id:String):Void;
}
extern class ApplicationFees extends StripeResource {
	function list():Void;
	function retrieve(id:String):Void;
}
extern class Balance extends StripeResource {
	function retrieve(id:String):Void;
}
extern class BitcoinReceivers extends StripeResource {
	function create():Void;
	function list():Void;
	function update(id:String):Void;
	function retrieve(id:String):Void;
}
extern class ChargeRefunds extends StripeResource {
	function create():Void;
	function list():Void;
	function update(id:String):Void;
	function retrieve(id:String):Void;
}
extern class Charges extends StripeResource {
	function create(options:{ var amount : Float; var currency : String; @:optional
	var customer : String; @:optional
	var source : haxe.extern.EitherType<String, haxe.extern.EitherType<IPaymentToken, ICard>>; @:optional
	var description : String; @:optional
	var metadata : IMetadata; @:optional
	var capture : Bool; @:optional
	var statement_descriptor : String; @:optional
	var receipt_email : String; @:optional
	var application_fee : String; @:optional
	var shipping : IShippingInformation; }, response:IResponseFn<charges.ICharge>):Void;
	function retrieve(id:String, response:IResponseFn<charges.ICharge>):Void;
	function update(id:String, update:{ @:optional
	var description : String; @:optional
	var metadata : IMetadata; @:optional
	var receipt_email : String; @:optional
	var fraud_details : { @:optional
	var user_report : String; }; }, response:IResponseFn<charges.ICharge>):Void;
	function capture(id:String, response:IResponseFn<charges.ICharge>):Void;
	function list(options:IListOptions, response:IResponseFn<IList<charges.ICharge>>):Void;
	function updateDispute(chargeId:String, options:{ @:optional
	var evidence : IDisputeEvidence; @:optional
	var metadata : IMetadata; }, response:IResponseFn<IDispute>):Void;
	function closeDispute(chargeId:String):Void;
	function createRefund(id:String, options:{ @:optional
	var amount : Float; @:optional
	var refund_applcation_fee : Bool; @:optional
	var reason : String; @:optional
	var metadata : IMetadata; }, response:IResponseFn<chargeRefunds.IRefund>):Void;
	function retrieveRefund(chargeId:String, refundId:String, response:IResponseFn<chargeRefunds.IRefund>):Void;
	function updateRefund(chargeId:String, refundId:String, options:{ var metadata : IMetadata; }, response:IResponseFn<chargeRefunds.IRefund>):Void;
	function listRefunds(chargeId:String, options:IListOptions, response:IResponseFn<IList<chargeRefunds.IRefund>>):Void;
}
extern class Coupons extends StripeResource {
	function create(options:{ @:optional
	var id : String; var duration : String; @:optional
	var amount_off : Float; @:optional
	var currency : String; @:optional
	var duration_in_months : Float; @:optional
	var max_redemptions : Float; @:optional
	var metadata : IMetadata; @:optional
	var percent_off : Float; @:optional
	var redeem_by : Float; }, response:IResponseFn<coupons.ICoupon>):Void;
	function retrieve(id:String, response:IResponseFn<coupons.ICoupon>):Void;
	function update(id:String, options:{ @:optional
	var metadata : IMetadata; }, response:IResponseFn<coupons.ICoupon>):Void;
	function del(id:String, response:IResponseFn<IDeleteConfirmation>):Void;
	function list(options:IListOptions, response:IResponseFn<coupons.ICoupon>):Void;
}
extern class CustomerCards extends StripeResource {
	function create():Void;
	function list():Void;
	function update(id:String):Void;
	function retrieve(id:String):Void;
	function del(id:String):Void;
}
extern class Customers extends StripeResource {
	function create(options:{ @:optional
	var account_balance : Float; @:optional
	var coupon : String; @:optional
	var description : String; @:optional
	var email : String; @:optional
	var metadata : IMetadata; @:optional
	var plan : String; @:optional
	var quantity : Float; @:optional
	var source : haxe.extern.EitherType<String, ICard>; @:optional
	var trial_end : Float; }, response:IResponseFn<customers.ICustomer>):Void;
	function list(options:IListOptions, response:IResponseFn<IList<customers.ICustomer>>):Void;
	function update(id:String, options:{ @:optional
	var account_balance : Float; @:optional
	var coupon : String; @:optional
	var description : String; @:optional
	var email : String; @:optional
	var metadata : IMetadata; @:optional
	var plan : String; @:optional
	var quantity : Float; @:optional
	var source : ICard; @:optional
	var trial_end : Float; }, response:IResponseFn<customers.ICustomer>):Void;
	function retrieve(id:String, response:IResponseFn<customers.ICustomer>):Void;
	function del(id:String, response:IResponseFn<IDeleteConfirmation>):Void;
	function createCard(customerId:String, options:{ @:optional
	var source : haxe.extern.EitherType<String, ICard>; @:optional
	var card : haxe.extern.EitherType<String, IPaymentToken>; }, response:IResponseFn<ICard>):Void;
	function retrieveCard(customerId:String, cardId:String, response:IResponseFn<ICard>):Void;
	function updateCard(customerId:String, cardId:String, options:{ @:optional
	var number : Float; @:optional
	var exp_month : Float; @:optional
	var exp_year : Float; @:optional
	var address_city : String; @:optional
	var address_country : String; @:optional
	var address_line1 : String; @:optional
	var address_line2 : String; @:optional
	var address_state : String; @:optional
	var address_zip : String; @:optional
	var country : String; @:optional
	var name : String; }, response:IResponseFn<ICard>):Void;
	function deleteCard(customerId:String, cardId:String, response:IResponseFn<IDeleteConfirmation>):Void;
	function listCards(customerId:String, options:IListOptions, response:IResponseFn<IList<ICard>>):Void;
	function createSubscription(customerId:String, options:{ var plan : String; @:optional
	var coupon : String; @:optional
	var trial_end : Float; @:optional
	var source : haxe.extern.EitherType<IPaymentToken, ICard>; @:optional
	var quantity : Float; @:optional
	var application_fee_percent : Float; @:optional
	var tax_percent : Float; @:optional
	var metadata : IMetadata; }, response:IResponseFn<customerSubscriptions.ISubscription>):Void;
	function retrieveSubscription(customerId:String, subscriptionId:String, response:IResponseFn<customerSubscriptions.ISubscription>):Void;
	function updateSubscription(customerId:String, subscriptionId:String, options:{ @:optional
	var plan : String; @:optional
	var coupon : String; @:optional
	var prorate : Bool; @:optional
	var trial_end : Float; @:optional
	var source : haxe.extern.EitherType<IPaymentToken, ICard>; @:optional
	var quantity : Float; @:optional
	var application_fee_percent : Float; @:optional
	var tax_percent : Float; @:optional
	var metadata : IMetadata; }, response:IResponseFn<customerSubscriptions.ISubscription>):Void;
	function cancelSubscription(customerId:String, subscriptionId:String, options:{ @:optional
	var at_period_end : Bool; }, response:IResponseFn<customerSubscriptions.ISubscription>):Void;
	function listSubscriptions(customerId:String, options:IListOptions, response:IResponseFn<IList<customerSubscriptions.ISubscription>>):Void;
	function deleteDiscount(customerId:String, response:IResponseFn<IDeleteConfirmation>):Void;
	function deleteSubscriptionDiscount(customerId:String, subscriptionId:String, response:IResponseFn<IDeleteConfirmation>):Void;
}
extern class CustomerSubscriptions extends StripeResource {
	function create():Void;
	function list():Void;
	function update(id:String):Void;
	function retrieve(id:String):Void;
	function del(id:String):Void;
}
extern class Events extends StripeResource {
	function list():Void;
	function retrieve(id:String):Void;
}
extern class FileUploads extends StripeResource {
	function list():Void;
	function retrieve(id:String):Void;
}
extern class InvoiceItems extends StripeResource {
	function create():Void;
	function list():Void;
	function update(id:String):Void;
	function retrieve(id:String):Void;
	function del(id:String):Void;
}
extern class Invoices extends StripeResource {
	function create(options:{ var customer : String; @:optional
	var application_fee : Float; @:optional
	var description : String; @:optional
	var metadata : IMetadata; @:optional
	var statement_descriptor : String; @:optional
	var subscription : String; @:optional
	var tax_percent : Float; }, response:IResponseFn<invoices.IInvoice>):Void;
	function retrieve(id:String, response:IResponseFn<invoices.IInvoice>):Void;
	function retrieveLines(id:String, options:{ @:optional
	var customer : String; @:optional
	var ending_before : String; @:optional
	var limit : Float; @:optional
	var starting_after : String; @:optional
	var subscription : String; }, response:IResponseFn<IList<invoiceItems.InvoiceLineItem>>):Void;
	function retrieveUpcoming(id:String, options:{ @:optional
	var subscription : String; }, response:IResponseFn<invoices.IInvoice>):Void;
	function update(id:String, options:{ @:optional
	var application_fee : Float; @:optional
	var closed : Bool; @:optional
	var description : String; @:optional
	var forgiven : String; @:optional
	var metadata : IMetadata; @:optional
	var statement_descriptor : String; @:optional
	var tax_percent : Float; }, response:IResponseFn<invoices.IInvoice>):Void;
	function pay(id:String, response:IResponseFn<invoices.IInvoice>):Void;
	function list(options:IListOptions, response:IResponseFn<IList<invoices.IInvoice>>):Void;
}
extern class Plans extends StripeResource {
	function create(options:{ var id : String; var amount : Float; var currency : String; var interval : String; @:optional
	var interval_count : Float; var name : String; @:optional
	var trial_period_days : Float; @:optional
	var metadata : IMetadata; @:optional
	var statement_descriptor : String; }, response:IResponseFn<plans.IPlan>):Void;
	function retrieve(id:String, response:IResponseFn<plans.IPlan>):Void;
	function update(id:String, options:{ @:optional
	var name : String; @:optional
	var metadata : IMetadata; @:optional
	var statement_descriptor : String; }, response:IResponseFn<plans.IPlan>):Void;
	function del(id:String, response:IResponseFn<IDeleteConfirmation>):Void;
	function list(options:IListOptions, response:IResponseFn<IList<plans.IPlan>>):Void;
}
extern class RecipientCards extends StripeResource {
	function create():Void;
	function list():Void;
	function update(id:String):Void;
	function retrieve(id:String):Void;
	function del(id:String):Void;
}
extern class Recipients extends StripeResource {
	function create():Void;
	function list():Void;
	function update(id:String):Void;
	function retrieve(id:String):Void;
	function del(id:String):Void;
}
extern class Tokens extends StripeResource {
	function create():Void;
	function retrieve(id:String):Void;
}
extern class TransferReversals extends StripeResource {
	function create():Void;
	function list():Void;
	function update(id:String):Void;
	function retrieve(id:String):Void;
}
extern class Transfers extends StripeResource {
	function create():Void;
	function list():Void;
	function update(id:String):Void;
	function retrieve(id:String):Void;
}
typedef IResponseFn<R> = { };
typedef IDeleteConfirmation = {
	var id : String;
	var deleted : Bool;
};
typedef IDateFilter = {
	@:optional
	var gt : String;
	@:optional
	var gte : String;
	@:optional
	var lt : String;
	@:optional
	var lte : String;
};
typedef IDispute = {
	var object : String;
	var livemode : Bool;
	var amount : Float;
	var charge : String;
	var created : Float;
	var currency : String;
	var reason : String;
	var status : String;
	var balance_transactions : Array<balance.IBalanceTransaction>;
	var evidence : IDisputeEvidence;
	@:optional
	var evidence_details : { var has_evidence : Bool; var submission_count : Float; var due_by : Float; var past_due : Bool; };
	var is_charge_refundable : Bool;
	var metadata : IMetadata;
};
typedef IBankAccount = {
	var id : String;
	var object : String;
	var country : String;
	var currency : String;
	var default_for_currency : Bool;
	var last4 : String;
	var status : String;
	var bank_name : String;
	var fingerprint : String;
	var routing_number : String;
};
typedef IReversal = {
	var id : String;
	var object : String;
	var amount : Float;
	var created : Float;
	var currency : String;
	var balance_transaction : String;
	var metadata : IMetadata;
	var transfer : String;
};
typedef IDisputeEvidence = {
	@:optional
	var access_activity_log : String;
	@:optional
	var billing_address : String;
	@:optional
	var cancellation_policy : String;
	@:optional
	var cancellation_policy_disclosure : String;
	@:optional
	var cancellation_rebuttal : String;
	@:optional
	var customer_communication : String;
	@:optional
	var customer_email_address : String;
	@:optional
	var customer_name : String;
	@:optional
	var customer_purchase_ip : String;
	@:optional
	var customer_signature : String;
	@:optional
	var duplicate_charge_documentation : String;
	@:optional
	var duplicate_charge_explanation : String;
	@:optional
	var duplicate_charge_id : String;
	@:optional
	var product_description : String;
	@:optional
	var receipt : String;
	@:optional
	var refund_policy : String;
	@:optional
	var refund_policy_disclosure : String;
	@:optional
	var refund_refusal_explanation : String;
	@:optional
	var service_date : String;
	@:optional
	var service_documentation : String;
	@:optional
	var shipping_address : String;
	@:optional
	var shipping_carrier : String;
	@:optional
	var shipping_date : String;
	@:optional
	var shipping_documentation : String;
	@:optional
	var shipping_tracking_number : String;
	@:optional
	var uncategorized_file : String;
	@:optional
	var uncategorized_text : String;
};
typedef IIdempotentOptions = {
	var idempotency_key : String;
};
typedef IMetadata = {
	>Dynamic,
};
typedef IShippingInformation = {
	var address : { var line1 : String; var line2 : String; var city : String; var state : String; var postal_code : String; var country : String; };
	var name : String;
	var carrier : String;
	var phone : String;
	var tracking_number : String;
};
typedef IList<T> = {
	var object : String;
	var data : Array<T>;
	var has_more : Bool;
	var url : String;
	var total_count : Float;
};
typedef IPaymentToken = {
	var id : String;
	var card : { var name : String; var address_line1 : String; var address_line2 : String; var address_city : String; var address_state : String; var address_zip : String; var address_country : String; var country : String; var exp_month : Float; var exp_year : Float; var last4 : String; var object : String; var brand : String; var funding : String; };
	var created : Float;
	var livemode : Bool;
	var type : String;
	var object : String;
	var used : Bool;
};
typedef ICard = {
	var id : String;
	var object : String;
	var number : Float;
	var brand : String;
	var exp_month : Float;
	var exp_year : Float;
	var funding : String;
	var last4 : String;
	var address_city : String;
	var address_country : String;
	var address_line1 : String;
	var address_line1_check : String;
	var address_line2 : String;
	var address_state : String;
	var address_zip : String;
	var address_zip_check : String;
	var country : String;
	var customer : String;
	var cvc_check : String;
	var dynamic_last4 : String;
	var name : String;
	var recipient : String;
	var fingerprint : String;
};
typedef IListOptions = {
	@:optional
	var created : haxe.extern.EitherType<String, IDateFilter>;
	@:optional
	var date : haxe.extern.EitherType<String, IDateFilter>;
	@:optional
	var customer : String;
	@:optional
	var ending_before : String;
	@:optional
	var limit : Float;
	@:optional
	var starting_after : String;
};
typedef IStripeError = {
	var type : String;
	@:optional
	var message : String;
	@:optional
	var code : String;
	@:optional
	var param : String;
};
