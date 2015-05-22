extern class InfographicsOptions {
	var studyAreaOptions : Dynamic;
	var theme : String;
	function new(?json:Dynamic):Void;
	function getItems(countryID:String):Dynamic;
	function toJson():Dynamic;
}
