typedef ITransfer = {
	var id : String;
	var object : String;
	var livemode : Bool;
	var amount : Float;
	var created : Float;
	var currency : String;
	var date : Float;
	var reversals : IList<IReversal>;
	var reversed : Bool;
	var status : String;
	var type : String;
	var amount_reversed : Float;
	var balance_transaction : String;
	var description : String;
	var failure_code : String;
	var failure_message : String;
	var metadata : IMetadata;
	var application_fee : String;
	var bank_account : IBankAccount;
	var card : ICard;
	var recipient : String;
	var source_transaction : String;
	var statement_descriptor : String;
};
