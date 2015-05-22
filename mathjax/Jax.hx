typedef IMathJax = {
	@:optional
	var Hub : IMathJaxHub;
	@:optional
	var Ajax : IAjax;
	@:optional
	var Message : IMessage;
	@:optional
	var HTML : IHTML;
	@:optional
	var Callback : ICallback;
	@:optional
	var Localization : ILocalization;
	@:optional
	var InputJax : IInputJax;
	@:optional
	var OutputJax : IOutputJax;
};
typedef ICallback = {
	function Delay(time:Float, callback:Dynamic):ICallbackObject;
	function Queue(args:haxe.extern.Rest<Dynamic>):IQueue;
	function Signal(name:String):ISignal;
	function ExecuteHooks(hooks:Array<Dynamic>, data:Array<Dynamic>, reset:Bool):ICallbackObject;
	function Hooks(reset:Bool):IHooks;
};
typedef IHooks = {
	function Add(hook:Dynamic, priority:Float):ICallbackObject;
	function Remove(hook:ICallbackObject):Void;
	function Execute():ICallbackObject;
};
typedef IQueue = {
	var pending : Float;
	var running : Float;
	var queue : Array<Dynamic>;
	function Push(specs:Array<Dynamic>):ICallbackObject;
	function Process():Void;
	function Suspend():Void;
	function Resume():Void;
	function wait(callback:haxe.Constraints.Function):haxe.Constraints.Function;
	function call():Void;
};
typedef ISignal = {
	var name : String;
	var posted : Array<Dynamic>;
	var listeners : Array<ICallbackObject>;
	@:overload(function(message:String, callback:ICallbackObject):ICallbackObject { })
	function Post(message:String):ICallbackObject;
	@:overload(function(callback:ICallbackObject):ICallbackObject { })
	function Clear():ICallbackObject;
	@:overload(function(callback:ICallbackObject, ignorePast:Bool):ICallbackObject { })
	function Interest(callback:ICallbackObject):ICallbackObject;
	function NoInterest(callback:ICallbackObject):Void;
	function MessageHook(message:String, callback:ICallbackObject):ICallbackObject;
	function ExecuteHook(message:String):Void;
};
typedef ICallbackObject = {
	var hook : Float;
	var data : Array<Dynamic>;
	var object : Dynamic;
	var called : Bool;
	var autoReset : Bool;
	function reset():Void;
};
typedef IMathJaxHub = {
	@:optional
	var config : IMathJaxConfig;
	@:optional
	var processUpdateTime : Float;
	@:optional
	var processUpdateDelay : Float;
	@:optional
	var signal : ISignal;
	@:optional
	var queue : Dynamic;
	@:optional
	var Browser : IBrowserInfo;
	@:optional
	var inputJax : Dynamic;
	@:optional
	var outputJax : Dynamic;
	@:optional
	var Register : IRegister;
	function Config(config:IMathJaxConfig):Void;
	function Configured():Void;
	function Queue(callBack:Dynamic):Dynamic;
	function Typeset(element:Dynamic, callBack:Dynamic):Dynamic;
	function PreProcess(element:Dynamic, callBack:Dynamic):Dynamic;
	function Process(element:Dynamic, callBack:Dynamic):Dynamic;
	function Update(element:Dynamic, callBack:Dynamic):Dynamic;
	function Reprocess(element:Dynamic, callBack:Dynamic):Dynamic;
	function Rerender(element:Dynamic, callBack:Dynamic):Dynamic;
	function getAllJax(element:Dynamic):Array<Dynamic>;
	function getJaxByType(type:String, element:Dynamic):Void;
	function getJaxByInputType(type:String, element:Dynamic):Void;
	function getJaxFor(element:Dynamic):Dynamic;
	function isJax(element:Dynamic):Float;
	function setRenderer(renderer:String, type:String):Void;
	function Insert(dst:Dynamic, src:Dynamic):Dynamic;
	function formatError(script:Dynamic, error:Dynamic):Void;
};
typedef IRegister = {
	function PreProcessor(callBack:Dynamic):Void;
	function MessageHook(type:String, callBack:Dynamic):Void;
	function StartupHook(type:String, callBack:Dynamic):Void;
	function LoadHook(file:String, callBack:haxe.Constraints.Function):Void;
};
typedef IBrowserInfo = {
	var version : String;
	@:optional
	var isMac : Bool;
	@:optional
	var isPC : Bool;
	@:optional
	var isMobile : Bool;
	@:optional
	var isFirefox : Bool;
	@:optional
	var isSafari : Bool;
	@:optional
	var isChrome : Bool;
	@:optional
	var isOpera : Bool;
	@:optional
	var isMSIE : Bool;
	@:optional
	var isKonqueror : Bool;
	function versionAtLeast(version:String):Void;
	function Select(choices:Dynamic):Void;
};
typedef IAjax = {
	@:optional
	var timeout : Float;
	var STATUS : ISTATUS;
	var loaded : Dynamic;
	var loading : Bool;
	var loadHooks : Dynamic;
	function Require(file:String, callBack:Dynamic):Dynamic;
	function Load(file:String, callBack:Dynamic):Dynamic;
	function loadComplete(file:String):Void;
	function loadTimeout(file:String):Void;
	function loadError(file:String):Void;
	function LoadHook(file:String, callBack:Dynamic):Dynamic;
	function Preloading(args:haxe.extern.Rest<Dynamic>):Void;
	function Styles(styles:Dynamic, callback:Dynamic):Dynamic;
	function fileURL(file:String):String;
};
typedef ISTATUS = {
	var OK : String;
	var ERROR : String;
};
typedef IMessage = {
	function Set(message:String, n:Float, delay:Float):Float;
	function Clear(n:Float, delay:Float):Void;
	function Remove():Void;
	function File(file:String):Float;
	function filterText(text:String, n:Float):String;
	function Log():String;
};
typedef IHTML = {
	@:optional
	var Cookie : ICookie;
	function Element(type:String, attributes:Dynamic, contents:Dynamic):Dynamic;
	function addElement(parent:Dynamic, type:String, attributes:Dynamic, content:Dynamic):Dynamic;
	function TextNode(text:String):Dynamic;
	function addText(parent:Dynamic, text:String):Dynamic;
	function setScript(script:String, text:String):Void;
	function getScript(script:String):String;
};
typedef ICookie = {
	@:optional
	var prefix : String;
	@:optional
	var expires : Float;
	function Set(name:String, data:Dynamic):Void;
	@:overload(function(name:String, obj:Dynamic):Dynamic { })
	function Get(name:String):Dynamic;
};
typedef IMenuSettings = {
	@:optional
	var zoom : String;
	@:optional
	var CTRL : Bool;
	@:optional
	var ALT : Bool;
	@:optional
	var CMD : Bool;
	@:optional
	var Shift : Bool;
	@:optional
	var zscale : String;
	@:optional
	var context : String;
	@:optional
	var texHints : Bool;
};
typedef IErrorSettings = {
	@:optional
	var message : Array<String>;
	@:optional
	var style : Dynamic;
};
typedef IMathJaxConfig = {
	@:optional
	var MathZoom : IMathZoom;
	@:optional
	var MathMenu : IMathMenu;
	@:optional
	var MathEvents : IMathEvents;
	@:optional
	var FontWarnings : IFontWarnings;
	@:optional
	var Safe : ISafe;
	@:optional
	var MatchWebFonts : IMatchWebFonts;
	@:optional
	var SVG : ISVGOutputProcessor;
	@:optional
	var MMLorHTML : IMMLorHTMLConfiguration;
	@:optional
	var NativeMML : INativeMMLOutputProcessor;
	@:optional
	var HTML-CSS : IHTMLCSSOutputProcessor;
	@:optional
	var AsciiMath : IAsciiMathInputProcessor;
	@:optional
	var MathML : IMathMLInputProcessor;
	@:optional
	var TeX : ITeXInputProcessor;
	@:optional
	var jsMath2jax : IJSMath2jaxPreprocessor;
	@:optional
	var asciimath2jax : IAsciimath2jaxPreprocessor;
	@:optional
	var mml2jax : IMML2jaxPreprocessor;
	@:optional
	var tex2jax : ITEX2jaxPreprocessor;
	@:optional
	var jax : Array<String>;
	@:optional
	var extensions : Array<String>;
	@:optional
	var config : Array<String>;
	@:optional
	var styleSheets : String;
	@:optional
	var styles : Dynamic;
	@:optional
	var preJax : Dynamic;
	@:optional
	var postJax : Dynamic;
	@:optional
	var preRemoveClass : String;
	@:optional
	var showProcessingMessages : Bool;
	@:optional
	var messageStyle : String;
	@:optional
	var displayAlign : String;
	@:optional
	var displayIndent : String;
	@:optional
	var delayStartupUntil : String;
	@:optional
	var skipStartupTypeset : Bool;
	@:optional
	var elements : Array<String>;
	@:optional
	var positionToHash : Bool;
	@:optional
	var showMathMenu : Bool;
	@:optional
	var showMathMenuMSIE : Bool;
	@:optional
	var menuSettings : IMenuSettings;
	@:optional
	var errorSettings : IErrorSettings;
	@:optional
	var v1.0-compatible : Bool;
};
typedef IMathZoom = {
	var styles : Dynamic;
};
typedef IMathMenu = {
	@:optional
	var delay : Float;
	@:optional
	var helpURL : String;
	@:optional
	var showRenderer : Bool;
	@:optional
	var showFontMenu : Bool;
	@:optional
	var showLocale : Bool;
	@:optional
	var showMathPlayer : Bool;
	@:optional
	var showContext : Bool;
	@:optional
	var semanticsAnnotations : Dynamic;
	@:optional
	var windowSettings : Dynamic;
	@:optional
	var styles : Dynamic;
};
typedef IMathEvents = {
	@:optional
	var hover : Float;
	@:optional
	var styles : Dynamic;
};
typedef IFontWarnings = {
	@:optional
	var messageStyle : Dynamic;
	@:optional
	var Message : IHTMLMessages;
	@:optional
	var HTML : IHTMLSnippets;
	@:optional
	var removeAfter : Float;
	@:optional
	var fadeoutSteps : Float;
	@:optional
	var fadeoutTime : Float;
};
typedef IHTMLMessages = {
	@:optional
	var webFont : Array<Dynamic>;
	@:optional
	var imageFonts : Array<Dynamic>;
	@:optional
	var noFonts : Array<Dynamic>;
};
typedef IHTMLSnippets = {
	@:optional
	var closeBox : String;
	@:optional
	var webfonts : String;
	@:optional
	var fonts : String;
	@:optional
	var STIXfonts : String;
	@:optional
	var TeXfonts : String;
};
typedef ISafe = {
	@:optional
	var allow : ISafeAllow;
	@:optional
	var sizeMin : Float;
	@:optional
	var sizeMax : Float;
	@:optional
	var safeProtocols : ISafeProtocols;
	@:optional
	var safeStyles : ISafeStyles;
	@:optional
	var safeRequire : ISafeRequire;
};
typedef ISafeAllow = {
	@:optional
	var URLs : String;
	@:optional
	var classes : String;
	@:optional
	var cssIDs : String;
	@:optional
	var styles : String;
	@:optional
	var require : String;
	@:optional
	var fontsize : String;
};
typedef ISafeProtocols = {
	@:optional
	var http : Bool;
	@:optional
	var https : Bool;
	@:optional
	var file : Bool;
	@:optional
	var javascript : Bool;
};
typedef ISafeStyles = {
	@:optional
	var color : Bool;
	@:optional
	var backgroundColor : Bool;
	@:optional
	var border : Bool;
	@:optional
	var cursor : Bool;
	@:optional
	var margin : Bool;
	@:optional
	var padding : Bool;
	@:optional
	var textShadow : Bool;
	@:optional
	var fontFamily : Bool;
	@:optional
	var fontSize : Bool;
	@:optional
	var fontStyle : Bool;
	@:optional
	var fontWeight : Bool;
	@:optional
	var opacity : Bool;
	@:optional
	var outline : Bool;
};
typedef ISafeRequire = {
	@:optional
	var action : Bool;
	@:optional
	var amscd : Bool;
	@:optional
	var amsmath : Bool;
	@:optional
	var amssymbols : Bool;
	@:optional
	var autobold : Bool;
	@:optional
	var autoload-all : Bool;
	@:optional
	var bbox : Bool;
	@:optional
	var begingroup : Bool;
	@:optional
	var boldsymbol : Bool;
	@:optional
	var cancel : Bool;
	@:optional
	var color : Bool;
	@:optional
	var enclose : Bool;
	@:optional
	var extpfeil : Bool;
	@:optional
	var HTML : Bool;
	@:optional
	var mathchoice : Bool;
	@:optional
	var mhchem : Bool;
	@:optional
	var newcommand : Bool;
	@:optional
	var noErrors : Bool;
	@:optional
	var noUndefined : Bool;
	@:optional
	var unicode : Bool;
	@:optional
	var verb : Bool;
};
typedef IMatchWebFonts = {
	@:optional
	var matchFor : IMatchFor;
	@:optional
	var fontCheckDelay : Float;
	@:optional
	var fontCheckTimeout : Float;
};
typedef IMatchFor = {
	@:optional
	var HTML-CSS : Bool;
	@:optional
	var NativeMML : Bool;
	@:optional
	var SVG : Bool;
};
typedef ISVGOutputProcessor = {
	@:optional
	var scale : Float;
	@:optional
	var minScaleAdjust : Float;
	@:optional
	var font : String;
	@:optional
	var blacker : Float;
	@:optional
	var undefinedFamily : Array<String>;
	@:optional
	var mtextFontInherit : Bool;
	@:optional
	var addMMLclasses : Bool;
	@:optional
	var EqnChunk : Float;
	@:optional
	var EqnChunkFactor : Float;
	@:optional
	var EqnChunkDelay : Float;
	@:optional
	var matchFontHeight : Bool;
	@:optional
	var linebreaks : ILineBreaks;
	@:optional
	var styles : Dynamic;
	@:optional
	var tooltip : IToolTip;
};
typedef ILineBreaks = {
	@:optional
	var automatic : Bool;
	@:optional
	var width : String;
};
typedef IToolTip = {
	var delayPost : Float;
	var delayClear : Float;
	var offsetX : Float;
	var offsetY : Float;
};
typedef IMMLorHTMLConfiguration = {
	@:optional
	var prefer : IBrowserPreference;
};
typedef IBrowserPreference = {
	@:optional
	var MSIE : String;
	@:optional
	var Firefox : String;
	@:optional
	var Safari : String;
	@:optional
	var Chrome : String;
	@:optional
	var Opera : String;
	@:optional
	var other : String;
};
typedef INativeMMLOutputProcessor = {
	@:optional
	var scale : Float;
	@:optional
	var minScaleAdjust : Float;
	@:optional
	var matchFontHeight : Bool;
	@:optional
	var styles : Dynamic;
};
typedef IHTMLCSSOutputProcessor = {
	@:optional
	var scale : Float;
	@:optional
	var minScaleAdjust : Float;
	@:optional
	var availableFonts : Array<String>;
	@:optional
	var preferredFont : String;
	@:optional
	var webFont : String;
	@:optional
	var imageFont : String;
	@:optional
	var undefinedFamily : Array<String>;
	@:optional
	var mtextFontInherit : Bool;
	@:optional
	var EqnChunk : Float;
	@:optional
	var EqnChunkFactor : Float;
	@:optional
	var EqnChunkDelay : Float;
	@:optional
	var matchFontHeight : Bool;
	@:optional
	var linebreaks : ILineBreaks;
	@:optional
	var styles : Dynamic;
	@:optional
	var showMathMenu : Bool;
	@:optional
	var tooltip : IToolTip;
};
typedef IAsciiMathInputProcessor = {
	@:optional
	var displaystyle : Bool;
	@:optional
	var decimal : String;
};
typedef IMathMLInputProcessor = {
	@:optional
	var useMathMLspacing : Bool;
};
typedef ITeXInputProcessor = {
	@:optional
	var TagSide : String;
	@:optional
	var TagIndent : String;
	@:optional
	var MultLineWidth : String;
	@:optional
	var equationNumbers : IEquationNumbers;
	@:optional
	var Macros : Dynamic;
	@:optional
	var MAXMACROS : Float;
	@:optional
	var MAXBUFFER : Float;
};
typedef IEquationNumbers = {
	@:optional
	var autoNumber : String;
	@:optional
	var formatNumber : Float -> String;
	@:optional
	var formatTag : Float -> String;
	@:optional
	var formatID : Void -> String;
	@:optional
	var formatURL : String -> String;
	@:optional
	var useLabelIds : Bool;
};
typedef IJSMath2jaxPreprocessor = {
	var preview : Dynamic;
};
typedef IAsciimath2jaxPreprocessor = {
	@:optional
	var delimiters : Dynamic;
	@:optional
	var preview : Dynamic;
	@:optional
	var skipTags : Array<String>;
	@:optional
	var ignoreClass : String;
	@:optional
	var processClass : String;
};
typedef IMML2jaxPreprocessor = {
	@:optional
	var preview : Dynamic;
};
typedef ITEX2jaxPreprocessor = {
	@:optional
	var inlineMath : Dynamic;
	@:optional
	var displayMath : Dynamic;
	@:optional
	var balanceBraces : Bool;
	@:optional
	var processEscapes : Bool;
	@:optional
	var processEnvironments : Bool;
	@:optional
	var preview : Dynamic;
	@:optional
	var skipTags : Array<String>;
	@:optional
	var ignoreClass : String;
	@:optional
	var processClass : String;
};
typedef ILocalization = {
	var locale : String;
	var directory : String;
	var strings : Dynamic;
	function _(id:Float, message:String, args:haxe.extern.Rest<Dynamic>):Void;
	function setLocale(locale:String):Void;
	function addTranslation(locale:String, domain:String, def:Dynamic):Void;
	function setCSS(div:Dynamic):Dynamic;
	function fontFamily():String;
	function fontDirection():String;
	function plural(value:Dynamic):Float;
	function number(value:Float):String;
	@:overload(function(domain:String, callback:ICallbackObject):ICallbackObject { })
	function loadDomain(domain:String):ICallbackObject;
	function Try(spec:Dynamic):Void;
};
typedef IInputJax = {
	var id : String;
	var version : String;
	var directory : String;
	var elementJax : String;
	function Process(script:Dynamic, state:Dynamic):Dynamic;
	function Translate(script:Dynamic, state:Dynamic):IElementJax;
	function Register(mimetype:String):Void;
	function needsUpdate(element:Dynamic):Bool;
};
typedef IOutputJax = {
	var id : String;
	var version : String;
	var directory : String;
	var fontDir : String;
	var imageDir : String;
	function preProcess(state:Dynamic):Void;
	function preTranslate(state:Dynamic):Void;
	function Translate(script:Dynamic, state:Dynamic):IElementJax;
	function postTranslate(state:Dynamic):Void;
	function Register(mimetype:String):Void;
	function Remove(jax:Dynamic):Void;
	function getJaxFromMath(math:Dynamic):IElementJax;
	function Zoom(jax:Dynamic, span:Dynamic, math:Dynamic, Mw:Float, Mh:Float):IZoomStruct;
};
typedef IZoomStruct = {
	var Y : Float;
	var mW : Float;
	var mH : Float;
	var zW : Float;
	var zH : Float;
};
typedef IElementJax = {
	var id : String;
	var version : String;
	var directory : String;
	var inputJax : String;
	var outputJax : String;
	var inputID : String;
	var originalText : String;
	var mimeType : String;
	@:overload(function(text:String, callback:Dynamic):ICallbackObject { })
	function Text(text:String):ICallbackObject;
	function Rerender(callback:Dynamic):ICallbackObject;
	function Reprocess(callback:Dynamic):ICallbackObject;
	function Remove():Void;
	function SourceElement():Dynamic;
	function needsUpdate():Bool;
};
