typedef ChosenOptions = {
	@:optional
	var allow_single_deselect : Bool;
	@:optional
	var disable_search : Bool;
	@:optional
	var disable_search_threshold : Float;
	@:optional
	var enable_split_word_search : Bool;
	@:optional
	var inherit_select_classes : Bool;
	@:optional
	var max_selected_options : Float;
	@:optional
	var no_results_text : String;
	@:optional
	var placeholder_text_multiple : String;
	@:optional
	var placeholder_text_single : String;
	@:optional
	var search_contains : Bool;
	@:optional
	var single_backstroke_delete : Bool;
	@:optional
	var width : Float;
	@:optional
	var display_disabled_options : Bool;
	@:optional
	var display_selected_options : Bool;
	@:optional
	var include_group_label_in_selected : Bool;
};
typedef JQuery = {
	@:overload(function(options:ChosenOptions):JQuery { })
	function chosen():JQuery;
};
