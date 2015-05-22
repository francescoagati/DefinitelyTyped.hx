typedef GridsterDraggable = {
	var items : Dynamic;
	var distance : Float;
	var limit : Bool;
	var offset_left : Float;
	var drag : Event -> GridsterUi -> Void;
	var start : Event -> { var helper : JQuery; } -> Void;
	var stop : Event -> { var helper : JQuery; } -> Void;
};
typedef GridsterUi = {
	var position : { var left : Float; var top : Float; };
};
typedef GridsterCollision = {
	var on_overlap_start : GridsterCollisionData -> Void;
	var on_overlap_stop : GridsterCollisionData -> Void;
	var on_overlap : GridsterCollisionData -> Void;
};
typedef GridsterCollisionData = {
	var area : Float;
	var area_coords : GridsterCoords;
	var region : String;
	var coords : GridsterCoords;
	var player_coords : GridsterCoords;
	var el : HTMLElement;
};
typedef GridsterCoords = {
	var col : Float;
	var row : Float;
	var size_x : Float;
	var size_y : Float;
};
typedef GridsterOptions = {
	@:optional
	var widget_selector : Dynamic;
	@:optional
	var widget_margins : Array<Float>;
	@:optional
	var widget_base_dimensions : Array<Float>;
	@:optional
	var extra_cols : Float;
	@:optional
	var extra_rows : Float;
	@:optional
	var min_cols : Float;
	@:optional
	var max_cols : Float;
	@:optional
	var min_rows : Float;
	@:optional
	var max_size_x : Float;
	@:optional
	var autogenerate_sytesheet : Bool;
	@:optional
	var avoid_overlapped_widgets : Bool;
	@:optional
	var serialize_params : JQuery -> GridsterCoords -> Dynamic;
	@:optional
	var collision : GridsterCollision;
	@:optional
	var draggable : GridsterDraggable;
};
typedef JQuery = {
	function gridster(?options:GridsterOptions):JQuery;
};
typedef Gridster = {
	@:overload(function(html:HTMLElement, ?size_x:Float, ?size_y:Float, ?col:Float, ?row:Float):JQuery { })
	function add_widget(html:String, ?size_x:Float, ?size_y:Float, ?col:Float, ?row:Float):JQuery;
	function resize_widget($widget:JQuery, ?size_x:Float, ?size_y:Float, ?callback:Float -> Float -> Void):JQuery;
	@:overload(function(el:HTMLElement, callback:HTMLElement -> Void):Gridster { })
	function remove_widget(el:HTMLElement, ?silent:Bool, ?callback:HTMLElement -> Void):Gridster;
	function serialize<T>(?$widgets:Array<HTMLElement>):Array<T>;
	function serialize_changed<T>():Array<T>;
	function enable():Gridster;
	function disable():Gridster;
};
