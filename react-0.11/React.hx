typedef Descriptor<P> = {
	var props : P;
};
typedef Factory<P> = { };
typedef Mixin<P, S> = {
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
typedef Specification<P, S> = {
	>Mixin<P, S>,
	@:optional
	var displayName : String;
	@:optional
	var mixins : Array<Mixin<P, S>>;
	@:optional
	var statics : { };
	@:optional
	var propTypes : ValidationMap<P>;
	@:optional
	function getDefaultProps():P;
	@:optional
	function getInitialState():S;
	function render():Descriptor<Dynamic>;
};
typedef DomReferencer = {
	function getDOMNode():Element;
};
typedef Component<P, S> = {
	>DomReferencer,
	var refs : { };
	var props : P;
	var state : S;
	function setState(nextState:S, ?callback:Void -> Void):Void;
	function replaceState(nextState:S, ?callback:Void -> Void):Void;
	function forceUpdate(?callback:Void -> Void):Void;
	function isMounted():Bool;
	function transferPropsTo(target:Factory<P>):Descriptor<P>;
	function setProps(nextProps:P, ?callback:Void -> Void):Void;
	function replaceProps(nextProps:P, ?callback:Void -> Void):Void;
};
typedef Constructable = {
	function new():Dynamic;
};
typedef Validator<P> = { };
typedef Requireable<P> = {
	>Validator<P>,
	var isRequired : Validator<P>;
};
typedef ValidationMap<P> = { };
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
typedef SyntheticEvent = {
	var bubbles : Bool;
	var cancelable : Bool;
	var currentTarget : EventTarget;
	var defaultPrevented : Bool;
	var eventPhase : Float;
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
typedef UiEvent = {
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
typedef EventAttributes = {
	@:optional
	var onCopy : ClipboardEvent -> Void;
	@:optional
	var onCut : ClipboardEvent -> Void;
	@:optional
	var onPaste : ClipboardEvent -> Void;
	@:optional
	var onKeyDown : KeyboardEvent -> Void;
	@:optional
	var onKeyPress : KeyboardEvent -> Void;
	@:optional
	var onKeyUp : KeyboardEvent -> Void;
	@:optional
	var onFocus : FocusEvent -> Void;
	@:optional
	var onBlur : FocusEvent -> Void;
	@:optional
	var onChange : SyntheticEvent -> Void;
	@:optional
	var onInput : SyntheticEvent -> Void;
	@:optional
	var onSubmit : SyntheticEvent -> Void;
	@:optional
	var onClick : MouseEvent -> Void;
	@:optional
	var onDoubleClick : MouseEvent -> Void;
	@:optional
	var onDrag : MouseEvent -> Void;
	@:optional
	var onDragEnd : MouseEvent -> Void;
	@:optional
	var onDragEnter : MouseEvent -> Void;
	@:optional
	var onDragExit : MouseEvent -> Void;
	@:optional
	var onDragLeave : MouseEvent -> Void;
	@:optional
	var onDragOver : MouseEvent -> Void;
	@:optional
	var onDragStart : MouseEvent -> Void;
	@:optional
	var onDrop : MouseEvent -> Void;
	@:optional
	var onMouseDown : MouseEvent -> Void;
	@:optional
	var onMouseEnter : MouseEvent -> Void;
	@:optional
	var onMouseLeave : MouseEvent -> Void;
	@:optional
	var onMouseMove : MouseEvent -> Void;
	@:optional
	var onMouseOut : MouseEvent -> Void;
	@:optional
	var onMouseOver : MouseEvent -> Void;
	@:optional
	var onMouseUp : MouseEvent -> Void;
	@:optional
	var onTouchCancel : TouchEvent -> Void;
	@:optional
	var onTouchEnd : TouchEvent -> Void;
	@:optional
	var onTouchMove : TouchEvent -> Void;
	@:optional
	var onTouchStart : TouchEvent -> Void;
	@:optional
	var onScroll : UiEvent -> Void;
	@:optional
	var onWheel : WheelEvent -> Void;
};
typedef ReactAttributes = {
	@:optional
	var dangerouslySetInnerHTML : { var __html : String; };
	@:optional
	var children : Array<Dynamic>;
	@:optional
	var key : String;
	@:optional
	var ref : String;
};
typedef DomAttributes = {
	>EventAttributes,
	>ReactAttributes,
	@:optional
	var accept : Dynamic;
	@:optional
	var accessKey : Dynamic;
	@:optional
	var action : Dynamic;
	@:optional
	var allowFullScreen : Dynamic;
	@:optional
	var allowTransparency : Dynamic;
	@:optional
	var alt : Dynamic;
	@:optional
	var async : Dynamic;
	@:optional
	var autoCapitalize : Dynamic;
	@:optional
	var autoComplete : Dynamic;
	@:optional
	var autoCorrect : Dynamic;
	@:optional
	var autoFocus : Dynamic;
	@:optional
	var autoPlay : Dynamic;
	@:optional
	var cellPadding : Dynamic;
	@:optional
	var cellSpacing : Dynamic;
	@:optional
	var charSet : Dynamic;
	@:optional
	var checked : Dynamic;
	@:optional
	var className : Dynamic;
	@:optional
	var cols : Dynamic;
	@:optional
	var colSpan : Dynamic;
	@:optional
	var content : Dynamic;
	@:optional
	var contentEditable : Dynamic;
	@:optional
	var contextMenu : Dynamic;
	@:optional
	var controls : Dynamic;
	@:optional
	var coords : Dynamic;
	@:optional
	var crossOrigin : Dynamic;
	@:optional
	var data : Dynamic;
	@:optional
	var dateTime : Dynamic;
	@:optional
	var defer : Dynamic;
	@:optional
	var dir : Dynamic;
	@:optional
	var disabled : Dynamic;
	@:optional
	var download : Dynamic;
	@:optional
	var draggable : Dynamic;
	@:optional
	var encType : Dynamic;
	@:optional
	var form : Dynamic;
	@:optional
	var formNoValidate : Dynamic;
	@:optional
	var frameBorder : Dynamic;
	@:optional
	var height : Dynamic;
	@:optional
	var hidden : Dynamic;
	@:optional
	var href : Dynamic;
	@:optional
	var hrefLang : Dynamic;
	@:optional
	var htmlFor : Dynamic;
	@:optional
	var httpEquiv : Dynamic;
	@:optional
	var icon : Dynamic;
	@:optional
	var id : Dynamic;
	@:optional
	var itemProp : Dynamic;
	@:optional
	var itemScope : Dynamic;
	@:optional
	var itemType : Dynamic;
	@:optional
	var label : Dynamic;
	@:optional
	var lang : Dynamic;
	@:optional
	var list : Dynamic;
	@:optional
	var loop : Dynamic;
	@:optional
	var max : Dynamic;
	@:optional
	var maxLength : Dynamic;
	@:optional
	var mediaGroup : Dynamic;
	@:optional
	var method : Dynamic;
	@:optional
	var min : Dynamic;
	@:optional
	var multiple : Dynamic;
	@:optional
	var muted : Dynamic;
	@:optional
	var name : Dynamic;
	@:optional
	var noValidate : Dynamic;
	@:optional
	var open : Dynamic;
	@:optional
	var pattern : Dynamic;
	@:optional
	var placeholder : Dynamic;
	@:optional
	var poster : Dynamic;
	@:optional
	var preload : Dynamic;
	@:optional
	var property : Dynamic;
	@:optional
	var radioGroup : Dynamic;
	@:optional
	var readOnly : Dynamic;
	@:optional
	var rel : Dynamic;
	@:optional
	var required : Dynamic;
	@:optional
	var role : Dynamic;
	@:optional
	var rows : Dynamic;
	@:optional
	var rowSpan : Dynamic;
	@:optional
	var sandbox : Dynamic;
	@:optional
	var scope : Dynamic;
	@:optional
	var scrollLeft : Dynamic;
	@:optional
	var scrolling : Dynamic;
	@:optional
	var scrollTop : Dynamic;
	@:optional
	var seamless : Dynamic;
	@:optional
	var selected : Dynamic;
	@:optional
	var shape : Dynamic;
	@:optional
	var size : Dynamic;
	@:optional
	var span : Dynamic;
	@:optional
	var spellCheck : Dynamic;
	@:optional
	var src : Dynamic;
	@:optional
	var srcDoc : Dynamic;
	@:optional
	var srcSet : Dynamic;
	@:optional
	var start : Dynamic;
	@:optional
	var step : Dynamic;
	@:optional
	var style : Dynamic;
	@:optional
	var tabIndex : Dynamic;
	@:optional
	var target : Dynamic;
	@:optional
	var title : Dynamic;
	@:optional
	var type : Dynamic;
	@:optional
	var useMap : Dynamic;
	@:optional
	var value : Dynamic;
	@:optional
	var width : Dynamic;
	@:optional
	var wmode : Dynamic;
};
typedef SvgAttributes = {
	>EventAttributes,
	>ReactAttributes,
	@:optional
	var cx : Dynamic;
	@:optional
	var cy : Dynamic;
	@:optional
	var d : Dynamic;
	@:optional
	var dx : Dynamic;
	@:optional
	var dy : Dynamic;
	@:optional
	var fill : Dynamic;
	@:optional
	var fillOpacity : Dynamic;
	@:optional
	var fontFamily : Dynamic;
	@:optional
	var fontSize : Dynamic;
	@:optional
	var fx : Dynamic;
	@:optional
	var fy : Dynamic;
	@:optional
	var gradientTransform : Dynamic;
	@:optional
	var gradientUnits : Dynamic;
	@:optional
	var markerEnd : Dynamic;
	@:optional
	var markerMid : Dynamic;
	@:optional
	var markerStart : Dynamic;
	@:optional
	var offset : Dynamic;
	@:optional
	var opacity : Dynamic;
	@:optional
	var patternContentUnits : Dynamic;
	@:optional
	var patternUnits : Dynamic;
	@:optional
	var points : Dynamic;
	@:optional
	var preserveAspectRatio : Dynamic;
	@:optional
	var r : Dynamic;
	@:optional
	var rx : Dynamic;
	@:optional
	var ry : Dynamic;
	@:optional
	var spreadMethod : Dynamic;
	@:optional
	var stopColor : Dynamic;
	@:optional
	var stopOpacity : Dynamic;
	@:optional
	var stroke : Dynamic;
	@:optional
	var strokeDasharray : Dynamic;
	@:optional
	var strokeLinecap : Dynamic;
	@:optional
	var strokeOpacity : Dynamic;
	@:optional
	var strokeWidth : Dynamic;
	@:optional
	var textAnchor : Dynamic;
	@:optional
	var transform : Dynamic;
	@:optional
	var version : Dynamic;
	@:optional
	var viewBox : Dynamic;
	@:optional
	var x1 : Dynamic;
	@:optional
	var x2 : Dynamic;
	@:optional
	var x : Dynamic;
	@:optional
	var y1 : Dynamic;
	@:optional
	var y2 : Dynamic;
	@:optional
	var y : Dynamic;
};
typedef DomElement = {
	>Factory<DomAttributes>,
};
typedef SvgElement = {
	>Factory<SvgAttributes>,
};
extern class ReactTopLevel {
	static function createClass<P, S>(specification:Specification<P, S>):Factory<P>;
	static function renderComponent<P>(component:Descriptor<P>, container:Element, ?callback:Void -> Void):Descriptor<P>;
	static function unmountComponentAtNode(container:Element):Bool;
	static function renderComponentToString(component:Descriptor<Dynamic>):String;
	static function renderComponentToStaticMarkup(component:Descriptor<Dynamic>):String;
	static function isValidClass(factory:Factory<Dynamic>):Bool;
	static function isValidComponent(component:Descriptor<Dynamic>):Bool;
	static function initializeTouchEvents(shouldUseTouch:Bool):Void;
	static var PropTypes : { var any : Requireable<Dynamic>; var array : Requireable<Dynamic>; var bool : Requireable<Dynamic>; var func : Requireable<Dynamic>; var number : Requireable<Dynamic>; var object : Requireable<Dynamic>; var string : Requireable<Dynamic>; var renderable : Requireable<Dynamic>; var component : Requireable<Dynamic>; var instanceOf : Constructable -> Requireable<Dynamic>; var oneOf : Array<Dynamic> -> Requireable<Dynamic>; var oneOfType : Array<Validator<Dynamic>> -> Requireable<Dynamic>; var arrayOf : Validator<Dynamic> -> Requireable<Dynamic>; var objectOf : Validator<Dynamic> -> Requireable<Dynamic>; var shape : ValidationMap<Dynamic> -> Requireable<Dynamic>; };
	static var Children : { function map(children:Array<Dynamic>, fn:Dynamic -> Dynamic):Array<Dynamic>; function forEach(children:Array<Dynamic>, fn:Dynamic -> Dynamic):Void; function count(children:Array<Dynamic>):Float; function only(children:Array<Dynamic>):Dynamic; };
	static var DOM : { var a : DomElement; var abbr : DomElement; var address : DomElement; var area : DomElement; var article : DomElement; var aside : DomElement; var audio : DomElement; var b : DomElement; var base : DomElement; var bdi : DomElement; var bdo : DomElement; var big : DomElement; var blockquote : DomElement; var body : DomElement; var br : DomElement; var button : DomElement; var canvas : DomElement; var caption : DomElement; var cite : DomElement; var code : DomElement; var col : DomElement; var colgroup : DomElement; var data : DomElement; var datalist : DomElement; var dd : DomElement; var del : DomElement; var details : DomElement; var dfn : DomElement; var dialog : DomElement; var div : DomElement; var dl : DomElement; var dt : DomElement; var em : DomElement; var embed : DomElement; var fieldset : DomElement; var figcaption : DomElement; var figure : DomElement; var footer : DomElement; var form : DomElement; var h1 : DomElement; var h2 : DomElement; var h3 : DomElement; var h4 : DomElement; var h5 : DomElement; var h6 : DomElement; var head : DomElement; var header : DomElement; var hr : DomElement; var html : DomElement; var i : DomElement; var iframe : DomElement; var img : DomElement; var input : DomElement; var ins : DomElement; var kbd : DomElement; var keygen : DomElement; var label : DomElement; var legend : DomElement; var li : DomElement; var link : DomElement; var main : DomElement; var map : DomElement; var mark : DomElement; var menu : DomElement; var menuitem : DomElement; var meta : DomElement; var meter : DomElement; var nav : DomElement; var noscript : DomElement; var object : DomElement; var ol : DomElement; var optgroup : DomElement; var option : DomElement; var output : DomElement; var p : DomElement; var param : DomElement; var pre : DomElement; var progress : DomElement; var q : DomElement; var rp : DomElement; var rt : DomElement; var ruby : DomElement; var s : DomElement; var samp : DomElement; var script : DomElement; var section : DomElement; var select : DomElement; var small : DomElement; var source : DomElement; var span : DomElement; var strong : DomElement; var style : DomElement; var sub : DomElement; var summary : DomElement; var sup : DomElement; var table : DomElement; var tbody : DomElement; var td : DomElement; var textarea : DomElement; var tfoot : DomElement; var th : DomElement; var thead : DomElement; var time : DomElement; var title : DomElement; var tr : DomElement; var track : DomElement; var u : DomElement; var ul : DomElement; var var : DomElement; var video : DomElement; var wbr : DomElement; var circle : SvgElement; var defs : SvgElement; var ellipse : SvgElement; var g : SvgElement; var line : SvgElement; var linearGradient : SvgElement; var mask : SvgElement; var path : SvgElement; var pattern : SvgElement; var polygon : SvgElement; var polyline : SvgElement; var radialGradient : SvgElement; var rect : SvgElement; var stop : SvgElement; var svg : SvgElement; var text : SvgElement; var tspan : SvgElement; };
}
