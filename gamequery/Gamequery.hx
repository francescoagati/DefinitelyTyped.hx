typedef PlaygroundOptions = {
	@:optional
	var height : Float;
	@:optional
	var width : Float;
	@:optional
	var refreshRate : Float;
	@:optional
	var keyTracker : Bool;
	@:optional
	var mouseTracker : Bool;
	@:optional
	var position : String;
	@:optional
	var disableCollision : Bool;
};
typedef Coordinate3D = {
	var x : Float;
	var y : Float;
	var z : Float;
};
typedef Size = {
	var w : Float;
	var h : Float;
};
typedef SpriteOptions = {
	@:optional
	var animation : Dynamic;
	@:optional
	var height : Float;
	@:optional
	var width : Float;
	@:optional
	var posx : Float;
	@:optional
	var posy : Float;
	@:optional
	var callback : Void -> Dynamic;
};
typedef GroupOptions = {
	@:optional
	var overflow : String;
	@:optional
	var height : Float;
	@:optional
	var width : Float;
	@:optional
	var posx : Float;
	@:optional
	var posy : Float;
};
typedef TileMapOptions = {
	@:optional
	var sizex : Float;
	@:optional
	var sizey : Float;
	@:optional
	var height : Float;
	@:optional
	var width : Float;
	@:optional
	var posx : Float;
	@:optional
	var posy : Float;
	@:optional
	var buffer : Float;
};
typedef AnimationOptions = {
	var imageURL : String;
	@:optional
	var numberOfFrame : Float;
	@:optional
	var delta : Float;
	@:optional
	var rate : Float;
	@:optional
	var type : Float;
	@:optional
	var distance : Float;
	@:optional
	var offsetx : Float;
	@:optional
	var offsety : Float;
};
typedef Animation = {
	var imageURL : String;
	var numberOfFrame : Float;
	var delta : Float;
	var rate : Float;
	var type : Float;
	var distance : Float;
	var offsetx : Float;
	var offsety : Float;
	function new(options:AnimationOptions):Animation;
};
typedef GameQuery = {
	var ANIMATION_VERTICAL : Float;
	var ANIMATION_HORIZONTAL : Float;
	var ANIMATION_ONCE : Float;
	var ANIMATION_CALLBACK : Float;
	var ANIMATION_MULTI : Float;
	var ANIMATION_PINGPONG : Float;
	var Animation : Animation;
	var keyTracker : Array<Bool>;
	var spriteCssClass : String;
	var groupCssClass : String;
	var tilemapCssClass : String;
	var tileCssClass : String;
	var tileTypePrefix : String;
	var tileIdPrefix : String;
};
typedef JQuery = {
	function playground(?options:PlaygroundOptions):JQuery;
	function collision(?query:Dynamic):JQuery;
	function startGame(?callback:Void -> Void):JQuery;
	function pauseGame():JQuery;
	function resumeGame(?callback:Void -> Void):JQuery;
	@:overload(function(callback:Void -> Float, rate:Float):JQuery { })
	@:overload(function(callback:Void -> Bool, rate:Float):JQuery { })
	function registerCallback(callback:Void -> Void, rate:Float):JQuery;
	function clearScenegraph():JQuery;
	function clearAll(?clearCallbacks:Bool):JQuery;
	function loadCallback(callback:Float -> Void):JQuery;
	function rotate(angle:Float, ?relative:Bool):JQuery;
	function scale(ratio:Float, ?relative:Bool):JQuery;
	function flipv(?flip:Bool):JQuery;
	function fliph(?flip:Bool):JQuery;
	@:overload(function():Coordinate3D { })
	function xyz(x:Float, y:Float, z:Float, ?relative:Bool):JQuery;
	@:overload(function():Coordinate3D { })
	function xy(x:Float, y:Float, ?relative:Bool):JQuery;
	@:overload(function():Float { })
	function x(value:Float, ?relative:Bool):JQuery;
	@:overload(function():Float { })
	function y(value:Float, ?relative:Bool):JQuery;
	@:overload(function():Float { })
	function z(value:Float, ?relative:Bool):JQuery;
	@:overload(function():Size { })
	function wh(width:Float, height:Float, ?relative:Bool):JQuery;
	@:overload(function():Float { })
	function w(value:Float, ?relative:Bool):JQuery;
	@:overload(function():Float { })
	function h(value:Float, ?relative:Bool):JQuery;
	function addSprite(name:String, options:SpriteOptions):JQuery;
	function addGroup(name:String, options:GroupOptions):JQuery;
	@:overload(function(name:String, tileDescription:Array<Array<Float>>, animation:Animation, options:TileMapOptions):JQuery { })
	@:overload(function(name:String, tileDescription:Float -> Float -> Float, animationList:Array<Animation>, options:TileMapOptions):JQuery { })
	@:overload(function(name:String, tileDescription:Float -> Float -> Float, animation:Animation, options:TileMapOptions):JQuery { })
	function addTilemap(name:String, tileDescription:Array<Array<Float>>, animationList:Array<Animation>, options:TileMapOptions):JQuery;
	var gQ : GameQuery;
	@:overload(function(animation:Float, ?callback:Void -> Dynamic):JQuery { })
	@:overload(function():JQuery { })
	function setAnimation(animation:Animation, ?callback:Void -> Dynamic):JQuery;
	function pauseAnimation():JQuery;
	function resumeAnimation():JQuery;
};
typedef JQueryStatic = {
	function playground():JQuery;
	var gQ : GameQuery;
	var gameQuery : GameQuery;
};
