typedef ICheckOptions = {
	@:optional
	var handle : String;
	@:optional
	var checkboxClass : String;
	@:optional
	var radioClass : String;
	@:optional
	var checkedClass : String;
	@:optional
	var checkedCheckboxClass : String;
	@:optional
	var checkedRadioClass : String;
	@:optional
	var uncheckedClass : String;
	@:optional
	var uncheckedCheckboxClass : String;
	@:optional
	var uncheckedRadioClass : String;
	@:optional
	var disabledClass : String;
	@:optional
	var disabledCheckboxClass : String;
	@:optional
	var disabledRadioClass : String;
	@:optional
	var enabledClass : String;
	@:optional
	var enabledCheckboxClass : String;
	@:optional
	var enabledRadioClass : String;
	@:optional
	var hoverClass : String;
	@:optional
	var focusClass : String;
	@:optional
	var activeClass : String;
	@:optional
	var labelHover : Bool;
	@:optional
	var labelHoverClass : String;
	@:optional
	var increaseArea : String;
	@:optional
	var cursor : Bool;
	@:optional
	var inheritClass : Bool;
	@:optional
	var inheritID : Bool;
	@:optional
	var insert : String;
};
typedef JQuery = {
	@:overload(function(command:String, ?callback:Void -> Void):Void { })
	function iCheck(?options:ICheckOptions):JQuery;
};
