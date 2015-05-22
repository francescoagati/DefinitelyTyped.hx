typedef View = {
	var name : String;
	var parentView : Blaze.View;
	var isCreated : Bool;
	var isRendered : Bool;
	var isDestroyed : Bool;
	var renderCount : Float;
	function autorun(runFunc:haxe.Constraints.Function):Void;
	function onViewCreated(func:haxe.Constraints.Function):Void;
	function onViewReady(func:haxe.Constraints.Function):Void;
	function onViewDestroyed(func:haxe.Constraints.Function):Void;
	function firstNode():Node;
	function lastNode():Node;
	var template : Blaze.Template;
	function templateInstance():Dynamic;
};
typedef Template = {
	var viewName : String;
	var renderFunction : haxe.Constraints.Function;
	function constructView():Blaze.View;
};
typedef TemplateStatic = {
	function new(?viewName:String, ?renderFunction:haxe.Constraints.Function):Template;
	var head : Template;
	function find(selector:String):Blaze.Template;
	function findAll(selector:String):Array<Blaze.Template>;
	var $ : Dynamic;
};
typedef Template = { };
typedef TemplateInstanceStatic = {
	function new(view:Blaze.View):TemplateInstance;
};
typedef TemplateInstance = {
	function $(selector:String):Dynamic;
	function autorun(runFunc:haxe.Constraints.Function):Dynamic;
	var data : Dynamic;
	function find(?selector:String):Blaze.TemplateInstance;
	function findAll(selector:String):Array<Blaze.TemplateInstance>;
	var firstNode : Dynamic;
	var lastNode : Dynamic;
	function subscribe(name:String, args:haxe.extern.Rest<Dynamic>):Meteor.SubscriptionHandle;
	function subscriptionsReady():Bool;
	var view : Dynamic;
};
typedef ViewStatic = {
	function new(?name:String, ?renderFunction:haxe.Constraints.Function):View;
};
typedef View = { };
extern class BlazeTopLevel {
	static function Each(argFunc:haxe.Constraints.Function, contentFunc:haxe.Constraints.Function, ?elseFunc:haxe.Constraints.Function):Blaze.View;
	static function If(conditionFunc:haxe.Constraints.Function, contentFunc:haxe.Constraints.Function, ?elseFunc:haxe.Constraints.Function):Blaze.View;
	static var Template : TemplateStatic;
	static var TemplateInstance : TemplateInstanceStatic;
	static function Unless(conditionFunc:haxe.Constraints.Function, contentFunc:haxe.Constraints.Function, ?elseFunc:haxe.Constraints.Function):Blaze.View;
	static var View : ViewStatic;
	static function With(data:haxe.extern.EitherType<Dynamic, haxe.Constraints.Function>, contentFunc:haxe.Constraints.Function):Blaze.View;
	static var currentView : Blaze.View;
	static function getData(?elementOrView:haxe.extern.EitherType<HTMLElement, Blaze.View>):Dynamic;
	static function getView(?element:HTMLElement):Blaze.View;
	static function isTemplate(value:Dynamic):Bool;
	static function remove(renderedView:Blaze.View):Void;
	static function render(templateOrView:haxe.extern.EitherType<Template, Blaze.View>, parentNode:Node, ?nextNode:Node, ?parentView:Blaze.View):Blaze.View;
	static function renderWithData(templateOrView:haxe.extern.EitherType<Template, Blaze.View>, data:haxe.extern.EitherType<Dynamic, haxe.Constraints.Function>, parentNode:Node, ?nextNode:Node, ?parentView:Blaze.View):Blaze.View;
	static function toHTML(templateOrView:haxe.extern.EitherType<Template, Blaze.View>):String;
	static function toHTMLWithData(templateOrView:haxe.extern.EitherType<Template, Blaze.View>, data:haxe.extern.EitherType<Dynamic, haxe.Constraints.Function>):String;
}
