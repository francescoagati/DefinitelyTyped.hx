typedef Layout = {
	function stack():StackLayout;
	function pie():PieLayout;
	function force():ForceLayout;
	function tree():TreeLayout;
	function bundle():BundleLayout;
	function chord():ChordLayout;
	function cluster():ClusterLayout;
	function hierarchy():HierarchyLayout;
	function histogram():HistogramLayout;
	function pack():PackLayout;
	function partition():PartitionLayout;
	function treemap():TreeMapLayout;
};
typedef StackLayout = {
	function values(?accessor:Dynamic -> Dynamic):StackLayout;
	function offset(offset:String):StackLayout;
	function x(accessor:Dynamic -> Float -> Dynamic):StackLayout;
	function y(accessor:Dynamic -> Float -> Dynamic):StackLayout;
	function out(setter:Dynamic -> Float -> Float -> Void):StackLayout;
};
typedef TreeLayout = {
	var sort : { };
	var children : { };
	function nodes(root:GraphNode):Array<GraphNode>;
	function links(nodes:Array<GraphNode>):Array<GraphLink>;
	var separation : { };
	var size : { };
	var nodeSize : { };
};
typedef PieLayout = {
	var value : { };
	var sort : { };
	var startAngle : { };
	var endAngle : { };
	var padAngle : { };
};
typedef ArcDescriptor = {
	var value : Dynamic;
	var data : Dynamic;
	var startAngle : Float;
	var endAngle : Float;
	var index : Float;
};
typedef GraphNode = {
	@:optional
	var id : Float;
	@:optional
	var index : Float;
	@:optional
	var name : String;
	@:optional
	var px : Float;
	@:optional
	var py : Float;
	@:optional
	var size : Float;
	@:optional
	var weight : Float;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var subindex : Float;
	@:optional
	var startAngle : Float;
	@:optional
	var endAngle : Float;
	@:optional
	var value : Float;
	@:optional
	var fixed : Bool;
	@:optional
	var children : Array<GraphNode>;
	@:optional
	var _children : Array<GraphNode>;
	@:optional
	var parent : GraphNode;
	@:optional
	var depth : Float;
};
typedef GraphLink = {
	var source : GraphNode;
	var target : GraphNode;
};
typedef GraphNodeForce = {
	@:optional
	var index : Float;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var px : Float;
	@:optional
	var py : Float;
	@:optional
	var fixed : Bool;
	@:optional
	var weight : Float;
};
typedef GraphLinkForce = {
	var source : GraphNodeForce;
	var target : GraphNodeForce;
};
typedef ForceLayout = {
	var size : { };
	var linkDistance : { };
	var linkStrength : { };
	var friction : { };
	var alpha : { };
	var charge : { };
	var chargeDistance : { };
	var theta : { };
	var gravity : { };
	var links : { };
	var nodes : { };
	function start():ForceLayout;
	function resume():ForceLayout;
	function stop():ForceLayout;
	function tick():ForceLayout;
	function on(type:String, listener:Void -> Void):ForceLayout;
	function drag():ForceLayout;
};
typedef BundleLayout = { };
typedef ChordLayout = {
	var matrix : { };
	var padding : { };
	var sortGroups : { };
	var sortSubgroups : { };
	var sortChords : { };
	function chords():Array<GraphLink>;
	function groups():Array<ArcDescriptor>;
};
typedef ClusterLayout = {
	var sort : { };
	var children : { };
	function nodes(root:GraphNode):Array<GraphNode>;
	function links(nodes:Array<GraphNode>):Array<GraphLink>;
	var separation : { };
	var size : { };
	var value : { };
};
typedef HierarchyLayout = {
	var sort : { };
	var children : { };
	function nodes(root:GraphNode):Array<GraphNode>;
	function links(nodes:Array<GraphNode>):Array<GraphLink>;
	var value : { };
	function reValue(root:GraphNode):HierarchyLayout;
};
typedef Bin = {
	>Array<Dynamic>,
	var x : Float;
	var dx : Float;
	var y : Float;
};
typedef HistogramLayout = {
	var value : { };
	var range : { };
	var bins : { };
	var frequency : { };
};
typedef PackLayout = {
	var sort : { };
	var children : { };
	function nodes(root:GraphNode):Array<GraphNode>;
	function links(nodes:Array<GraphNode>):Array<GraphLink>;
	var value : { };
	var size : { };
	var padding : { };
};
typedef PartitionLayout = {
	var sort : { };
	var children : { };
	function nodes(root:GraphNode):Array<GraphNode>;
	function links(nodes:Array<GraphNode>):Array<GraphLink>;
	var value : { };
	var size : { };
};
typedef TreeMapLayout = {
	var sort : { };
	var children : { };
	function nodes(root:GraphNode):Array<GraphNode>;
	function links(nodes:Array<GraphNode>):Array<GraphLink>;
	var value : { };
	var size : { };
	var padding : { };
	var round : { };
	var sticky : { };
	var mode : { };
};
