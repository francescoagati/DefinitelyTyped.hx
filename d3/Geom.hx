typedef Geom = {
	@:overload(function(vertices:Array<Vertice>):Array<Polygon> { })
	function voronoi<T>():Voronoi<T>;
	function delaunay(?vertices:Array<Vertice>):Array<Polygon>;
	@:overload(function(points:Array<Point>, x1:Float, y1:Float, x2:Float, y2:Float):Quadtree { })
	@:overload(function(points:Array<Point>, width:Float, height:Float):Quadtree { })
	function quadtree():QuadtreeFactory;
	function polygon(vertices:Array<Vertice>):Polygon;
	@:overload(function(vertices:Array<Vertice>):Array<Vertice> { })
	function hull():Hull;
};
typedef Vertice = {
	>Array<Float>,
	@:optional
	var angle : Float;
};
typedef Polygon = {
	>Array<Vertice>,
	function area():Float;
	function centroid():Array<Float>;
	function clip(subject:Polygon):Polygon;
};
typedef QuadtreeFactory = {
	var x : { };
	var y : { };
	@:overload(function(size:Array<Float>):QuadtreeFactory { })
	function size():Array<Float>;
	@:overload(function(points:Array<Array<Float>>):QuadtreeFactory { })
	function extent():Array<Array<Float>>;
};
typedef Quadtree = {
	function add(point:Point):Void;
	function visit(callback:Dynamic):Void;
};
typedef Point = {
	var x : Float;
	var y : Float;
};
typedef Voronoi<T> = {
	function links(data:Array<T>):Array<Layout.GraphLink>;
	function triangles(data:Array<T>):Array<Array<Float>>;
	var x : { };
	var y : { };
	var clipExtent : { };
	var size : { };
};
typedef Hull = {
	var x : { };
	var y : { };
};
