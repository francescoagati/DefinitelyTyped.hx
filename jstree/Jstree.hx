typedef JQueryStatic = {
	@:optional
	var jstree : JSTreeStatic;
};
typedef JQuery = {
	@:overload(function(options:JSTreeStaticDefaults):JSTree { })
	@:overload(function(arg:Bool):JSTree { })
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Dynamic { })
	function jstree():JSTree;
};
typedef JSTreeStatic = {
	var version : String;
	var defaults : JSTreeStaticDefaults;
	var plugins : Array<Dynamic>;
	var path : String;
	var idregex : Dynamic;
	function create(el:Dynamic, ?options:JSTreeStaticDefaults):JSTree;
	function destroy():Void;
	function core(id:Float):Void;
	@:overload(function(element:HTMLElement):JSTree { })
	@:overload(function(object:JQuery):JSTree { })
	function reference(selector:String):JSTree;
};
typedef JSTreeStaticDefaults = {
	var plugins : Array<String>;
	var core : JSTreeStaticDefaultsCore;
	@:optional
	var checkbox : JSTreeStaticDefaultsCheckbox;
	@:optional
	var contextmenu : JSTreeStaticDefaultsContextMenu;
	@:optional
	var dnd : JSTreeStaticDefaultsDragNDrop;
	@:optional
	var massload : JSTreeStaticDefaultsMassload;
	@:optional
	var search : JSTreeStaticDefaultsSearch;
	@:optional
	var sort : Dynamic -> Dynamic -> Float;
	@:optional
	var state : JSTreeStaticDefaultsState;
	@:optional
	var types : Dynamic;
	@:optional
	var unique : JSTreeStaticDefaultsUnique;
};
typedef JSTreeStaticDefaultsCore = {
	@:optional
	var data : Dynamic;
	@:optional
	var strings : Dynamic;
	@:optional
	var check_callback : Dynamic;
	var error : Void -> Dynamic;
	@:optional
	var animation : Dynamic;
	@:optional
	var multiple : Bool;
	@:optional
	var themes : JSTreeStaticDefaultsCoreThemes;
	@:optional
	var expand_selected_onload : Bool;
	@:optional
	var worker : Bool;
	@:optional
	var force_text : Bool;
	@:optional
	var dblclick_toggle : Bool;
};
typedef JSTreeStaticDefaultsCoreThemes = {
	@:optional
	var name : String;
	@:optional
	var url : String;
	@:optional
	var dir : String;
	@:optional
	var dots : Bool;
	@:optional
	var icons : Bool;
	@:optional
	var stripes : Bool;
	@:optional
	var variant : Dynamic;
	@:optional
	var responsive : Bool;
};
typedef JSTreeStaticDefaultsCheckbox = {
	var visible : Bool;
	var three_state : Bool;
	var whole_node : Bool;
	var keep_selected_style : Bool;
	var cascade : Bool;
	var tie_selection : Bool;
};
typedef JSTreeStaticDefaultsContextMenu = {
	var select_node : Bool;
	var show_at_node : Bool;
	var items : Dynamic;
};
typedef JSTreeStaticDefaultsDragNDrop = {
	var copy : Bool;
	var open_timeout : Float;
	var is_draggable : Bool;
	var check_while_dragging : Bool;
	var always_copy : Bool;
	var inside_pos : Dynamic;
	var drag_selection : Bool;
	var touch : Bool;
	var large_drop_target : Bool;
	var large_drag_target : Bool;
};
typedef JSTreeStaticDefaultsMassload = {
	var url : Dynamic;
	var data : Dynamic;
};
typedef JSTreeStaticDefaultsSearch = {
	var ajax : Dynamic;
	var fuzzy : Bool;
	var case_sensitive : Bool;
	var show_only_matches : Bool;
	var close_opened_onclear : Bool;
	var search_leaves_only : Bool;
	var search_callback : Dynamic;
};
typedef JSTreeStaticDefaultsState = {
	var key : String;
	var events : String;
	var ttl : Dynamic;
	var filter : Dynamic;
};
typedef JSTreeStaticDefaultsUnique = {
	var case_sensitive : Bool;
	var duplicate : String -> Float -> String;
};
typedef JSTree = {
	>JQuery,
	var plugin : String -> ?Dynamic -> JSTree;
	var init : Dynamic -> Dynamic -> Void;
	var destroy : ?Bool -> Void;
	var teardown : Void -> Void;
	var bind : Void -> Dynamic;
	var unbind : Void -> Dynamic;
	var get_container : Void -> JQuery;
	var get_container_ul : Void -> JQuery;
	var get_string : String -> String;
	var _firstChild : HTMLElement -> HTMLElement;
	var _nextSibling : HTMLElement -> HTMLElement;
	var _previousSibling : HTMLElement -> HTMLElement;
	var get_node : Dynamic -> ?Bool -> Dynamic;
	var get_path : Dynamic -> String -> Bool -> Dynamic;
	var get_next_dom : Dynamic -> ?Bool -> JQuery;
	var get_prev_dom : Dynamic -> ?Bool -> JQuery;
	var get_parent : Dynamic -> String;
	var get_children_dom : Dynamic -> JQuery;
	var is_parent : Dynamic -> Bool;
	var is_loaded : Dynamic -> Bool;
	var is_loading : Dynamic -> Bool;
	var is_open : Dynamic -> Bool;
	var is_closed : Dynamic -> Bool;
	var is_leaf : Dynamic -> Bool;
	var load_node : Dynamic -> Dynamic -> Bool -> Void -> Bool;
	var _load_nodes : Array<Dynamic> -> ?Array<Dynamic> -> Void -> ?Bool -> Void;
	var load_all : Dynamic -> Void -> Void -> Void;
	var _load_node : Dynamic -> ?Bool -> Void -> Bool;
	var _node_changed : Dynamic -> Void;
	var _append_html_data : Dynamic -> String -> Bool -> Void -> Void;
	var _append_json_data : Dynamic -> String -> Bool -> Void -> Bool -> Void;
	var _parse_model_from_html : JQuery -> ?String -> ?Array<Dynamic> -> String;
	var _parse_model_from_flat_json : Dynamic -> ?String -> ?Array<Dynamic> -> String;
	var _parse_model_from_json : Dynamic -> ?String -> ?Array<Dynamic> -> String;
	var _redraw : Void -> Void;
	var redraw : ?Bool -> Void;
	var draw_children : Dynamic -> Void;
	var redraw_node : Dynamic -> Bool -> Bool -> Bool -> Void;
	var open_node : Dynamic -> ?Dynamic -> ?Dynamic -> Void;
	var _open_to : Dynamic -> Void;
	var close_node : Dynamic -> ?Dynamic -> Void;
	var toggle_node : Dynamic -> Void;
	var open_all : ?Dynamic -> ?Float -> ?Dynamic -> Void;
	var close_all : ?Dynamic -> ?Float -> Void;
	var is_disabled : Dynamic -> Bool;
	var enable_node : Dynamic -> Bool;
	var disable_node : Dynamic -> Bool;
	var activate_node : Dynamic -> Dynamic -> Void;
	var hover_node : Dynamic -> Void;
	var dehover_node : Dynamic -> Void;
	var select_node : Dynamic -> ?Bool -> ?Bool -> ?Dynamic -> Dynamic;
	var deselect_node : Dynamic -> ?Bool -> ?Dynamic -> Void;
	var select_all : ?Bool -> Void;
	var deselect_all : ?Bool -> Void;
	var is_selected : Dynamic -> Bool;
	var get_selected : ?Dynamic -> Array<Dynamic>;
	var get_top_selected : ?Dynamic -> Array<Dynamic>;
	var get_bottom_selected : ?Dynamic -> Array<Dynamic>;
	var get_state : Void -> Dynamic;
	var set_state : Dynamic -> Void -> Void -> Void;
	var refresh : Bool -> Dynamic -> Void;
	var refresh_node : Dynamic -> Void;
	var set_id : Dynamic -> String -> Bool;
	var get_text : Dynamic -> String;
	var set_text : Dynamic -> String -> Bool;
	var get_json : ?Dynamic -> ?JSTreeGetJsonOptions -> ?Bool -> Dynamic;
	var create_node : ?Dynamic -> ?Dynamic -> ?Dynamic -> ?Dynamic -> ?Bool -> String;
	var rename_node : Dynamic -> String -> Bool;
	var delete_node : Dynamic -> Bool;
	var check : String -> Dynamic -> Dynamic -> Dynamic -> Dynamic -> Bool;
	var last_error : Void -> Dynamic;
	var move_node : Dynamic -> Dynamic -> ?Dynamic -> ?Dynamic -> Dynamic -> Dynamic -> Void -> ?Bool -> ?Bool -> ?Bool -> Void;
	var copy_node : Dynamic -> Dynamic -> ?Dynamic -> ?Dynamic -> Dynamic -> Dynamic -> Void -> ?Bool -> ?Bool -> ?Bool -> Void;
	var cut : Dynamic -> Void;
	var copy : Dynamic -> Void;
	var get_buffer : Void -> Buffer;
	var can_paste : Void -> Bool;
	var paste : Dynamic -> Dynamic -> Void;
	var clear_buffer : Void -> Void;
	var edit : Dynamic -> ?String -> Void;
	var set_theme : String -> ?Dynamic -> Void;
	var get_theme : Void -> String;
	var set_theme_variant : Dynamic -> Void;
	var get_theme_variant : Void -> String;
	var show_stripes : Void -> Void;
	var hide_stripes : Void -> Void;
	var toggle_stripes : Void -> Void;
	var show_dots : Void -> Void;
	var hide_dots : Void -> Void;
	var toggle_dots : Void -> Void;
	var show_icons : Void -> Void;
	var hide_icons : Void -> Void;
	var toggle_icons : Void -> Void;
	var set_icon : Dynamic -> String -> Void;
	var get_icon : Dynamic -> String;
	var hide_icon : Dynamic -> Void;
	var show_icon : Dynamic -> Void;
	var _undetermined : Void -> Void;
	var show_checkboxes : Void -> Void;
	var hide_checkboxes : Void -> Void;
	var toggle_checkboxes : Void -> Void;
	var is_undetermined : Dynamic -> Bool;
	var check_node : Dynamic -> Dynamic -> Dynamic;
	var uncheck_node : Dynamic -> Dynamic -> Dynamic;
	var check_all : Void -> Dynamic;
	var uncheck_all : Void -> Dynamic;
	var is_checked : Dynamic -> Bool;
	var get_checked : Dynamic -> Array<Dynamic>;
	var get_top_checked : Dynamic -> Array<Dynamic>;
	var get_bottom_checked : Dynamic -> Array<Dynamic>;
	var show_contextmenu : Dynamic -> ?Float -> ?Float -> ?Dynamic -> Void;
	var _show_contextmenu : Dynamic -> Float -> Float -> Float -> Void;
	var search : String -> ?Bool -> ?Bool -> ?Dynamic -> ?Bool -> Void;
	var clear_search : Void -> Void;
	var _search_open : Array<String> -> Void;
	var sort : Dynamic -> ?Bool -> Void;
	var save_state : Void -> Void;
	var restore_state : Void -> Void;
	var clear_state : Void -> Void;
	var get_rules : Dynamic -> Dynamic;
	var get_type : Dynamic -> ?Dynamic -> Dynamic;
	var set_type : Dynamic -> String -> Dynamic;
};
typedef JSTreeGetJsonOptions = {
	var no_state : Bool;
	var no_id : Bool;
	var no_children : Bool;
	var no_data : Bool;
	var flat : Bool;
};
typedef JSTreeBindOptions = {
	@:optional
	var inst : Dynamic;
	@:optional
	var args : Dynamic;
	@:optional
	var rslt : Dynamic;
	@:optional
	var rlbk : Dynamic;
};
typedef Buffer = {
	var mode : String;
	var node : Array<Dynamic>;
	var inst : Dynamic;
};
