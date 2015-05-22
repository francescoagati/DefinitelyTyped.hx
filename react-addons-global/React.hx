typedef TransitionGroupProps = {
	@:optional
	var component : ReactType;
	@:optional
	var childFactory : ReactElement<Dynamic> -> ReactElement<Dynamic>;
};
typedef CSSTransitionGroupProps = {
	>TransitionGroupProps,
	var transitionName : String;
	@:optional
	var transitionAppear : Bool;
	@:optional
	var transitionEnter : Bool;
	@:optional
	var transitionLeave : Bool;
};
typedef ReactLink<T> = {
	var value : T;
	function requestChange(newValue:T):Void;
};
typedef LinkedStateMixin = {
	>Mixin<Dynamic, Dynamic>,
	function linkState<T>(key:String):ReactLink<T>;
};
typedef PureRenderMixin = {
	>Mixin<Dynamic, Dynamic>,
};
typedef UpdateSpec = {
	@:optional
	var $set : Dynamic;
	@:optional
	var $merge : { };
	@:optional
	function $apply(value:Dynamic):Dynamic;
};
typedef UpdateArraySpec = {
	>UpdateSpec,
	@:optional
	var $push : Array<Dynamic>;
	@:optional
	var $unshift : Array<Dynamic>;
	@:optional
	var $splice : Array<Array<Dynamic>>;
};
typedef ComponentPerfContext = {
	var current : String;
	var owner : String;
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
typedef ReactPerf = {
	function start():Void;
	function stop():Void;
	function printInclusive(measurements:Array<Measurements>):Void;
	function printExclusive(measurements:Array<Measurements>):Void;
	function printWasted(measurements:Array<Measurements>):Void;
	function printDOM(measurements:Array<Measurements>):Void;
	function getLastMeasurements():Array<Measurements>;
};
typedef MockedComponentClass = {
	function new():Dynamic;
};
typedef ReactTestUtils = {
	var Simulate : Simulate;
	@:overload(function<C:(Component<Dynamic, Dynamic>)>(element:ReactElement<Dynamic>):C { })
	function renderIntoDocument<P>(element:ReactElement<P>):Component<P, Dynamic>;
	function mockComponent(mocked:MockedComponentClass, ?mockTagName:String):ReactTestUtils;
	function isElementOfType(element:ReactElement<Dynamic>, type:ReactType):Bool;
	function isTextComponent(instance:Component<Dynamic, Dynamic>):Bool;
	function isDOMComponent(instance:Component<Dynamic, Dynamic>):Bool;
	function isCompositeComponent(instance:Component<Dynamic, Dynamic>):Bool;
	function isCompositeComponentWithType(instance:Component<Dynamic, Dynamic>, type:ComponentClass<Dynamic>):Bool;
	function findAllInRenderedTree(tree:Component<Dynamic, Dynamic>, fn:Component<Dynamic, Dynamic> -> Bool):Component<Dynamic, Dynamic>;
	function scryRenderedDOMComponentsWithClass(tree:Component<Dynamic, Dynamic>, className:String):Array<DOMComponent<Dynamic>>;
	function findRenderedDOMComponentWithClass(tree:Component<Dynamic, Dynamic>, className:String):DOMComponent<Dynamic>;
	function scryRenderedDOMComponentsWithTag(tree:Component<Dynamic, Dynamic>, tagName:String):Array<DOMComponent<Dynamic>>;
	function findRenderedDOMComponentWithTag(tree:Component<Dynamic, Dynamic>, tagName:String):DOMComponent<Dynamic>;
	@:overload(function<C:(Component<Dynamic, Dynamic>)>(tree:Component<Dynamic, Dynamic>, type:ComponentClass<Dynamic>):Array<C> { })
	function scryRenderedComponentsWithType<P>(tree:Component<Dynamic, Dynamic>, type:ComponentClass<P>):Array<Component<P, { }>>;
	@:overload(function<C:(Component<Dynamic, Dynamic>)>(tree:Component<Dynamic, Dynamic>, type:ComponentClass<Dynamic>):C { })
	function findRenderedComponentWithType<P>(tree:Component<Dynamic, Dynamic>, type:ComponentClass<P>):Component<P, { }>;
	function createRenderer():ShallowRenderer;
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
extern class ShallowRenderer {
	function getRenderOutput<C:(Component<Dynamic, Dynamic>)>():C;
	function render(element:ReactElement<Dynamic>, ?context:Dynamic):Void;
	function unmount():Void;
}
extern class ReactTopLevel {
	static var addons : { var CSSTransitionGroup : CSSTransitionGroup; var LinkedStateMixin : LinkedStateMixin; var PureRenderMixin : PureRenderMixin; var TransitionGroup : TransitionGroup; @:overload(function<A>(callback:A -> Dynamic, a:A):Void { })
	@:overload(function(callback:Void -> Dynamic):Void { })
	function batchedUpdates<A, B>(callback:A -> B -> Dynamic, a:A, b:B):Void; @:overload(function(classList:haxe.extern.Rest<String>):String { })
	function classSet(cx:{ }):String; @:overload(function<P>(element:ClassicElement<P>, props:P):ClassicElement<P> { })
	@:overload(function<P>(element:ReactElement<P>, props:P):ReactElement<P> { })
	function cloneWithProps<P>(element:DOMElement<P>, props:P):DOMElement<P>; function createFragment(object:{ }):ReactFragment; @:overload(function(value:{ }, spec:UpdateSpec):Dynamic { })
	function update(value:Array<Dynamic>, spec:UpdateArraySpec):Array<Dynamic>; var Perf : ReactPerf; var TestUtils : ReactTestUtils; };
}
