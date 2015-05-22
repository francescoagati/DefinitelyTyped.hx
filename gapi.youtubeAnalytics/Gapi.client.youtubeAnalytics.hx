typedef Reports = {
	function query(object:{ var ids : String; var start-date : String; var end-date : String; var metrics : String; @:optional
	var dimensions : String; @:optional
	var filters : String; @:optional
	var max-results : Float; @:optional
	var sort : String; @:optional
	var start-index : Float; @:optional
	var fields : String; }):HttpRequest<Dynamic>;
};
