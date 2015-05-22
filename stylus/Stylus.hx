typedef Static = {
	var version : String;
	var nodes : NodeStatic;
	var functions : Functions;
	var utils : Utils;
	var Visitor : Dynamic;
	var Parser : Dynamic;
	var Evaluator : Dynamic;
	var Compiler : Dynamic;
	function middleware(dir:String):Middleware;
	function convertCSS(css:String):String;
	@:overload(function(str:String, options:RenderOptions, callback:RenderCallback):Void { })
	function render(str:String, callback:RenderCallback):Void;
	var url : UrlFunction;
	function resolver(options:Dynamic):LiteralFunction;
};
typedef NodeStatic = {
	var Node : Dynamic;
	var Root : Dynamic;
	var Null : Dynamic;
	var Each : Dynamic;
	var If : Dynamic;
	var Call : Dynamic;
	var UnaryOp : Dynamic;
	var BinOp : Dynamic;
	var Ternary : Dynamic;
	var Block : Dynamic;
	var Unit : Dynamic;
	var String : Dynamic;
	var HSLA : Dynamic;
	var RGBA : Dynamic;
	var Ident : Dynamic;
	var Group : Dynamic;
	var Literal : Dynamic;
	var Boolean : Dynamic;
	var Return : Dynamic;
	var Media : Dynamic;
	var QueryList : Dynamic;
	var Query : Dynamic;
	var QueryExpr : Dynamic;
	var Params : Dynamic;
	var Comment : Dynamic;
	var Keyframes : Dynamic;
	var Member : Dynamic;
	var Charset : Dynamic;
	var Namespace : Dynamic;
	var Import : Dynamic;
	var Extend : Dynamic;
	var Object : Dynamic;
	var Function : Dynamic;
	var Property : Dynamic;
	var Selector : Dynamic;
	var Expression : Dynamic;
	var Arguments : Dynamic;
	var Atblock : Dynamic;
	var Atrule : Dynamic;
	var true : Nodes.Boolean;
	var false : Nodes.Boolean;
	var null : Nodes.Null;
};
typedef Functions = {
	@:overload(function(hsla:Nodes.HSLA):Nodes.HSLA { })
	@:overload(function(hue:Nodes.Unit, saturation:Nodes.Unit, lightness:Nodes.Unit, alpha:Nodes.Unit):Nodes.HSLA { })
	function hsla(rgba:Nodes.RGBA):Nodes.HSLA;
	@:overload(function(hsla:Nodes.HSLA):Nodes.HSLA { })
	@:overload(function(hue:Nodes.Unit, saturation:Nodes.Unit, lightness:Nodes.Unit):Nodes.HSLA { })
	function hsl(rgba:Nodes.RGBA):Nodes.HSLA;
	function type(node:Nodes.Node):String;
	function typeof(node:Nodes.Node):String;
	function type-of(node:Nodes.Node):String;
	@:overload(function(color:Nodes.HSLA, name:Nodes.String):Nodes.Unit { })
	function component(color:Nodes.RGBA, name:Nodes.String):Nodes.Unit;
	@:overload(function(path:Nodes.String, ext:Nodes.String):String { })
	function basename(path:Nodes.String):String;
	function dirname(path:Nodes.String):String;
	function extname(path:Nodes.String):String;
	function pathjoin(paths:haxe.extern.Rest<Nodes.String>):String;
	@:overload(function(color:Nodes.HSLA):Nodes.Unit { })
	@:overload(function(color:Nodes.RGBA, value:Nodes.Unit):Nodes.RGBA { })
	@:overload(function(color:Nodes.HSLA, value:Nodes.Unit):Nodes.RGBA { })
	function red(color:Nodes.RGBA):Nodes.Unit;
	@:overload(function(color:Nodes.HSLA):Nodes.Unit { })
	@:overload(function(color:Nodes.RGBA, value:Nodes.Unit):Nodes.RGBA { })
	@:overload(function(color:Nodes.HSLA, value:Nodes.Unit):Nodes.RGBA { })
	function green(color:Nodes.RGBA):Nodes.Unit;
	@:overload(function(color:Nodes.HSLA):Nodes.Unit { })
	@:overload(function(color:Nodes.RGBA, value:Nodes.Unit):Nodes.RGBA { })
	@:overload(function(color:Nodes.HSLA, value:Nodes.Unit):Nodes.RGBA { })
	function blue(color:Nodes.RGBA):Nodes.Unit;
	@:overload(function(color:Nodes.HSLA):Nodes.Unit { })
	@:overload(function(color:Nodes.RGBA, value:Nodes.Unit):Nodes.RGBA { })
	@:overload(function(color:Nodes.HSLA, value:Nodes.Unit):Nodes.RGBA { })
	function alpha(color:Nodes.RGBA):Nodes.Unit;
	@:overload(function(color:Nodes.HSLA):Nodes.Unit { })
	@:overload(function(color:Nodes.RGBA, value:Nodes.Unit):Nodes.RGBA { })
	@:overload(function(color:Nodes.HSLA, value:Nodes.Unit):Nodes.RGBA { })
	function hue(color:Nodes.RGBA):Nodes.Unit;
	@:overload(function(color:Nodes.HSLA):Nodes.Unit { })
	@:overload(function(color:Nodes.RGBA, value:Nodes.Unit):Nodes.RGBA { })
	@:overload(function(color:Nodes.HSLA, value:Nodes.Unit):Nodes.RGBA { })
	function saturation(color:Nodes.RGBA):Nodes.Unit;
	@:overload(function(color:Nodes.HSLA):Nodes.Unit { })
	@:overload(function(color:Nodes.RGBA, value:Nodes.Unit):Nodes.RGBA { })
	@:overload(function(color:Nodes.HSLA, value:Nodes.Unit):Nodes.RGBA { })
	function lightness(color:Nodes.RGBA):Nodes.Unit;
	@:overload(function(hsla:Nodes.HSLA):Nodes.RGBA { })
	@:overload(function(hue:Nodes.Unit, saturation:Nodes.Unit, lightness:Nodes.Unit, alpha:Nodes.Unit):Nodes.RGBA { })
	function rgba(rgba:Nodes.RGBA):Nodes.RGBA;
	@:overload(function(hsla:Nodes.HSLA):Nodes.RGBA { })
	@:overload(function(hue:Nodes.Unit, saturation:Nodes.Unit, lightness:Nodes.Unit, alpha:Nodes.Unit):Nodes.RGBA { })
	function rgb(rgba:Nodes.RGBA):Nodes.RGBA;
	@:overload(function(top:Nodes.RGBA, bottom:Nodes.RGBA):Nodes.RGBA { })
	@:overload(function(top:Nodes.RGBA, bottom:Nodes.HSLA):Nodes.RGBA { })
	@:overload(function(top:Nodes.HSLA):Nodes.RGBA { })
	@:overload(function(top:Nodes.HSLA, bottom:Nodes.RGBA):Nodes.RGBA { })
	@:overload(function(top:Nodes.HSLA, bottom:Nodes.HSLA):Nodes.RGBA { })
	function blend(top:Nodes.RGBA):Nodes.RGBA;
	@:overload(function(rgba:Nodes.HSLA):Nodes.Unit { })
	function luminosity(rgba:Nodes.RGBA):Nodes.Unit;
	@:overload(function(top:Nodes.RGBA, bottom:Nodes.RGBA):Nodes.Object { })
	@:overload(function(top:Nodes.RGBA, bottom:Nodes.HSLA):Nodes.Object { })
	@:overload(function(top:Nodes.HSLA):Nodes.Object { })
	@:overload(function(top:Nodes.HSLA, bottom:Nodes.RGBA):Nodes.Object { })
	@:overload(function(top:Nodes.HSLA, bottom:Nodes.HSLA):Nodes.Object { })
	function contrast(top:Nodes.RGBA):Nodes.Object;
	@:overload(function(top:Nodes.RGBA, bottom:Nodes.RGBA, ?alpha:Nodes.Unit):Nodes.Object { })
	@:overload(function(top:Nodes.RGBA, bottom:Nodes.HSLA, ?alpha:Nodes.Unit):Nodes.Object { })
	@:overload(function(top:Nodes.HSLA):Nodes.Object { })
	@:overload(function(top:Nodes.HSLA, bottom:Nodes.RGBA, ?alpha:Nodes.Unit):Nodes.Object { })
	@:overload(function(top:Nodes.HSLA, bottom:Nodes.HSLA, ?alpha:Nodes.Unit):Nodes.Object { })
	function transparentify(top:Nodes.RGBA):Nodes.Object;
	function json(path:Nodes.String, local:Nodes.Boolean, namePrefix:Nodes.String):Dynamic;
	@:overload(function(plugin:Nodes.String, options:Dynamic):Void { })
	function use(plugin:Nodes.String):Void;
	function unquote(str:Nodes.String):Nodes.Literal;
	function convert(str:Nodes.String):Nodes.Node;
	function unit(unit:Nodes.Unit, type:Nodes.String):Nodes.Unit;
	function lookup(name:Nodes.String):Nodes.Node;
	function define(name:Nodes.String, expr:Nodes.Expression):Nodes.Node;
	function operate(op:Nodes.String, left:Nodes.Node, right:Nodes.Node):Nodes.Node;
	@:overload(function(pattern:Nodes.String, val:Nodes.Ident):Nodes.Boolean { })
	function match(pattern:Nodes.String, val:Nodes.String):Nodes.Boolean;
	@:overload(function(val:Nodes.Ident, start:Nodes.Number, length:Nodes.Number):Nodes.Ident { })
	function substr(val:Nodes.String, start:Nodes.Number, length:Nodes.Number):Nodes.String;
	@:overload(function(pattern:Nodes.String, replacement:Nodes.String, val:Nodes.Ident):Nodes.Ident { })
	function replace(pattern:Nodes.String, replacement:Nodes.String, val:Nodes.String):Nodes.String;
	@:overload(function(pattern:Nodes.String, val:Nodes.Ident):Nodes.Expression { })
	function split(pattern:Nodes.String, val:Nodes.String):Nodes.Expression;
	@:overload(function(expr:haxe.extern.Rest<Nodes.Expression>):Nodes.Null { })
	function length(expr:Nodes.Expression):Nodes.Unit;
	function error(msg:Nodes.String):Void;
	function warn(msg:Nodes.String):Nodes.Null;
	function trace():Nodes.Null;
	function push(expr:Nodes.Expression, nodes:haxe.extern.Rest<Nodes.Node>):Nodes.Unit;
	function pop(expr:Nodes.Expression):Nodes.Node;
	function unshift(expr:Nodes.Expression, nodes:haxe.extern.Rest<Nodes.Node>):Nodes.Unit;
	function prepend(expr:Nodes.Expression, nodes:haxe.extern.Rest<Nodes.Node>):Nodes.Unit;
	function shift(expr:Nodes.Expression):Nodes.Node;
	function s(fmt:Nodes.String, nodes:haxe.extern.Rest<Nodes.Node>):Nodes.Literal;
	function base-convert(num:Nodes.Number, base:Nodes.Number, width:Nodes.Number):Nodes.Literal;
	function opposite-position(positions:Nodes.Expression):Nodes.Expression;
	function image-size(img:Nodes.String, ignoreErr:Nodes.Boolean):Nodes.Expression;
	function tan(angle:Nodes.Unit):Nodes.Unit;
	function math(n:Nodes.Unit, fn:Nodes.String):Nodes.Unit;
	function -math-prop(prop:Nodes.String):Nodes.Unit;
	@:overload(function(hsla:Nodes.HSLA, prop:Nodes.String, amount:Nodes.Unit):Nodes.RGBA { })
	function adjust(rgba:Nodes.RGBA, prop:Nodes.String, amount:Nodes.Unit):Nodes.RGBA;
	function clone(expr:Nodes.Expression):Nodes.Expression;
	function add-property(name:Nodes.String, expr:Nodes.Expression):Nodes.Property;
	function merge(dest:Nodes.Object, objs:haxe.extern.Rest<Nodes.Object>):Nodes.Object;
	function extend(dest:Nodes.Object, objs:haxe.extern.Rest<Nodes.Object>):Nodes.Object;
	@:overload(function(sel:Nodes.String):String { })
	function selector():String;
	function -prefix-classes(prefix:Nodes.String, block:Nodes.Block):Nodes.Block;
	function current-media():Nodes.String;
	function list-separator(list:Nodes.Expression):Nodes.String;
};
typedef Utils = {
	function absolute(path:String):Bool;
	function lookup(path:String, paths:String, ignore:String, resolveURL:Bool):String;
	function lookupIndex(path:String, paths:String, filename:String):Array<String>;
	function find(path:String, paths:String, ignore:String):Array<String>;
	function formatException(err:Error, options:ExceptionOptions):Error;
	function assertType(node:Nodes.Node, type:String, param:String):Void;
	function assertString(node:Nodes.Node, param:String):Void;
	function assertColor(node:Nodes.Node, param:String):Void;
	function assertPresent(node:Nodes.Node, name:String):Void;
	function unwrap(expr:Nodes.Expression):Nodes.Node;
	@:overload(function(val:Dynamic, raw:Bool):Nodes.Node { })
	function coerce(val:Dynamic):Nodes.Node;
	@:overload(function(val:Dynamic, raw:Bool):Nodes.Expression { })
	function coerceArray(val:Dynamic):Nodes.Expression;
	@:overload(function(obj:Dynamic, raw:Bool):Nodes.Expression { })
	function coerceObject(obj:Dynamic):Nodes.Expression;
	function params(fn:haxe.Constraints.Function):Array<String>;
	function merge(a:Dynamic, b:Dynamic):Dynamic;
	function uniq(arr:Array<Dynamic>):Array<Dynamic>;
	function compileSelectors(arr:Array<String>, leaveHidden:Bool):Array<String>;
};
typedef UrlFunction = {
	var mimes : { var .gif : String; var .png : String; var .jpg : String; var .jpeg : String; var .svg : String; var .ttf : String; var .eot : String; var .woff : String; };
};
typedef Middleware = { };
extern class Visitor {

}
extern class Parser {

}
extern class Evaluator {

}
extern class Compiler {

}
extern class Renderer {
	var options : RenderOptions;
	var str : String;
	var events : Dynamic;
	@:overload(function(str:String, options:RenderOptions):Void { })
	function new(str:String):Void;
	function render(callback:RenderCallback):Void;
	function deps(filename:String):Array<String>;
	function set(key:String, val:Dynamic):Renderer;
	function get(key:String):Dynamic;
	function include(path:String):Renderer;
	function use(fn:Renderer -> Dynamic):Renderer;
	@:overload(function(name:String, node:Nodes.Node):Renderer { })
	@:overload(function(name:String, val:Dynamic):Renderer { })
	@:overload(function(name:String, fn:haxe.Constraints.Function, raw:Bool):Renderer { })
	@:overload(function(name:String, node:Nodes.Node, raw:Bool):Renderer { })
	@:overload(function(name:String, val:Dynamic, raw:Bool):Renderer { })
	function define(name:String, fn:haxe.Constraints.Function):Renderer;
	function import(file:String):Renderer;
	function addListener(event:String, listener:haxe.Constraints.Function):Renderer;
	function on(event:String, listener:haxe.Constraints.Function):Renderer;
	function once(event:String, listener:haxe.Constraints.Function):Renderer;
	function removeListener(event:String, listener:haxe.Constraints.Function):Renderer;
	function removeAllListeners(?event:String):Renderer;
	function setMaxListeners(n:Float):Void;
	function listeners(event:String):Array<haxe.Constraints.Function>;
	function emit(event:String, args:haxe.extern.Rest<Dynamic>):Bool;
}
