typedef JQuery = {
	@:overload(function(methodName:Open):JQuery { })
	@:overload(function(methodName:Close):JQuery { })
	@:overload(function(methodName:Val):String { })
	@:overload(function(methodName:Val, val:String):JQuery { })
	@:overload(function(methodName:String):String { })
	@:overload(function(methodName:String, query:String):JQuery { })
	@:overload(function(options:Twitter.Typeahead.Options, datasets:Array<Twitter.Typeahead.Dataset>):JQuery { })
	@:overload(function(options:Twitter.Typeahead.Options, datasets:haxe.extern.Rest<Twitter.Typeahead.Dataset>):JQuery { })
	function typeahead(methodName:Destroy):JQuery;
};
