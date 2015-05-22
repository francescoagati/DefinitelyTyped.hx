typedef KnockoutSubscribableFunctions<T> = {
	function notifySubscribers(?valueToWrite:T, ?event:String):Void;
};
typedef KnockoutComputedFunctions<T> = { };
typedef KnockoutObservableFunctions<T> = {
	function equalityComparer(a:Dynamic, b:Dynamic):Bool;
};
typedef KnockoutObservableArrayFunctions<T> = {
	function indexOf(searchElement:T, ?fromIndex:Float):Float;
	function slice(start:Float, ?end:Float):Array<T>;
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<T>):Array<T> { })
	function splice(start:Float):Array<T>;
	function pop():T;
	function push(items:haxe.extern.Rest<T>):Void;
	function shift():T;
	function unshift(items:haxe.extern.Rest<T>):Float;
	function reverse():Array<T>;
	@:overload(function(compareFunction:T -> T -> Float):Void { })
	function sort():Void;
	function replace(oldItem:T, newItem:T):Void;
	@:overload(function(removeFunction:T -> Bool):Array<T> { })
	function remove(item:T):Array<T>;
	@:overload(function():Array<T> { })
	function removeAll(items:Array<T>):Array<T>;
	@:overload(function(destroyFunction:T -> Bool):Void { })
	function destroy(item:T):Void;
	@:overload(function():Void { })
	function destroyAll(items:Array<T>):Void;
};
typedef KnockoutSubscribableStatic = {
	var fn : KnockoutSubscribableFunctions<Dynamic>;
	function new<T>():KnockoutSubscribable<T>;
};
typedef KnockoutSubscription = {
	function dispose():Void;
};
typedef KnockoutSubscribable<T> = {
	>KnockoutSubscribableFunctions<T>,
	@:overload(function<TEvent>(callback:TEvent -> Void, target:Dynamic, event:String):KnockoutSubscription { })
	function subscribe(callback:T -> Void, ?target:Dynamic, ?event:String):KnockoutSubscription;
	function extend(requestedExtenders:{ }):KnockoutSubscribable<T>;
	function getSubscriptionsCount():Float;
};
typedef KnockoutComputedStatic = {
	var fn : KnockoutComputedFunctions<Dynamic>;
};
typedef KnockoutComputed<T> = {
	>KnockoutObservable<T>,
	>KnockoutComputedFunctions<T>,
	var fn : KnockoutComputedFunctions<Dynamic>;
	function dispose():Void;
	function isActive():Bool;
	function getDependenciesCount():Float;
	function extend(requestedExtenders:{ }):KnockoutComputed<T>;
};
typedef KnockoutObservableArrayStatic = {
	var fn : KnockoutObservableArrayFunctions<Dynamic>;
};
typedef KnockoutObservableArray<T> = {
	>KnockoutObservable<Array<T>>,
	>KnockoutObservableArrayFunctions<T>,
	function extend(requestedExtenders:{ }):KnockoutObservableArray<T>;
};
typedef KnockoutObservableStatic = {
	var fn : KnockoutObservableFunctions<Dynamic>;
};
typedef KnockoutObservable<T> = {
	>KnockoutSubscribable<T>,
	>KnockoutObservableFunctions<T>,
	function peek():T;
	@:optional
	var valueHasMutated : { };
	@:optional
	var valueWillMutate : { };
	function extend(requestedExtenders:{ }):KnockoutObservable<T>;
};
typedef KnockoutComputedDefine<T> = {
	function read():T;
	@:optional
	function write(value:T):Void;
	@:optional
	var disposeWhenNodeIsRemoved : Node;
	@:optional
	function disposeWhen():Bool;
	@:optional
	var owner : Dynamic;
	@:optional
	var deferEvaluation : Bool;
	@:optional
	var pure : Bool;
};
typedef KnockoutBindingContext = {
	var $parent : Dynamic;
	var $parents : Array<Dynamic>;
	var $root : Dynamic;
	var $data : Dynamic;
	var $rawData : haxe.extern.EitherType<Dynamic, KnockoutObservable<Dynamic>>;
	@:optional
	var $index : KnockoutObservable<Float>;
	@:optional
	var $parentContext : KnockoutBindingContext;
	var $component : Dynamic;
	var $componentTemplateNodes : Array<Node>;
	function extend(properties:Dynamic):Dynamic;
	function createChildContext(dataItemOrAccessor:Dynamic, ?dataItemAlias:Dynamic, ?extendCallback:haxe.Constraints.Function):Dynamic;
};
typedef KnockoutAllBindingsAccessor = {
	function get(name:String):Dynamic;
	function has(name:String):Bool;
};
typedef KnockoutBindingHandler = {
	@:optional
	var init : Dynamic -> Void -> Dynamic -> ?KnockoutAllBindingsAccessor -> ?Dynamic -> ?KnockoutBindingContext -> haxe.extern.EitherType<Void, { var controlsDescendantBindings : Bool; }>;
	@:optional
	var update : Dynamic -> Void -> Dynamic -> ?KnockoutAllBindingsAccessor -> ?Dynamic -> ?KnockoutBindingContext -> Void;
	@:optional
	var options : Dynamic;
	@:optional
	var preprocess : String -> String -> ?String -> String -> Void -> String;
};
typedef KnockoutBindingHandlers = {
	var visible : KnockoutBindingHandler;
	var text : KnockoutBindingHandler;
	var html : KnockoutBindingHandler;
	var css : KnockoutBindingHandler;
	var style : KnockoutBindingHandler;
	var attr : KnockoutBindingHandler;
	var foreach : KnockoutBindingHandler;
	var if : KnockoutBindingHandler;
	var ifnot : KnockoutBindingHandler;
	var with : KnockoutBindingHandler;
	var click : KnockoutBindingHandler;
	var event : KnockoutBindingHandler;
	var submit : KnockoutBindingHandler;
	var enable : KnockoutBindingHandler;
	var disable : KnockoutBindingHandler;
	var value : KnockoutBindingHandler;
	var textInput : KnockoutBindingHandler;
	var hasfocus : KnockoutBindingHandler;
	var checked : KnockoutBindingHandler;
	var options : KnockoutBindingHandler;
	var selectedOptions : KnockoutBindingHandler;
	var uniqueName : KnockoutBindingHandler;
	var template : KnockoutBindingHandler;
	var component : KnockoutBindingHandler;
};
typedef KnockoutMemoization = {
	function memoize(callback:Void -> String):String;
	function unmemoize(memoId:String, callbackParams:Array<Dynamic>):Bool;
	function unmemoizeDomNodeAndDescendants(domNode:Dynamic, extraCallbackParamsArray:Array<Dynamic>):Bool;
	function parseMemoText(memoText:String):String;
};
typedef KnockoutVirtualElement = { };
typedef KnockoutVirtualElements = {
	var allowedBindings : { };
	function emptyNode(node:KnockoutVirtualElement):Void;
	function firstChild(node:KnockoutVirtualElement):KnockoutVirtualElement;
	function insertAfter(container:KnockoutVirtualElement, nodeToInsert:Node, insertAfter:Node):Void;
	function nextSibling(node:KnockoutVirtualElement):Node;
	function prepend(node:KnockoutVirtualElement, toInsert:Node):Void;
	function setDomNodeChildren(node:KnockoutVirtualElement, newChildren:{ var length : Float; }):Void;
	function childNodes(node:KnockoutVirtualElement):Array<Node>;
};
typedef KnockoutExtenders = {
	function throttle(target:Dynamic, timeout:Float):KnockoutComputed<Dynamic>;
	function notify(target:Dynamic, notifyWhen:String):Dynamic;
	@:overload(function(target:Dynamic, options:{ var timeout : Float; @:optional
	var method : String; }):Dynamic { })
	function rateLimit(target:Dynamic, timeout:Float):Dynamic;
	function trackArrayChanges(target:Dynamic):Dynamic;
};
typedef KnockoutUtils = {
	function simpleHtmlParse(html:String):Array<Dynamic>;
	function jQueryHtmlParse(html:String):Array<Dynamic>;
	function parseHtmlFragment(html:String):Array<Dynamic>;
	@:overload(function(node:Element, html:Void -> String):Void { })
	function setHtml(node:Element, html:String):Void;
	var domData : { function get(node:Element, key:String):Dynamic; function set(node:Element, key:String, value:Dynamic):Void; function getAll(node:Element, createIfNotFound:Bool):Dynamic; function clear(node:Element):Bool; };
	var domNodeDisposal : { function addDisposeCallback(node:Element, callback:haxe.Constraints.Function):Void; function removeDisposeCallback(node:Element, callback:haxe.Constraints.Function):Void; function cleanNode(node:Node):Element; function removeNode(node:Node):Void; };
	var fieldsIncludedWithJsonPost : Array<Dynamic>;
	function compareArrays<T>(a:Array<T>, b:Array<T>):Array<KnockoutArrayChange<T>>;
	function arrayForEach<T>(array:Array<T>, action:T -> Void):Void;
	function arrayIndexOf<T>(array:Array<T>, item:T):Float;
	function arrayFirst<T>(array:Array<T>, predicate:T -> Bool, ?predicateOwner:Dynamic):T;
	function arrayRemoveItem(array:Array<Dynamic>, itemToRemove:Dynamic):Void;
	function arrayGetDistinctValues<T>(array:Array<T>):Array<T>;
	function arrayMap<T, U>(array:Array<T>, mapping:T -> U):Array<U>;
	function arrayFilter<T>(array:Array<T>, predicate:T -> Bool):Array<T>;
	@:overload(function<T>(array:KnockoutObservableArray<T>, valuesToPush:Array<T>):Array<T> { })
	function arrayPushAll<T>(array:Array<T>, valuesToPush:Array<T>):Array<T>;
	function extend(target:Dynamic, source:Dynamic):Dynamic;
	function moveCleanedNodesToContainerElement(nodes:Array<Dynamic>):HTMLElement;
	function cloneNodes(nodesArray:Array<Dynamic>, shouldCleanNodes:Bool):Array<Dynamic>;
	function setDomNodeChildren(domNode:Dynamic, childNodes:Array<Dynamic>):Void;
	function replaceDomNodes(nodeToReplaceOrNodeArray:Dynamic, newNodesArray:Array<Dynamic>):Void;
	function setOptionNodeSelectionState(optionNode:Dynamic, isSelected:Bool):Void;
	function stringTrim(str:String):String;
	function stringTokenize(str:String, delimiter:String):Array<String>;
	function stringStartsWith(str:String, startsWith:String):Bool;
	function domNodeIsContainedBy(node:Dynamic, containedByNode:Dynamic):Bool;
	function domNodeIsAttachedToDocument(node:Dynamic):Bool;
	function tagNameLower(element:Dynamic):String;
	function registerEventHandler(element:Dynamic, eventType:Dynamic, handler:haxe.Constraints.Function):Void;
	function triggerEvent(element:Dynamic, eventType:Dynamic):Void;
	function unwrapObservable<T>(value:haxe.extern.EitherType<KnockoutObservable<T>, T>):T;
	function peekObservable<T>(value:KnockoutObservable<T>):T;
	function toggleDomNodeCssClass(node:Dynamic, className:String, shouldHaveClass:Bool):Void;
	function setElementName(element:Dynamic, name:String):Void;
	function forceRefresh(node:Dynamic):Void;
	function ensureSelectElementIsRenderedCorrectly(selectElement:Dynamic):Void;
	function range(min:Dynamic, max:Dynamic):Dynamic;
	function makeArray(arrayLikeObject:Dynamic):Array<Dynamic>;
	function getFormFields(form:Dynamic, fieldName:String):Array<Dynamic>;
	function parseJson(jsonString:String):Dynamic;
	function stringifyJson(data:Dynamic, ?replacer:haxe.Constraints.Function, ?space:String):String;
	function postJson(urlOrForm:Dynamic, data:Dynamic, options:Dynamic):Void;
	var ieVersion : Float;
	var isIe6 : Bool;
	var isIe7 : Bool;
};
typedef KnockoutArrayChange<T> = {
	var status : String;
	var value : T;
	var index : Float;
	@:optional
	var moved : Float;
};
typedef KnockoutTemplateSourcesDomElement = {
	@:overload(function(value:Dynamic):Void { })
	function text():Dynamic;
	@:overload(function(key:String, value:Dynamic):Dynamic { })
	function data(key:String):Dynamic;
};
typedef KnockoutTemplateAnonymous = {
	>KnockoutTemplateSourcesDomElement,
	@:overload(function(value:Dynamic):Void { })
	function nodes():Dynamic;
};
typedef KnockoutTemplateSources = {
	var domElement : { var prototype : KnockoutTemplateSourcesDomElement; function new(element:Element):KnockoutTemplateSourcesDomElement; };
	var anonymousTemplate : { var prototype : KnockoutTemplateAnonymous; function new(element:Element):KnockoutTemplateAnonymous; };
};
typedef KnockoutNativeTemplateEngine = {
	function renderTemplateSource(templateSource:Dynamic, ?bindingContext:KnockoutBindingContext, ?options:Dynamic):Array<Dynamic>;
};
typedef KnockoutTemplateEngine = {
	>KnockoutNativeTemplateEngine,
	function createJavaScriptEvaluatorBlock(script:String):String;
	function makeTemplateSource(template:Dynamic, ?templateDocument:Document):Dynamic;
	function renderTemplate(template:Dynamic, bindingContext:KnockoutBindingContext, options:Dynamic, templateDocument:Document):Dynamic;
	function isTemplateRewritten(template:Dynamic, templateDocument:Document):Bool;
	function rewriteTemplate(template:Dynamic, rewriterCallback:haxe.Constraints.Function, templateDocument:Document):Void;
};
typedef KnockoutStatic = {
	var utils : KnockoutUtils;
	var memoization : KnockoutMemoization;
	var bindingHandlers : KnockoutBindingHandlers;
	function getBindingHandler(handler:String):KnockoutBindingHandler;
	var virtualElements : KnockoutVirtualElements;
	var extenders : KnockoutExtenders;
	function applyBindings(?viewModelOrBindingContext:Dynamic, ?rootNode:Dynamic):Void;
	function applyBindingsToDescendants(viewModelOrBindingContext:Dynamic, rootNode:Dynamic):Void;
	@:overload(function(node:Node, bindings:{ }, bindingContext:KnockoutBindingContext):Void { })
	@:overload(function(node:Node, bindings:KnockoutBindingContext -> Node -> { }, viewModel:Dynamic):Void { })
	@:overload(function(node:Node, bindings:{ }, viewModel:Dynamic):Void { })
	function applyBindingAccessorsToNode(node:Node, bindings:KnockoutBindingContext -> Node -> { }, bindingContext:KnockoutBindingContext):Void;
	function applyBindingsToNode(node:Node, bindings:Dynamic, ?viewModelOrBindingContext:Dynamic):Dynamic;
	var subscribable : KnockoutSubscribableStatic;
	var observable : KnockoutObservableStatic;
	var computed : KnockoutComputedStatic;
	@:overload(function<T>(options:KnockoutComputedDefine<T>, ?context:Dynamic):KnockoutComputed<T> { })
	function pureComputed<T>(evaluatorFunction:Void -> T, ?context:Dynamic):KnockoutComputed<T>;
	var observableArray : KnockoutObservableArrayStatic;
	function contextFor(node:Dynamic):Dynamic;
	function isSubscribable(instance:Dynamic):Bool;
	function toJSON(viewModel:Dynamic, ?replacer:haxe.Constraints.Function, ?space:Dynamic):String;
	function toJS(viewModel:Dynamic):Dynamic;
	function isObservable(instance:Dynamic):Bool;
	function isWriteableObservable(instance:Dynamic):Bool;
	function isComputed(instance:Dynamic):Bool;
	function dataFor(node:Dynamic):Dynamic;
	function removeNode(node:Element):Void;
	function cleanNode(node:Element):Element;
	@:overload(function(template:String, viewModel:Dynamic, ?options:Dynamic, ?target:Dynamic, ?renderMode:Dynamic):Dynamic { })
	@:overload(function(template:haxe.Constraints.Function, dataOrBindingContext:KnockoutBindingContext, options:Dynamic, targetNodeOrNodeArray:Node, renderMode:String):Dynamic { })
	@:overload(function(template:Dynamic, dataOrBindingContext:KnockoutBindingContext, options:Dynamic, targetNodeOrNodeArray:Node, renderMode:String):Dynamic { })
	@:overload(function(template:haxe.Constraints.Function, dataOrBindingContext:Dynamic, options:Dynamic, targetNodeOrNodeArray:Node, renderMode:String):Dynamic { })
	@:overload(function(template:Dynamic, dataOrBindingContext:Dynamic, options:Dynamic, targetNodeOrNodeArray:Node, renderMode:String):Dynamic { })
	@:overload(function(template:haxe.Constraints.Function, dataOrBindingContext:KnockoutBindingContext, options:Dynamic, targetNodeOrNodeArray:Array<Node>, renderMode:String):Dynamic { })
	@:overload(function(template:Dynamic, dataOrBindingContext:KnockoutBindingContext, options:Dynamic, targetNodeOrNodeArray:Array<Node>, renderMode:String):Dynamic { })
	@:overload(function(template:haxe.Constraints.Function, dataOrBindingContext:Dynamic, options:Dynamic, targetNodeOrNodeArray:Array<Node>, renderMode:String):Dynamic { })
	@:overload(function(template:Dynamic, dataOrBindingContext:Dynamic, options:Dynamic, targetNodeOrNodeArray:Array<Node>, renderMode:String):Dynamic { })
	function renderTemplate(template:haxe.Constraints.Function, viewModel:Dynamic, ?options:Dynamic, ?target:Dynamic, ?renderMode:Dynamic):Dynamic;
	function unwrap<T>(value:haxe.extern.EitherType<KnockoutObservable<T>, T>):T;
	var computedContext : KnockoutComputedContext;
	var templateSources : KnockoutTemplateSources;
	var templateEngine : { var prototype : KnockoutTemplateEngine; function new():KnockoutTemplateEngine; };
	var templateRewriting : { @:overload(function(template:String, templateEngine:KnockoutTemplateEngine, templateDocument:Document):Dynamic { })
	function ensureTemplateIsRewritten(template:Node, templateEngine:KnockoutTemplateEngine, templateDocument:Document):Dynamic; function memoizeBindingAttributeSyntax(htmlString:String, templateEngine:KnockoutTemplateEngine):Dynamic; function applyMemoizedBindingsToNextSibling(bindings:Dynamic, nodeName:String):String; };
	var nativeTemplateEngine : { var prototype : KnockoutNativeTemplateEngine; function new():KnockoutNativeTemplateEngine; var instance : KnockoutNativeTemplateEngine; };
	var jqueryTmplTemplateEngine : { var prototype : KnockoutTemplateEngine; function renderTemplateSource(templateSource:Dynamic, bindingContext:KnockoutBindingContext, options:Dynamic):Array<Node>; function createJavaScriptEvaluatorBlock(script:String):String; function addTemplate(templateName:String, templateMarkup:String):Void; };
	function setTemplateEngine(templateEngine:KnockoutNativeTemplateEngine):Void;
	@:overload(function(template:Dynamic, arrayOrObservableArray:Array<Dynamic>, options:Dynamic, targetNode:Node, parentBindingContext:KnockoutBindingContext):Dynamic { })
	@:overload(function(template:haxe.Constraints.Function, arrayOrObservableArray:KnockoutObservable<Dynamic>, options:Dynamic, targetNode:Node, parentBindingContext:KnockoutBindingContext):Dynamic { })
	@:overload(function(template:Dynamic, arrayOrObservableArray:KnockoutObservable<Dynamic>, options:Dynamic, targetNode:Node, parentBindingContext:KnockoutBindingContext):Dynamic { })
	function renderTemplateForEach(template:haxe.Constraints.Function, arrayOrObservableArray:Array<Dynamic>, options:Dynamic, targetNode:Node, parentBindingContext:KnockoutBindingContext):Dynamic;
	var expressionRewriting : { var bindingRewriteValidators : Dynamic; var parseObjectLiteral : { }; };
	var bindingProvider : { var instance : KnockoutBindingProvider; function new():KnockoutBindingProvider; };
	var selectExtensions : { function readValue(element:HTMLElement):Dynamic; function writeValue(element:HTMLElement, value:Dynamic):Void; };
	var components : KnockoutComponents;
};
typedef KnockoutBindingProvider = {
	function nodeHasBindings(node:Node):Bool;
	function getBindings(node:Node, bindingContext:KnockoutBindingContext):{ };
	@:optional
	function getBindingAccessors(node:Node, bindingContext:KnockoutBindingContext):{ };
};
typedef KnockoutComputedContext = {
	function getDependenciesCount():Float;
	var isInitial : Void -> Bool;
	var isSleeping : Bool;
};
