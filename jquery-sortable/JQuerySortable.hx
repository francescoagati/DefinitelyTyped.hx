typedef Position = {
	var top : Float;
	var left : Float;
};
typedef ContainerGroup = {
	var $document : JQuery;
	var containerDimensions : Array<Dimensions>;
	var containers : Array<Container>;
	var delayMet : Bool;
	var dragInitDone : Bool;
	var dragProxy : Dynamic;
	var dragging : Bool;
	var dropProxy : Dynamic;
	var item : JQuery;
	var itemContainer : Container;
	var lastAppendedItem : JQuery;
	var lastPointer : Position;
	var lastRelativePointer : Position;
	var offsetParent : JQuery;
	var options : Options;
	var placeholder : JQuery;
	var pointer : Position;
	var relativePointer : Position;
	var sameResultBox : { var bottom : Float; var left : Float; var right : Float; var top : Float; };
	var scrollProxy : Dynamic;
};
typedef Container = {
	var el : JQuery;
	var options : Options;
	var group : ContainerGroup;
	var rootGroup : ContainerGroup;
	var handle : String;
	var target : JQuery;
	var itemDimensions : Array<Dimensions>;
	var items : Array<HTMLElement>;
};
typedef GroupOptions = {
	@:optional
	var afterMove : JQuery -> Container -> JQuery -> Void;
	@:optional
	var containerPath : String;
	@:optional
	var containerSelector : String;
	@:optional
	var distance : Float;
	@:optional
	var delay : Float;
	@:optional
	var handle : String;
	@:optional
	var itemPath : String;
	@:optional
	var itemSelector : String;
	@:optional
	var isValidTarget : JQuery -> Container -> Bool;
	@:optional
	var onCancel : OnCancelHandler;
	@:optional
	var onDrag : OnDragEventHandler;
	@:optional
	var onDragStart : GenericEventHandler;
	@:optional
	var onDrop : GenericEventHandler;
	@:optional
	var onMousedown : OnMousedownHandler;
	@:optional
	var placeholder : haxe.extern.EitherType<JQuery, haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Element, String>>>;
	@:optional
	var pullPlaceholder : Bool;
	@:optional
	var serialize : SerializeFunc;
	@:optional
	var tolerance : Float;
};
typedef ContainerOptions = {
	@:optional
	var drag : Bool;
	@:optional
	var drop : Bool;
	@:optional
	var exclude : String;
	@:optional
	var nested : Bool;
	@:optional
	var vertical : Bool;
};
typedef Options = {
	>GroupOptions,
	>ContainerOptions,
};
typedef JQuery = {
	@:overload(function(methodName:Enable):JQuery { })
	@:overload(function(methodName:Disable):JQuery { })
	@:overload(function(methodName:Refresh):JQuery { })
	@:overload(function(methodName:Destroy):JQuery { })
	@:overload(function(methodName:Serialize):JQuery { })
	@:overload(function(methodName:String):JQuery { })
	function sortable(?options:JQuerySortable.Options):JQuery;
};
