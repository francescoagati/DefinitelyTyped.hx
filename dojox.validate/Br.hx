typedef _cardInfo = {
	var ax : String;
	var bl : String;
	var dc : String;
	var di : String;
	var ec : String;
	var er : String;
	var jcb : String;
	var mc : String;
	var vi : String;
};
typedef _isInRangeCache = { };
typedef Ca = {
	function isPhoneNumber(value:String):Dynamic;
	function isPostalCode(value:Dynamic):Dynamic;
	function isProvince(value:String):Dynamic;
	function isSocialInsuranceNumber(value:String):Dynamic;
};
typedef CreditCard = { };
typedef Regexp = {
	var ca : Dynamic;
	var us : Dynamic;
	function emailAddress(flags:Dynamic):String;
	function emailAddressList(flags:Dynamic):String;
	function host(flags:Dynamic):String;
	function ipAddress(flags:Dynamic):String;
	function numberFormat(flags:Dynamic):Dynamic;
	function url(flags:Dynamic):String;
};
