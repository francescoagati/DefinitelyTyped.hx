typedef DagreFactory = {
	var graphlib : GraphLib;
	function layout(graph:Graph):Void;
};
typedef Graph = {
	function new():Graph;
	function edges():Array<String>;
	function edge(id:String):Dynamic;
	function nodes():Array<String>;
	function node(id:String):Dynamic;
	function setDefaultEdgeLabel(callback:Void -> Void):Graph;
	function setEdge(sourceId:String, targetId:String):Graph;
	function setGraph(options:{ }):Graph;
	function setNode(id:String, node:{ }):Graph;
};
typedef GraphLib = {
	var Graph : Graph;
};
