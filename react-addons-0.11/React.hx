typedef CloneWithProps<P> = { };
typedef ReactLink<T> = {
	var value : T;
	function requestChange(newValue:T):Void;
};
typedef LinkedStateMixin<P, S> = {
	>Mixin<P, S>,
	function linkState<T>(key:String):ReactLink<T>;
};
typedef ComponentPerfContext = {
	var current : String;
	var owner : String;
};
typedef CSSTransitionGroupProps = {
	var transitionName : String;
};
typedef TransitionsSpecification<P, S> = {
	>Specification<P, S>,
	@:optional
	function componentWillEnter(callback:Void -> Void):Void;
	@:optional
	function componentDidEnter():Void;
	@:optional
	function componentWillLeave(callback:Void -> Void):Void;
	@:optional
	function componentDidLeave():Void;
};
typedef NumericPerfContext = { };
typedef Measurements = {
	var exclusive : NumericPerfContext;
	var inclusive : NumericPerfContext;
	var render : NumericPerfContext;
	var counts : NumericPerfContext;
	var writes : NumericPerfContext;
	var displayNames : { };
	var totalTime : Float;
};
typedef Perf = {
	function start():Void;
	function stop():Void;
	function printInclusive(measurements:Array<Measurements>):Void;
	function printExclusive(measurements:Array<Measurements>):Void;
	function printWasted(measurements:Array<Measurements>):Void;
	function printDOM(measurements:Array<Measurements>):Void;
	function getLastMeasurements():Array<Measurements>;
};
typedef TestUtils = {
	var Simulate : Simulate;
	function renderIntoDocument(instance:Descriptor<Dynamic>):Descriptor<Dynamic>;
	function mockComponent(componentClass:Factory<Dynamic>, ?mockTagName:String):TestUtils;
	function isDescriptorOfType(descriptor:Descriptor<Dynamic>, componentClass:Factory<Dynamic>):Bool;
	function isDOMComponent(instance:Descriptor<Dynamic>):Bool;
	function isCompositeComponent(instance:Descriptor<Dynamic>):Bool;
	function isCompositeComponentWithType(instance:Descriptor<Dynamic>, componentClass:haxe.Constraints.Function):Bool;
	function isTextComponent(instance:Descriptor<Dynamic>):Bool;
	function findAllInRenderedTree(tree:Descriptor<Dynamic>, test:haxe.Constraints.Function):Array<Descriptor<Dynamic>>;
	function scryRenderedDOMComponentsWithClass(tree:Descriptor<Dynamic>, className:String):Array<Descriptor<Dynamic>>;
	function findRenderedDOMComponentWithClass(tree:Descriptor<Dynamic>, className:String):Descriptor<Dynamic>;
	function scryRenderedDOMComponentsWithTag(tree:Descriptor<Dynamic>, className:String):Array<Descriptor<Dynamic>>;
	function findRenderedDOMComponentWithTag(tree:Descriptor<Dynamic>, tagName:String):Descriptor<Dynamic>;
	function scryFindRenderedComponentsWithTag(tree:Descriptor<Dynamic>, componentClass:haxe.Constraints.Function):Array<Descriptor<Dynamic>>;
	function findRenderedComponentWithType(tree:Descriptor<Dynamic>, componentClass:haxe.Constraints.Function):Descriptor<Dynamic>;
};
typedef SyntheticEventData = {
	@:optional
	var altKey : Bool;
	@:optional
	var button : Float;
	@:optional
	var buttons : Float;
	@:optional
	var clientX : Float;
	@:optional
	var clientY : Float;
	@:optional
	var changedTouches : TouchList;
	@:optional
	var charCode : Bool;
	@:optional
	var clipboardData : DataTransfer;
	@:optional
	var ctrlKey : Bool;
	@:optional
	var deltaMode : Float;
	@:optional
	var deltaX : Float;
	@:optional
	var deltaY : Float;
	@:optional
	var deltaZ : Float;
	@:optional
	var detail : Float;
	@:optional
	function getModifierState(key:String):Bool;
	@:optional
	var key : String;
	@:optional
	var keyCode : Float;
	@:optional
	var locale : String;
	@:optional
	var location : Float;
	@:optional
	var metaKey : Bool;
	@:optional
	var pageX : Float;
	@:optional
	var pageY : Float;
	@:optional
	var relatedTarget : EventTarget;
	@:optional
	var repeat : Bool;
	@:optional
	var screenX : Float;
	@:optional
	var screenY : Float;
	@:optional
	var shiftKey : Bool;
	@:optional
	var targetTouches : TouchList;
	@:optional
	var touches : TouchList;
	@:optional
	var view : AbstractView;
	@:optional
	var which : Float;
};
typedef EventSimulator = { };
typedef Simulate = {
	var blur : EventSimulator;
	var change : EventSimulator;
	var click : EventSimulator;
	var cut : EventSimulator;
	var doubleClick : EventSimulator;
	var drag : EventSimulator;
	var dragEnd : EventSimulator;
	var dragEnter : EventSimulator;
	var dragExit : EventSimulator;
	var dragLeave : EventSimulator;
	var dragOver : EventSimulator;
	var dragStart : EventSimulator;
	var drop : EventSimulator;
	var focus : EventSimulator;
	var input : EventSimulator;
	var keyDown : EventSimulator;
	var keyPress : EventSimulator;
	var keyUp : EventSimulator;
	var mouseDown : EventSimulator;
	var mouseEnter : EventSimulator;
	var mouseLeave : EventSimulator;
	var mouseMove : EventSimulator;
	var mouseOut : EventSimulator;
	var mouseOver : EventSimulator;
	var mouseUp : EventSimulator;
	var paste : EventSimulator;
	var scroll : EventSimulator;
	var submit : EventSimulator;
	var touchCancel : EventSimulator;
	var touchEnd : EventSimulator;
	var touchMove : EventSimulator;
	var touchStart : EventSimulator;
	var wheel : EventSimulator;
};
extern class ReactTopLevel {
	static var addons : { var classSet : { } -> String; var cloneWithProps : CloneWithProps<Dynamic>; var CSSTransitionGroup : Factory<CSSTransitionGroupProps>; var LinkedStateMixin : LinkedStateMixin<Dynamic, Dynamic>; var Perf : Perf; var PureRenderMixin : Mixin<Dynamic, Dynamic>; var TestUtils : TestUtils; var TransitionGroup : Factory<Dynamic>; function update(object:Dynamic, changes:Dynamic):Dynamic; };
}
