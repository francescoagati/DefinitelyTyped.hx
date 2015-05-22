typedef JQuery = {
	var cycle : JQueryCycle2.Cycle2;
	@:overload(function(methodName:Cycle-before, callback:JQueryEventObject -> JQueryCycle2.OptionsWithState -> Element -> Element -> Bool -> Void):JQuery { })
	@:overload(function(methodName:Cycle-bootstrap, callback:JQueryEventObject -> JQueryCycle2.OptionsWithState -> JQueryCycle2.API -> Void):JQuery { })
	@:overload(function(methodName:Cycle-destroyed, callback:JQueryEventObject -> JQueryCycle2.OptionsWithState -> Void):JQuery { })
	@:overload(function(methodName:Cycle-finished, callback:JQueryEventObject -> JQueryCycle2.OptionsWithState -> Void):JQuery { })
	@:overload(function(methodName:Cycle-initialized, callback:JQueryEventObject -> JQueryCycle2.OptionsWithState -> Void):JQuery { })
	@:overload(function(methodName:Cycle-next, callback:JQueryEventObject -> JQueryCycle2.OptionsWithState -> Void):JQuery { })
	@:overload(function(methodName:Cycle-pager-activated, callback:JQueryEventObject -> JQueryCycle2.OptionsWithState -> Void):JQuery { })
	@:overload(function(methodName:Cycle-paused, callback:JQueryEventObject -> JQueryCycle2.OptionsWithState -> Void):JQuery { })
	@:overload(function(methodName:Cycle-post-initialize, callback:JQueryEventObject -> JQueryCycle2.OptionsWithState -> Void):JQuery { })
	@:overload(function(methodName:Cycle-pre-initialize, callback:JQueryEventObject -> JQueryCycle2.OptionsWithState -> Void):JQuery { })
	@:overload(function(methodName:Cycle-prev, callback:JQueryEventObject -> JQueryCycle2.OptionsWithState -> Void):JQuery { })
	@:overload(function(methodName:Cycle-resumed, callback:JQueryEventObject -> JQueryCycle2.OptionsWithState -> Void):JQuery { })
	@:overload(function(methodName:Cycle-slide-added, callback:JQueryEventObject -> JQuery -> Void):JQuery { })
	@:overload(function(methodName:Cycle-slide-removed, callback:JQueryEventObject -> Float -> Element -> Void):JQuery { })
	@:overload(function(methodName:Cycle-stopped, callback:JQueryEventObject -> JQueryCycle2.OptionsWithState -> Void):JQuery { })
	@:overload(function(methodName:Cycle-transition-stopped, callback:JQueryEventObject -> JQueryCycle2.OptionsWithState -> Void):JQuery { })
	@:overload(function(methodName:Cycle-update-view, callback:JQueryEventObject -> JQueryCycle2.OptionsWithState -> JQueryCycle2.OptionsWithState -> Element -> Void):JQuery { })
	function on(methodName:Cycle-after, callback:JQueryEventObject -> JQueryCycle2.OptionsWithState -> Element -> Element -> Bool -> Void):JQuery;
};
