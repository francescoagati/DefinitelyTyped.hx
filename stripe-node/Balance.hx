typedef IBalanceTransaction = {
	var id : String;
	var object : String;
	var amount : Float;
	var available_on : Float;
	var created : Float;
	var currency : String;
	var fee : Float;
	var fee_details : Array<{ var amount : Float; var currency : String; var type : String; var application : String; var description : String; }>;
	var net : Float;
	var status : String;
	var type : String;
	@:optional
	var description : String;
	@:optional
	var source : haxe.extern.EitherType<IPaymentToken, ICard>;
	var source_transfers : IList<transfers.ITransfer>;
};
