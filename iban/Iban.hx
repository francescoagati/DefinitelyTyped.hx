typedef IBANStatic = {
	function electronicFormat(iban:String):String;
	function fromBBAN(countryCode:String, bban:String):String;
	function isValid(iban:String):Bool;
	function isValidBBAN(countryCode:String, bban:String):Bool;
	function printFormat(iban:String, separator:Array<String>):String;
	function toBBAN(iban:String, separator:Array<String>):String;
};
extern class IbanTopLevel {
	static var IBAN : IBANStatic;
}
