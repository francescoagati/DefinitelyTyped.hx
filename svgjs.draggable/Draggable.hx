typedef DragDelta = {
	var x : Float;
	var y : Float;
	var zoom : Float;
};
typedef Element = {
	@:overload(function(obj:Dynamic):Element { })
	function draggable():Element;
	function fixed():Element;
	var beforedrag : MouseEvent -> Dynamic;
	var dragstart : draggable.DragDelta -> MouseEvent -> Dynamic;
	var dragmove : draggable.DragDelta -> MouseEvent -> Dynamic;
	var dragend : draggable.DragDelta -> MouseEvent -> Dynamic;
};
