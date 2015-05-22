typedef ReactElement<P> = {
	var type : haxe.extern.EitherType<ComponentClass<P>, String>;
	var props : P;
	var key : haxe.extern.EitherType<Float, String>;
	var ref : String;
};
typedef ReactHTMLElement = {
	>ReactElement<HTMLAttributes>,
};
typedef ReactSVGElement = {
	>ReactElement<SVGAttributes>,
};
typedef ComponentStatics<P> = {
	@:optional
	var displayName : String;
	@:optional
	function getDefaultProps():P;
	@:optional
	var propTypes : ValidationMap<P>;
};
typedef ComponentClass<P> = {
	>ComponentStatics<P>,
};
typedef ComponentFactory<P> = { };
typedef HTMLFactory = {
	>ComponentFactory<HTMLAttributes>,
};
typedef SVGFactory = {
	>ComponentFactory<SVGAttributes>,
};
typedef TopLevelAPI = {
	function createClass<P>(spec:ComponentSpec<P, Dynamic>):ComponentClass<P>;
	function createElement<P>(type:haxe.extern.EitherType<ComponentClass<P>, String>, props:P, children:haxe.extern.Rest<ReactNode>):ReactElement<P>;
	function createFactory<P>(componentClass:ComponentClass<P>):ComponentFactory<P>;
	function render<P>(element:ReactElement<P>, container:Element, ?callback:Void -> Dynamic):Component<P>;
	function unmountComponentAtNode(container:Element):Bool;
	function renderToString(element:ReactElement<Dynamic>):String;
	function renderToStaticMarkup(element:ReactElement<Dynamic>):String;
	function isValidElement(object:{ }):Bool;
	function initializeTouchEvents(shouldUseTouch:Bool):Void;
};
typedef Component<P> = {
	@:overload(function():Element { })
	function getDOMNode<TElement:(Element)>():TElement;
	function isMounted():Bool;
	var props : P;
	function setProps(nextProps:P, ?callback:Void -> Dynamic):Void;
	function replaceProps(nextProps:P, ?callback:Void -> Dynamic):Void;
};
typedef DOMComponent<P> = {
	>Component<P>,
	var tagName : String;
};
typedef HTMLComponent = {
	>DOMComponent<HTMLAttributes>,
};
typedef SVGComponent = {
	>DOMComponent<SVGAttributes>,
};
typedef CompositeComponent<P, S> = {
	>Component<P>,
	>ComponentSpec<P, S>,
	var state : S;
	function setState(nextState:S, ?callback:Void -> Dynamic):Void;
	function replaceState(nextState:S, ?callback:Void -> Dynamic):Void;
	function forceUpdate(?callback:Void -> Dynamic):Void;
	var refs : { };
};
typedef Mixin<P, S> = {
	>ComponentStatics<P>,
	@:optional
	var mixins : Mixin<P, S>;
	@:optional
	var statics : { };
	@:optional
	function getInitialState():S;
	@:optional
	function componentWillMount():Void;
	@:optional
	function componentDidMount():Void;
	@:optional
	function componentWillReceiveProps(nextProps:P):Void;
	@:optional
	function shouldComponentUpdate(nextProps:P, nextState:S):Bool;
	@:optional
	function componentWillUpdate(nextProps:P, nextState:S):Void;
	@:optional
	function componentDidUpdate(prevProps:P, prevState:S):Void;
	@:optional
	function componentWillUnmount():Void;
};
typedef ComponentSpec<P, S> = {
	>Mixin<P, S>,
	function render():ReactElement<Dynamic>;
};
typedef SyntheticEvent = {
	var bubbles : Bool;
	var cancelable : Bool;
	var currentTarget : EventTarget;
	var defaultPrevented : Bool;
	var eventPhase : Float;
	var isTrusted : Bool;
	var nativeEvent : Event;
	function preventDefault():Void;
	function stopPropagation():Void;
	var target : EventTarget;
	var timeStamp : Date;
	var type : String;
};
typedef ClipboardEvent = {
	>SyntheticEvent,
	var clipboardData : DataTransfer;
};
typedef KeyboardEvent = {
	>SyntheticEvent,
	var altKey : Bool;
	var charCode : Float;
	var ctrlKey : Bool;
	function getModifierState(key:String):Bool;
	var key : String;
	var keyCode : Float;
	var locale : String;
	var location : Float;
	var metaKey : Bool;
	var repeat : Bool;
	var shiftKey : Bool;
	var which : Float;
};
typedef FocusEvent = {
	>SyntheticEvent,
	var relatedTarget : EventTarget;
};
typedef FormEvent = {
	>SyntheticEvent,
};
typedef MouseEvent = {
	>SyntheticEvent,
	var altKey : Bool;
	var button : Float;
	var buttons : Float;
	var clientX : Float;
	var clientY : Float;
	var ctrlKey : Bool;
	function getModifierState(key:String):Bool;
	var metaKey : Bool;
	var pageX : Float;
	var pageY : Float;
	var relatedTarget : EventTarget;
	var screenX : Float;
	var screenY : Float;
	var shiftKey : Bool;
};
typedef TouchEvent = {
	>SyntheticEvent,
	var altKey : Bool;
	var changedTouches : TouchList;
	var ctrlKey : Bool;
	function getModifierState(key:String):Bool;
	var metaKey : Bool;
	var shiftKey : Bool;
	var targetTouches : TouchList;
	var touches : TouchList;
};
typedef UIEvent = {
	>SyntheticEvent,
	var detail : Float;
	var view : AbstractView;
};
typedef WheelEvent = {
	>SyntheticEvent,
	var deltaMode : Float;
	var deltaX : Float;
	var deltaY : Float;
	var deltaZ : Float;
};
typedef EventHandler<E:(SyntheticEvent)> = { };
typedef ClipboardEventHandler = {
	>EventHandler<ClipboardEvent>,
};
typedef KeyboardEventHandler = {
	>EventHandler<KeyboardEvent>,
};
typedef FocusEventHandler = {
	>EventHandler<FocusEvent>,
};
typedef FormEventHandler = {
	>EventHandler<FormEvent>,
};
typedef MouseEventHandler = {
	>EventHandler<MouseEvent>,
};
typedef TouchEventHandler = {
	>EventHandler<TouchEvent>,
};
typedef UIEventHandler = {
	>EventHandler<UIEvent>,
};
typedef WheelEventHandler = {
	>EventHandler<WheelEvent>,
};
typedef ReactAttributes = {
	@:optional
	var children : ReactNode;
	@:optional
	var key : haxe.extern.EitherType<Float, String>;
	@:optional
	var ref : String;
	@:optional
	var onCopy : ClipboardEventHandler;
	@:optional
	var onCut : ClipboardEventHandler;
	@:optional
	var onPaste : ClipboardEventHandler;
	@:optional
	var onKeyDown : KeyboardEventHandler;
	@:optional
	var onKeyPress : KeyboardEventHandler;
	@:optional
	var onKeyUp : KeyboardEventHandler;
	@:optional
	var onFocus : FocusEventHandler;
	@:optional
	var onBlur : FocusEventHandler;
	@:optional
	var onChange : FormEventHandler;
	@:optional
	var onInput : FormEventHandler;
	@:optional
	var onSubmit : FormEventHandler;
	@:optional
	var onClick : MouseEventHandler;
	@:optional
	var onDoubleClick : MouseEventHandler;
	@:optional
	var onDrag : MouseEventHandler;
	@:optional
	var onDragEnd : MouseEventHandler;
	@:optional
	var onDragEnter : MouseEventHandler;
	@:optional
	var onDragExit : MouseEventHandler;
	@:optional
	var onDragLeave : MouseEventHandler;
	@:optional
	var onDragOver : MouseEventHandler;
	@:optional
	var onDragStart : MouseEventHandler;
	@:optional
	var onDrop : MouseEventHandler;
	@:optional
	var onMouseDown : MouseEventHandler;
	@:optional
	var onMouseEnter : MouseEventHandler;
	@:optional
	var onMouseLeave : MouseEventHandler;
	@:optional
	var onMouseMove : MouseEventHandler;
	@:optional
	var onMouseOut : MouseEventHandler;
	@:optional
	var onMouseOver : MouseEventHandler;
	@:optional
	var onMouseUp : MouseEventHandler;
	@:optional
	var onTouchCancel : TouchEventHandler;
	@:optional
	var onTouchEnd : TouchEventHandler;
	@:optional
	var onTouchMove : TouchEventHandler;
	@:optional
	var onTouchStart : TouchEventHandler;
	@:optional
	var onScroll : UIEventHandler;
	@:optional
	var onWheel : WheelEventHandler;
	@:optional
	var dangerouslySetInnerHTML : { var __html : String; };
};
typedef CSSProperties = {
	@:optional
	var columnCount : Float;
	@:optional
	var flex : haxe.extern.EitherType<Float, String>;
	@:optional
	var flexGrow : Float;
	@:optional
	var flexShrink : Float;
	@:optional
	var fontWeight : Float;
	@:optional
	var lineClamp : Float;
	@:optional
	var lineHeight : Float;
	@:optional
	var opacity : Float;
	@:optional
	var order : Float;
	@:optional
	var orphans : Float;
	@:optional
	var widows : Float;
	@:optional
	var zIndex : Float;
	@:optional
	var zoom : Float;
	@:optional
	var fillOpacity : Float;
	@:optional
	var strokeOpacity : Float;
};
typedef HTMLAttributes = {
	>ReactAttributes,
	@:optional
	var accept : String;
	@:optional
	var acceptCharset : String;
	@:optional
	var accessKey : String;
	@:optional
	var action : String;
	@:optional
	var allowFullScreen : Bool;
	@:optional
	var allowTransparency : Bool;
	@:optional
	var alt : String;
	@:optional
	var async : Bool;
	@:optional
	var autoComplete : Bool;
	@:optional
	var autoFocus : Bool;
	@:optional
	var autoPlay : Bool;
	@:optional
	var cellPadding : haxe.extern.EitherType<Float, String>;
	@:optional
	var cellSpacing : haxe.extern.EitherType<Float, String>;
	@:optional
	var charSet : String;
	@:optional
	var checked : Bool;
	@:optional
	var classID : String;
	@:optional
	var className : String;
	@:optional
	var cols : Float;
	@:optional
	var colSpan : Float;
	@:optional
	var content : String;
	@:optional
	var contentEditable : Bool;
	@:optional
	var contextMenu : String;
	@:optional
	var controls : Dynamic;
	@:optional
	var coords : String;
	@:optional
	var crossOrigin : String;
	@:optional
	var data : String;
	@:optional
	var dateTime : String;
	@:optional
	var defer : Bool;
	@:optional
	var dir : String;
	@:optional
	var disabled : Bool;
	@:optional
	var download : Dynamic;
	@:optional
	var draggable : Bool;
	@:optional
	var encType : String;
	@:optional
	var form : String;
	@:optional
	var formNoValidate : Bool;
	@:optional
	var frameBorder : haxe.extern.EitherType<Float, String>;
	@:optional
	var height : haxe.extern.EitherType<Float, String>;
	@:optional
	var hidden : Bool;
	@:optional
	var href : String;
	@:optional
	var hrefLang : String;
	@:optional
	var htmlFor : String;
	@:optional
	var httpEquiv : String;
	@:optional
	var icon : String;
	@:optional
	var id : String;
	@:optional
	var label : String;
	@:optional
	var lang : String;
	@:optional
	var list : String;
	@:optional
	var loop : Bool;
	@:optional
	var manifest : String;
	@:optional
	var max : haxe.extern.EitherType<Float, String>;
	@:optional
	var maxLength : Float;
	@:optional
	var media : String;
	@:optional
	var mediaGroup : String;
	@:optional
	var method : String;
	@:optional
	var min : haxe.extern.EitherType<Float, String>;
	@:optional
	var multiple : Bool;
	@:optional
	var muted : Bool;
	@:optional
	var name : String;
	@:optional
	var noValidate : Bool;
	@:optional
	var open : Bool;
	@:optional
	var pattern : String;
	@:optional
	var placeholder : String;
	@:optional
	var poster : String;
	@:optional
	var preload : String;
	@:optional
	var radioGroup : String;
	@:optional
	var readOnly : Bool;
	@:optional
	var rel : String;
	@:optional
	var required : Bool;
	@:optional
	var role : String;
	@:optional
	var rows : Float;
	@:optional
	var rowSpan : Float;
	@:optional
	var sandbox : String;
	@:optional
	var scope : String;
	@:optional
	var scrollLeft : Float;
	@:optional
	var scrolling : String;
	@:optional
	var scrollTop : Float;
	@:optional
	var seamless : Bool;
	@:optional
	var selected : Bool;
	@:optional
	var shape : String;
	@:optional
	var size : Float;
	@:optional
	var sizes : String;
	@:optional
	var span : Float;
	@:optional
	var spellCheck : Bool;
	@:optional
	var src : String;
	@:optional
	var srcDoc : String;
	@:optional
	var srcSet : String;
	@:optional
	var start : Float;
	@:optional
	var step : haxe.extern.EitherType<Float, String>;
	@:optional
	var style : CSSProperties;
	@:optional
	var tabIndex : Float;
	@:optional
	var target : String;
	@:optional
	var title : String;
	@:optional
	var type : String;
	@:optional
	var useMap : String;
	@:optional
	var value : String;
	@:optional
	var width : haxe.extern.EitherType<Float, String>;
	@:optional
	var wmode : String;
	@:optional
	var autoCapitalize : Bool;
	@:optional
	var autoCorrect : Bool;
	@:optional
	var property : String;
	@:optional
	var itemProp : String;
	@:optional
	var itemScope : Bool;
	@:optional
	var itemType : String;
};
typedef SVGAttributes = {
	>ReactAttributes,
	@:optional
	var cx : haxe.extern.EitherType<SVGLength, SVGAnimatedLength>;
	@:optional
	var cy : Dynamic;
	@:optional
	var d : String;
	@:optional
	var dx : haxe.extern.EitherType<SVGLength, SVGAnimatedLength>;
	@:optional
	var dy : haxe.extern.EitherType<SVGLength, SVGAnimatedLength>;
	@:optional
	var fill : Dynamic;
	@:optional
	var fillOpacity : haxe.extern.EitherType<Float, String>;
	@:optional
	var fontFamily : String;
	@:optional
	var fontSize : haxe.extern.EitherType<Float, String>;
	@:optional
	var fx : haxe.extern.EitherType<SVGLength, SVGAnimatedLength>;
	@:optional
	var fy : haxe.extern.EitherType<SVGLength, SVGAnimatedLength>;
	@:optional
	var gradientTransform : haxe.extern.EitherType<SVGTransformList, SVGAnimatedTransformList>;
	@:optional
	var gradientUnits : String;
	@:optional
	var markerEnd : String;
	@:optional
	var markerMid : String;
	@:optional
	var markerStart : String;
	@:optional
	var offset : haxe.extern.EitherType<Float, String>;
	@:optional
	var opacity : haxe.extern.EitherType<Float, String>;
	@:optional
	var patternContentUnits : String;
	@:optional
	var patternUnits : String;
	@:optional
	var points : String;
	@:optional
	var preserveAspectRatio : String;
	@:optional
	var r : haxe.extern.EitherType<SVGLength, SVGAnimatedLength>;
	@:optional
	var rx : haxe.extern.EitherType<SVGLength, SVGAnimatedLength>;
	@:optional
	var ry : haxe.extern.EitherType<SVGLength, SVGAnimatedLength>;
	@:optional
	var spreadMethod : String;
	@:optional
	var stopColor : Dynamic;
	@:optional
	var stopOpacity : haxe.extern.EitherType<Float, String>;
	@:optional
	var stroke : Dynamic;
	@:optional
	var strokeDasharray : String;
	@:optional
	var strokeLinecap : String;
	@:optional
	var strokeOpacity : haxe.extern.EitherType<Float, String>;
	@:optional
	var strokeWidth : haxe.extern.EitherType<SVGLength, SVGAnimatedLength>;
	@:optional
	var textAnchor : String;
	@:optional
	var transform : haxe.extern.EitherType<SVGTransformList, SVGAnimatedTransformList>;
	@:optional
	var version : String;
	@:optional
	var viewBox : String;
	@:optional
	var x1 : haxe.extern.EitherType<SVGLength, SVGAnimatedLength>;
	@:optional
	var x2 : haxe.extern.EitherType<SVGLength, SVGAnimatedLength>;
	@:optional
	var x : haxe.extern.EitherType<SVGLength, SVGAnimatedLength>;
	@:optional
	var y1 : haxe.extern.EitherType<SVGLength, SVGAnimatedLength>;
	@:optional
	var y2 : haxe.extern.EitherType<SVGLength, SVGAnimatedLength>;
	@:optional
	var y : haxe.extern.EitherType<SVGLength, SVGAnimatedLength>;
};
typedef ReactDOM = {
	var a : HTMLFactory;
	var abbr : HTMLFactory;
	var address : HTMLFactory;
	var area : HTMLFactory;
	var article : HTMLFactory;
	var aside : HTMLFactory;
	var audio : HTMLFactory;
	var b : HTMLFactory;
	var base : HTMLFactory;
	var bdi : HTMLFactory;
	var bdo : HTMLFactory;
	var big : HTMLFactory;
	var blockquote : HTMLFactory;
	var body : HTMLFactory;
	var br : HTMLFactory;
	var button : HTMLFactory;
	var canvas : HTMLFactory;
	var caption : HTMLFactory;
	var cite : HTMLFactory;
	var code : HTMLFactory;
	var col : HTMLFactory;
	var colgroup : HTMLFactory;
	var data : HTMLFactory;
	var datalist : HTMLFactory;
	var dd : HTMLFactory;
	var del : HTMLFactory;
	var details : HTMLFactory;
	var dfn : HTMLFactory;
	var dialog : HTMLFactory;
	var div : HTMLFactory;
	var dl : HTMLFactory;
	var dt : HTMLFactory;
	var em : HTMLFactory;
	var embed : HTMLFactory;
	var fieldset : HTMLFactory;
	var figcaption : HTMLFactory;
	var figure : HTMLFactory;
	var footer : HTMLFactory;
	var form : HTMLFactory;
	var h1 : HTMLFactory;
	var h2 : HTMLFactory;
	var h3 : HTMLFactory;
	var h4 : HTMLFactory;
	var h5 : HTMLFactory;
	var h6 : HTMLFactory;
	var head : HTMLFactory;
	var header : HTMLFactory;
	var hr : HTMLFactory;
	var html : HTMLFactory;
	var i : HTMLFactory;
	var iframe : HTMLFactory;
	var img : HTMLFactory;
	var input : HTMLFactory;
	var ins : HTMLFactory;
	var kbd : HTMLFactory;
	var keygen : HTMLFactory;
	var label : HTMLFactory;
	var legend : HTMLFactory;
	var li : HTMLFactory;
	var link : HTMLFactory;
	var main : HTMLFactory;
	var map : HTMLFactory;
	var mark : HTMLFactory;
	var menu : HTMLFactory;
	var menuitem : HTMLFactory;
	var meta : HTMLFactory;
	var meter : HTMLFactory;
	var nav : HTMLFactory;
	var noscript : HTMLFactory;
	var object : HTMLFactory;
	var ol : HTMLFactory;
	var optgroup : HTMLFactory;
	var option : HTMLFactory;
	var output : HTMLFactory;
	var p : HTMLFactory;
	var param : HTMLFactory;
	var picture : HTMLFactory;
	var pre : HTMLFactory;
	var progress : HTMLFactory;
	var q : HTMLFactory;
	var rp : HTMLFactory;
	var rt : HTMLFactory;
	var ruby : HTMLFactory;
	var s : HTMLFactory;
	var samp : HTMLFactory;
	var script : HTMLFactory;
	var section : HTMLFactory;
	var select : HTMLFactory;
	var small : HTMLFactory;
	var source : HTMLFactory;
	var span : HTMLFactory;
	var strong : HTMLFactory;
	var style : HTMLFactory;
	var sub : HTMLFactory;
	var summary : HTMLFactory;
	var sup : HTMLFactory;
	var table : HTMLFactory;
	var tbody : HTMLFactory;
	var td : HTMLFactory;
	var textarea : HTMLFactory;
	var tfoot : HTMLFactory;
	var th : HTMLFactory;
	var thead : HTMLFactory;
	var time : HTMLFactory;
	var title : HTMLFactory;
	var tr : HTMLFactory;
	var track : HTMLFactory;
	var u : HTMLFactory;
	var ul : HTMLFactory;
	var var : HTMLFactory;
	var video : HTMLFactory;
	var wbr : HTMLFactory;
	var circle : SVGFactory;
	var defs : SVGFactory;
	var ellipse : SVGFactory;
	var g : SVGFactory;
	var line : SVGFactory;
	var linearGradient : SVGFactory;
	var mask : SVGFactory;
	var path : SVGFactory;
	var pattern : SVGFactory;
	var polygon : SVGFactory;
	var polyline : SVGFactory;
	var radialGradient : SVGFactory;
	var rect : SVGFactory;
	var stop : SVGFactory;
	var svg : SVGFactory;
	var text : SVGFactory;
	var tspan : SVGFactory;
};
typedef Validator<T> = { };
typedef Requireable<T> = {
	>Validator<T>,
	var isRequired : Validator<T>;
};
typedef ValidationMap<T> = { };
typedef ReactPropTypes = {
	var any : Requireable<Dynamic>;
	var array : Requireable<Dynamic>;
	var bool : Requireable<Dynamic>;
	var func : Requireable<Dynamic>;
	var number : Requireable<Dynamic>;
	var object : Requireable<Dynamic>;
	var string : Requireable<Dynamic>;
	var node : Requireable<Dynamic>;
	var element : Requireable<Dynamic>;
	function instanceOf(expectedClass:{ }):Requireable<Dynamic>;
	function oneOf(types:Array<Dynamic>):Requireable<Dynamic>;
	function oneOfType(types:Array<Validator<Dynamic>>):Requireable<Dynamic>;
	function arrayOf(type:Validator<Dynamic>):Requireable<Dynamic>;
	function objectOf(type:Validator<Dynamic>):Requireable<Dynamic>;
	function shape(type:ValidationMap<Dynamic>):Requireable<Dynamic>;
};
typedef ReactChildren = {
	function map<T>(children:ReactNode, fn:ReactChild -> T):{ };
	function forEach(children:ReactNode, fn:ReactChild -> Dynamic):Void;
	function count(children:ReactNode):Float;
	function only(children:ReactNode):ReactChild;
};
typedef ClassSet = { };
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
typedef CSSTransitionGroup = {
	>ComponentClass<CSSTransitionGroupProps>,
};
typedef TransitionGroup = {
	>ComponentClass<TransitionGroupProps>,
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
	var $set : Dynamic;
	var $merge : { };
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
	@:overload(function<C:(Component<Dynamic>)>(element:ReactElement<Dynamic>):C { })
	function renderIntoDocument<P>(element:ReactElement<P>):Component<P>;
	function mockComponent(mocked:MockedComponentClass, ?mockTagName:String):ReactTestUtils;
	function isElementOfType(element:ReactElement<Dynamic>, type:ReactType):Bool;
	function isDOMComponent(instance:Component<Dynamic>):Bool;
	function isCompositeComponent(instance:Component<Dynamic>):Bool;
	function isCompositeComponentWithType(instance:Component<Dynamic>, type:ComponentClass<Dynamic>):Bool;
	function isTextComponent(instance:Component<Dynamic>):Bool;
	function findAllInRenderedTree(tree:Component<Dynamic>, fn:Component<Dynamic> -> Bool):Component<Dynamic>;
	function scryRenderedDOMComponentsWithClass(tree:Component<Dynamic>, className:String):Array<DOMComponent<Dynamic>>;
	function findRenderedDOMComponentWithClass(tree:Component<Dynamic>, className:String):DOMComponent<Dynamic>;
	function scryRenderedDOMComponentsWithTag(tree:Component<Dynamic>, tagName:String):Array<DOMComponent<Dynamic>>;
	function findRenderedDOMComponentWithTag(tree:Component<Dynamic>, tagName:String):DOMComponent<Dynamic>;
	@:overload(function<C:(CompositeComponent<Dynamic, Dynamic>)>(tree:Component<Dynamic>, type:ComponentClass<Dynamic>):Array<C> { })
	function scryRenderedComponentsWithType<P, S>(tree:Component<Dynamic>, type:ComponentClass<P>):Array<CompositeComponent<P, S>>;
	@:overload(function<C:(CompositeComponent<Dynamic, Dynamic>)>(tree:Component<Dynamic>, type:ComponentClass<Dynamic>):C { })
	function findRenderedComponentWithType<P, S>(tree:Component<Dynamic>, type:ComponentClass<P>):CompositeComponent<P, S>;
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
typedef Exports = {
	>TopLevelAPI,
	var DOM : ReactDOM;
	var PropTypes : ReactPropTypes;
	var Children : ReactChildren;
};
typedef AddonsExports = {
	>Exports,
	var addons : { var CSSTransitionGroup : CSSTransitionGroup; var LinkedStateMixin : LinkedStateMixin; var PureRenderMixin : PureRenderMixin; var TransitionGroup : TransitionGroup; @:overload(function<A>(callback:A -> Dynamic, a:A):Void { })
	@:overload(function(callback:Void -> Dynamic):Void { })
	function batchedUpdates<A, B>(callback:A -> B -> Dynamic, a:A, b:B):Void; function classSet(cx:ClassSet):String; function cloneWithProps<P>(element:ReactElement<P>, props:P):ReactElement<P>; @:overload(function(value:{ }, spec:UpdateSpec):Dynamic { })
	function update(value:Array<Dynamic>, spec:UpdateArraySpec):Array<Dynamic>; var Perf : ReactPerf; var TestUtils : ReactTestUtils; };
};
typedef AbstractView = {
	var styleMedia : StyleMedia;
	var document : Document;
};
typedef Touch = {
	var identifier : Float;
	var target : EventTarget;
	var screenX : Float;
	var screenY : Float;
	var clientX : Float;
	var clientY : Float;
	var pageX : Float;
	var pageY : Float;
};
typedef TouchList = {
	var length : Float;
	function item(index:Float):Touch;
	function identifiedTouch(identifier:Float):Touch;
};
