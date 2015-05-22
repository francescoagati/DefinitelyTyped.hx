typedef DagreD3Factory = {
	>Dagre.DagreFactory,
	var render : Render;
};
typedef Graph = {
	function graph():Graph;
	var height : Float;
	function predecessors(id:String):Array<String>;
	function successors(id:String):Array<String>;
	var width : Float;
};
typedef Render = {
	function new():Render;
};
