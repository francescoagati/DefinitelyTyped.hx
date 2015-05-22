typedef IEngineOptions = { };
typedef IEngineTimingOptions = {
	var correction : Float;
	var delta : Float;
	var timeScale : Float;
	var timestamp : Float;
	var velocityIterations : Float;
};
extern class Engine {
	static function clear(engine:Engine):Void;
	static function create(?element:haxe.extern.EitherType<HTMLElement, IEngineOptions>, ?options:IEngineOptions):Engine;
	static function merge(engineA:Engine, engineB:Engine):Void;
	static function render(engineA:Engine, engineB:Engine):Void;
	static function run(engine:Engine):Void;
	static function update(engine:Engine, delta:Float, ?correction:Float):Void;
	var constraintIterations : Float;
	var enabled : Bool;
	var enableSleeping : Bool;
	var positionIterations : Float;
	var timing : IEngineTimingOptions;
	var world : World;
}
typedef IWorldOptions = { };
extern class World {
	static function add(world:World, body:haxe.extern.EitherType<Body, haxe.extern.EitherType<Array<Body>, haxe.extern.EitherType<Composite, haxe.extern.EitherType<Array<Composite>, haxe.extern.EitherType<Constraint, Array<Constraint>>>>>>):World;
	static function addBody(world:World, body:Body):World;
	static function addComposite(world:World, composite:Composite):World;
	static function addConstraint(world:World, constraint:Constraint):World;
	static function clear(world:World, keepStatic:Bool):Void;
	static function create(options:IWorldOptions):World;
}
typedef IBodyDefinition = {
	@:optional
	var angle : Float;
	@:optional
	var angularSpeed : Float;
	@:optional
	var angularVelocity : Float;
	@:optional
	var area : Float;
	@:optional
	var axes : Array<Vector>;
	@:optional
	var bounds : Bounds;
	@:optional
	var density : Float;
	@:optional
	var force : Vector;
	@:optional
	var friction : Float;
	@:optional
	var frictionAir : Float;
	@:optional
	var groupId : Float;
	@:optional
	var id : Float;
	@:optional
	var inertia : Float;
	@:optional
	var inverseInertia : Float;
	@:optional
	var inverseMass : Float;
	@:optional
	var isSleeping : Bool;
	@:optional
	var isStatic : Bool;
	@:optional
	var label : String;
	@:optional
	var mass : Float;
	@:optional
	var motion : Float;
	@:optional
	var position : Vector;
	@:optional
	var render : IBodyRenderOptions;
	@:optional
	var restitution : Float;
	@:optional
	var sleepThreshold : Float;
	@:optional
	var slop : Float;
	@:optional
	var speed : Float;
	@:optional
	var timeScale : Float;
	@:optional
	var torque : Float;
	@:optional
	var type : String;
	@:optional
	var velocity : Vector;
	@:optional
	var vertices : Array<Vector>;
};
extern class Body {
	static function applyForce(body:Body, position:Vector, force:Vector):Void;
	static function applyGravityAll(bodies:Array<Body>, gravity:Vector):Void;
	static function create(options:IBodyDefinition):Body;
	static function nextGroupId():Float;
	static function resetForcesAll(bodies:Array<Body>):Void;
	static function rotate(body:Body, angle:Float):Void;
	function setStatic(isStatic:Bool):Void;
	static function scale(body:Body, scaleX:Float, scaleY:Float, ?poinst:Vector):Void;
	static function translate(body:Body, translation:Vector):Void;
	static function update(body:Body, deltaTime:Float, timeScale:Float, correction:Float):Void;
	static function updateAll(bodies:Array<Body>, deltaTime:Float, timeScale:Float, correction:Float, worldBounds:Bounds):Void;
	var angle : Float;
	var angularSpeed : Float;
	var angularVelocity : Float;
	var area : Float;
	var axes : Array<Vector>;
	var bounds : Bounds;
	var density : Float;
	var force : Vector;
	var friction : Float;
	var frictionAir : Float;
	var groupId : Float;
	var id : Float;
	var inertia : Float;
	var inverseInertia : Float;
	var inverseMass : Float;
	var isSleeping : Bool;
	var isStatic : Bool;
	var label : String;
	var mass : Float;
	var motion : Float;
	var position : Vector;
	var render : IBodyRenderOptions;
	var restitution : Float;
	var sleepThreshold : Float;
	var slop : Float;
	var speed : Float;
	var timeScale : Float;
	var torque : Float;
	var type : String;
	var velocity : Vector;
	var vertices : Array<Vector>;
}
extern class Bodies {
	static function circle(x:Float, y:Float, radius:Float, ?options:IBodyDefinition, ?maxSides:Float):Body;
	static function polygon(x:Float, y:Float, sides:Float, radius:Float, ?options:IBodyDefinition):Body;
	static function rectangle(x:Float, y:Float, width:Float, height:Float, ?options:IBodyDefinition):Body;
	static function trapezoid(x:Float, y:Float, width:Float, height:Float, slope:Float, ?options:IBodyDefinition):Body;
}
typedef IBodyRenderOptions = {
	var fillStyle : String;
	var lineWidth : Float;
	var sprite : IBodyRenderOptionsSprite;
	var strokeStyle : String;
	var visible : Bool;
};
typedef IBodyRenderOptionsSprite = {
	var texture : String;
	var xScale : Float;
	var yScale : Float;
};
extern class Bounds {

}
extern class Vector {
	var x : Float;
	var y : Float;
	static function add(vectorA:Vector, vectorB:Vector):Vector;
	static function angle(vectorA:Vector, vectorB:Vector):Float;
	static function cross(vectorA:Vector, vectorB:Vector):Float;
	static function div(vector:Vector, scalar:Float):Vector;
	static function dot(vectorA:Vector, vectorB:Vector):Number;
	static function magnitude(vector:Vector):Float;
	static function magnitudeSquared(vector:Vector):Float;
	static function mult(vector:Vector, scalar:Float):Vector;
	static function neg(vector:Vector):Vector;
	static function normalise(vector:Vector):Vector;
	static function perp(vector:Vector, ?negate:Bool):Vector;
	static function rotate(vector:Vector, angle:Float):Vector;
	static function rotateAbout(vector:Vector, angle:Float, point:Vector):Vector;
	static function sub(vectorA:Vector, vectorB:Vector):Vector;
}
extern class Constraint {
	static function create(options:IConstraintDefinition):Constraint;
	var bodyA : Body;
	var bodyB : Body;
	var id : Float;
	var label : String;
	var length : Float;
	var pointA : Vector;
	var pointB : Vector;
	var render : IConstraintRenderRefinition;
	var stiffness : Float;
	var type : String;
}
extern class MouseConstraint {
	function create(engine:Engine, options:IMouseConstraintDefinition):MouseConstraint;
	var constraint : Constraint;
	var dragBody : Body;
	var dragPoint : Vector;
	var mouse : Mouse;
	var type : String;
}
typedef IMouseConstraintDefinition = {
	@:optional
	var constraint : Constraint;
	@:optional
	var dragBody : Body;
	@:optional
	var dragPoint : Vector;
	@:optional
	var mouse : Mouse;
	@:optional
	var type : String;
};
extern class Query {
	static function ray(bodies:Array<Body>, startPoint:Vector, endPoint:Vector, ?rayWidth:Float):Array<Dynamic>;
	static function region(bodies:Array<Body>, bounds:Bounds, ?outside:Bool):Array<Body>;
}
extern class Mouse {

}
typedef IConstraintRenderRefinition = {
	var lineWidth : Float;
	var strokeStyle : String;
	var visible : Bool;
};
typedef IConstraintDefinition = {
	@:optional
	var bodyA : Body;
	@:optional
	var bodyB : Body;
	@:optional
	var id : Float;
	@:optional
	var label : String;
	@:optional
	var length : Float;
	@:optional
	var pointA : Vector;
	@:optional
	var pointB : Vector;
	@:optional
	var render : IConstraintRenderRefinition;
	@:optional
	var stiffness : Float;
	@:optional
	var type : String;
};
extern class Composite {
	static function add(composite:Composite, object:haxe.extern.EitherType<Body, haxe.extern.EitherType<Composite, Constraint>>):Composite;
	static function addBody(composite:Composite, body:Body):Composite;
	static function addComposite(compositeA:Composite, compositeB:Composite):Composite;
	static function addConstraint(composite:Composite, constraint:Constraint):Composite;
	static function allBodies(composite:Composite):Array<Body>;
	static function allComposites(composite:Composite):Array<Composite>;
	static function allConstraints(composite:Composite):Array<Composite>;
	static function clear(world:World, keepStatic:Bool, ?deep:Bool):Void;
	static function create(options:ICompositeDefinition):Composite;
	static function get(composite:Composite, id:Float, type:String):haxe.extern.EitherType<Body, haxe.extern.EitherType<Composite, Constraint>>;
	static function move(compositeA:Composite, objects:Array<haxe.extern.EitherType<Body, haxe.extern.EitherType<Composite, Constraint>>>, compositeB:Composite):Composite;
	static function rebase(composite:Composite):Composite;
	static function remove(composite:Composite, object:haxe.extern.EitherType<Body, haxe.extern.EitherType<Composite, Constraint>>, ?deep:Bool):Composite;
	static function removeBody(composite:Composite, body:Body, ?deep:Bool):Composite;
	static function removeBodyAt(composite:Composite, position:Float):Composite;
	static function removeComposite(compositeA:Composite, compositeB:Composite, ?deep:Bool):Composite;
	static function removeCompositeAt(composite:Composite, position:Float):Composite;
	static function removeConstraint(composite:Composite, constraint:Constraint, ?deep:Bool):Composite;
	static function removeConstraintAt(composite:Composite, position:Float):Composite;
	static function setModified(composite:Composite, isModified:Bool, ?updateParents:Bool):Void;
	var bodies : Array<Body>;
	var composites : Array<Composite>;
	var constraints : Array<Constraint>;
	var id : Float;
	var isModified : Bool;
	var label : String;
	var parent : Composite;
	var type : String;
}
extern class Composites {
	static function car(xx:Float, yy:Float, width:Float, height:Float, wheelSize:Float):Composite;
	static function chain(composite:Composite, xOffsetA:Float, yOffsetA:Float, xOffsetB:Float, yOffsetB:Float, options:Dynamic):Composite;
	static function mesh(composite:Composite, columns:Float, rows:Float, crossBrace:Bool, options:Dynamic):Composite;
	function newtonsCradle(xx:Float, yy:Float, _number:Float, size:Float, length:Float):Composite;
	static function pyramid(xx:Float, yy:Float, columns:Float, rows:Float, columnGap:Float, rowGap:Float, callback:haxe.Constraints.Function):Composite;
	static function softBody(xx:Float, yy:Float, columns:Float, rows:Float, columnGap:Float, rowGap:Float, crossBrace:Bool, particleRadius:Float, particleOptions:Dynamic, constraintOptions:Dynamic):Composite;
	static function stack(xx:Float, yy:Float, columns:Float, rows:Float, columnGap:Float, rowGap:Float, callback:haxe.Constraints.Function):Composite;
}
typedef ICompositeDefinition = {
	@:optional
	var bodies : Array<Body>;
	@:optional
	var composites : Array<Composite>;
	@:optional
	var constraints : Array<Constraint>;
	@:optional
	var id : Float;
	@:optional
	var isModified : Bool;
	@:optional
	var label : String;
	@:optional
	var parent : Composite;
	@:optional
	var type : String;
};
extern class Vertices {
	static function area(vertices:Array<Vector>, signed:Bool):Float;
	static function centre(vertices:Array<Vector>):Vector;
	static function chamfer(vertices:Array<Vector>, radius:Array<Float>, quality:Float, qualityMin:Float, qualityMax:Float):Void;
	static function contains(vertices:Array<Vector>, point:Vector):Bool;
	static function create(vertices:Array<Vector>, body:Body):Void;
	static function fromPath(path:String):Array<Vector>;
	static function inertia(vertices:Array<Vector>, mass:Float):Float;
	static function static(vertices:Array<Vector>, angle:Float, point:Vector):Void;
	static function scale(vertices:Array<Vector>, scaleX:Float, scaleY:Float, point:Vector):Void;
	static function translate(vertices:Array<Vector>, vector:Vector, scalar:Float):Void;
}
extern class Render {

}
extern class Events {
	@:overload(function(obj:Engine, name:AfterUpdate, callback:Dynamic -> Void):Void { })
	@:overload(function(obj:Engine, name:BeforeRender, callback:Dynamic -> Void):Void { })
	@:overload(function(obj:Engine, name:BeforeTick, callback:Dynamic -> Void):Void { })
	@:overload(function(obj:Engine, name:BeforeUpdate, callback:Dynamic -> Void):Void { })
	@:overload(function(obj:Engine, name:CollisionActive, callback:Dynamic -> Void):Void { })
	@:overload(function(obj:Engine, name:CollisionEnd, callback:Dynamic -> Void):Void { })
	@:overload(function(obj:Engine, name:CollisionStart, callback:Dynamic -> Void):Void { })
	@:overload(function(obj:Engine, name:Mousedown, callback:Dynamic -> Void):Void { })
	@:overload(function(obj:Engine, name:Mousemove, callback:Dynamic -> Void):Void { })
	@:overload(function(obj:Engine, name:Mouseup, callback:Dynamic -> Void):Void { })
	@:overload(function(obj:Engine, name:Tick, callback:Dynamic -> Void):Void { })
	@:overload(function(obj:Engine, name:String, callback:Dynamic -> Void):Void { })
	static function on(obj:Engine, name:AfterRender, callback:Dynamic -> Void):Void;
	static function off(obj:Dynamic, eventName:String, callback:Dynamic -> Void):Void;
	static function trigger(object:Dynamic, eventNames:String, event:Dynamic -> Void):Void;
}
