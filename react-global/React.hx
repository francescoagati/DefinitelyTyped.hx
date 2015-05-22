typedef ReactElement<P> = {
	var type : haxe.extern.EitherType<String, ComponentClass<P>>;
	var props : P;
	var key : haxe.extern.EitherType<String, Float>;
	var ref : haxe.extern.EitherType<String, Component<P, Dynamic> -> Dynamic>;
};
typedef ClassicElement<P> = {
	>ReactElement<P>,
	var type : haxe.extern.EitherType<String, ClassicComponentClass<P>>;
	var ref : haxe.extern.EitherType<String, ClassicComponent<P, Dynamic> -> Dynamic>;
};
typedef DOMElement<P> = {
	>ClassicElement<P>,
	var type : String;
	var ref : haxe.extern.EitherType<String, DOMComponent<P> -> Dynamic>;
};
typedef Factory<P> = { };
typedef ClassicFactory<P> = {
	>Factory<P>,
};
typedef DOMFactory<P> = {
	>ClassicFactory<P>,
};
extern class Component<P, S> {
	function new(?props:P, ?context:Dynamic):Void;
	@:overload(function(state:S, ?callback:Void -> Dynamic):Void { })
	function setState(f:S -> P -> S, ?callback:Void -> Dynamic):Void;
	function forceUpdate():Void;
	var props : P;
	var state : S;
	var context : Dynamic;
	var refs : { };
}
typedef ClassicComponent<P, S> = {
	>Component<P, S>,
	function replaceState(nextState:S, ?callback:Void -> Dynamic):Void;
	@:overload(function():Element { })
	function getDOMNode<TElement:(Element)>():TElement;
	function isMounted():Bool;
	@:optional
	function getInitialState():S;
	function setProps(nextProps:P, ?callback:Void -> Dynamic):Void;
	function replaceProps(nextProps:P, ?callback:Void -> Dynamic):Void;
};
typedef DOMComponent<P> = {
	>ClassicComponent<P, Dynamic>,
	var tagName : String;
};
typedef ChildContextProvider<CC> = {
	function getChildContext():CC;
};
typedef ComponentClass<P> = {
	function new(?props:P, ?context:Dynamic):Component<P, Dynamic>;
	@:optional
	var propTypes : ValidationMap<P>;
	@:optional
	var contextTypes : ValidationMap<Dynamic>;
	@:optional
	var childContextTypes : ValidationMap<Dynamic>;
	@:optional
	var defaultProps : P;
};
typedef ClassicComponentClass<P> = {
	>ComponentClass<P>,
	function new(?props:P, ?context:Dynamic):ClassicComponent<P, Dynamic>;
	@:optional
	function getDefaultProps():P;
	@:optional
	var displayName : String;
};
typedef ComponentLifecycle<P, S> = {
	@:optional
	function componentWillMount():Void;
	@:optional
	function componentDidMount():Void;
	@:optional
	function componentWillReceiveProps(nextProps:P, nextContext:Dynamic):Void;
	@:optional
	function shouldComponentUpdate(nextProps:P, nextState:S, nextContext:Dynamic):Bool;
	@:optional
	function componentWillUpdate(nextProps:P, nextState:S, nextContext:Dynamic):Void;
	@:optional
	function componentDidUpdate(prevProps:P, prevState:S, prevContext:Dynamic):Void;
	@:optional
	function componentWillUnmount():Void;
};
typedef Mixin<P, S> = {
	>ComponentLifecycle<P, S>,
	@:optional
	var mixins : Mixin<P, S>;
	@:optional
	var statics : { };
	@:optional
	var displayName : String;
	@:optional
	var propTypes : ValidationMap<Dynamic>;
	@:optional
	var contextTypes : ValidationMap<Dynamic>;
	@:optional
	var childContextTypes : ValidationMap<Dynamic>;
	@:optional
	function getDefaultProps():P;
	@:optional
	function getInitialState():S;
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
typedef DragEvent = {
	>SyntheticEvent,
	var dataTransfer : DataTransfer;
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
typedef DragEventHandler = {
	>EventHandler<DragEvent>,
};
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
typedef Props<T> = {
	@:optional
	var children : ReactNode;
	@:optional
	var key : haxe.extern.EitherType<String, Float>;
	@:optional
	var ref : haxe.extern.EitherType<String, T -> Dynamic>;
};
typedef DOMAttributes = {
	>Props<DOMComponent<Dynamic>>,
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
	var onDrag : DragEventHandler;
	@:optional
	var onDragEnd : DragEventHandler;
	@:optional
	var onDragEnter : DragEventHandler;
	@:optional
	var onDragExit : DragEventHandler;
	@:optional
	var onDragLeave : DragEventHandler;
	@:optional
	var onDragOver : DragEventHandler;
	@:optional
	var onDragStart : DragEventHandler;
	@:optional
	var onDrop : DragEventHandler;
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
	var boxFlex : Float;
	@:optional
	var boxFlexGroup : Float;
	@:optional
	var columnCount : Float;
	@:optional
	var flex : haxe.extern.EitherType<Float, String>;
	@:optional
	var flexGrow : Float;
	@:optional
	var flexShrink : Float;
	@:optional
	var fontWeight : haxe.extern.EitherType<Float, String>;
	@:optional
	var lineClamp : Float;
	@:optional
	var lineHeight : haxe.extern.EitherType<Float, String>;
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
	@:optional
	var strokeWidth : Float;
};
typedef HTMLAttributes = {
	>DOMAttributes,
	@:optional
	var ref : haxe.extern.EitherType<String, HTMLComponent -> Void>;
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
	>DOMAttributes,
	@:optional
	var ref : haxe.extern.EitherType<String, SVGComponent -> Void>;
	@:optional
	var cx : haxe.extern.EitherType<Float, String>;
	@:optional
	var cy : haxe.extern.EitherType<Float, String>;
	@:optional
	var d : String;
	@:optional
	var dx : haxe.extern.EitherType<Float, String>;
	@:optional
	var dy : haxe.extern.EitherType<Float, String>;
	@:optional
	var fill : String;
	@:optional
	var fillOpacity : haxe.extern.EitherType<Float, String>;
	@:optional
	var fontFamily : String;
	@:optional
	var fontSize : haxe.extern.EitherType<Float, String>;
	@:optional
	var fx : haxe.extern.EitherType<Float, String>;
	@:optional
	var fy : haxe.extern.EitherType<Float, String>;
	@:optional
	var gradientTransform : String;
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
	var r : haxe.extern.EitherType<Float, String>;
	@:optional
	var rx : haxe.extern.EitherType<Float, String>;
	@:optional
	var ry : haxe.extern.EitherType<Float, String>;
	@:optional
	var spreadMethod : String;
	@:optional
	var stopColor : String;
	@:optional
	var stopOpacity : haxe.extern.EitherType<Float, String>;
	@:optional
	var stroke : String;
	@:optional
	var strokeDasharray : String;
	@:optional
	var strokeLinecap : String;
	@:optional
	var strokeOpacity : haxe.extern.EitherType<Float, String>;
	@:optional
	var strokeWidth : haxe.extern.EitherType<Float, String>;
	@:optional
	var textAnchor : String;
	@:optional
	var transform : String;
	@:optional
	var version : String;
	@:optional
	var viewBox : String;
	@:optional
	var x1 : haxe.extern.EitherType<Float, String>;
	@:optional
	var x2 : haxe.extern.EitherType<Float, String>;
	@:optional
	var x : haxe.extern.EitherType<Float, String>;
	@:optional
	var y1 : haxe.extern.EitherType<Float, String>;
	@:optional
	var y2 : haxe.extern.EitherType<Float, String>;
	@:optional
	var y : haxe.extern.EitherType<Float, String>;
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
extern class ReactTopLevel {
	static function createClass<P, S>(spec:ComponentSpec<P, S>):ClassicComponentClass<P>;
	static function createFactory<P>(type:String):DOMFactory<P>;
	static function createFactory<P>(type:haxe.extern.EitherType<ClassicComponentClass<P>, String>):ClassicFactory<P>;
	static function createFactory<P>(type:ComponentClass<P>):Factory<P>;
	static function createElement<P>(type:String, ?props:P, children:haxe.extern.Rest<ReactNode>):DOMElement<P>;
	static function createElement<P>(type:haxe.extern.EitherType<ClassicComponentClass<P>, String>, ?props:P, children:haxe.extern.Rest<ReactNode>):ClassicElement<P>;
	static function createElement<P>(type:ComponentClass<P>, ?props:P, children:haxe.extern.Rest<ReactNode>):ReactElement<P>;
	static function cloneElement<P>(element:DOMElement<P>, ?props:P, children:haxe.extern.Rest<ReactNode>):DOMElement<P>;
	static function cloneElement<P>(element:ClassicElement<P>, ?props:P, children:haxe.extern.Rest<ReactNode>):ClassicElement<P>;
	static function cloneElement<P>(element:ReactElement<P>, ?props:P, children:haxe.extern.Rest<ReactNode>):ReactElement<P>;
	static function render<P>(element:DOMElement<P>, container:Element, ?callback:Void -> Dynamic):DOMComponent<P>;
	static function render<P, S>(element:ClassicElement<P>, container:Element, ?callback:Void -> Dynamic):ClassicComponent<P, S>;
	static function render<P, S>(element:ReactElement<P>, container:Element, ?callback:Void -> Dynamic):Component<P, S>;
	static function unmountComponentAtNode(container:Element):Bool;
	static function renderToString(element:ReactElement<Dynamic>):String;
	static function renderToStaticMarkup(element:ReactElement<Dynamic>):String;
	static function isValidElement(object:{ }):Bool;
	static function initializeTouchEvents(shouldUseTouch:Bool):Void;
	static function findDOMNode<TElement:(Element)>(componentOrElement:haxe.extern.EitherType<Component<Dynamic, Dynamic>, Element>):TElement;
	static function findDOMNode(componentOrElement:haxe.extern.EitherType<Component<Dynamic, Dynamic>, Element>):Element;
	static var DOM : ReactDOM;
	static var PropTypes : ReactPropTypes;
	static var Children : ReactChildren;
}
