typedef IAnimationMethodResponse = {
	function execute():Promise<Dynamic>;
};
extern class WinJS.UI.AnimationTopLevel {
	static function createAddToListAnimation(added:Dynamic, affected:Dynamic):IAnimationMethodResponse;
	static function createAddToSearchListAnimation(added:Dynamic, affected:Dynamic):IAnimationMethodResponse;
	static function createCollapseAnimation(hidden:Dynamic, affected:Dynamic):IAnimationMethodResponse;
	static function createDeleteFromListAnimation(deleted:Dynamic, remaining:Dynamic):IAnimationMethodResponse;
	static function createDeleteFromSearchListAnimation(deleted:Dynamic, remaining:Dynamic):IAnimationMethodResponse;
	static function createExpandAnimation(revealed:Dynamic, affected:Dynamic):IAnimationMethodResponse;
	static function createPeekAnimation(element:Dynamic):IAnimationMethodResponse;
	static function createRepositionAnimation(element:Dynamic):IAnimationMethodResponse;
	static function crossFade(incoming:Dynamic, outgoing:Dynamic):Promise<Dynamic>;
	static function dragBetweenEnter(target:Dynamic, ?offset:Dynamic):Promise<Dynamic>;
	static function dragBetweenLeave(target:Dynamic):Promise<Dynamic>;
	static function dragSourceEnd(dragSource:Dynamic, ?offset:Dynamic, ?affected:Dynamic):Promise<Dynamic>;
	static function dragSourceStart(dragSource:Dynamic, ?affected:Dynamic):Promise<Dynamic>;
	static function enterContent(incoming:Dynamic, ?offset:Dynamic, ?options:Dynamic):Promise<Dynamic>;
	static function enterPage(element:Dynamic, ?offset:Dynamic):Promise<Dynamic>;
	static function exitContent(outgoing:Dynamic, ?offset:Dynamic):Promise<Dynamic>;
	static function exitPage(outgoing:Dynamic, ?offset:Dynamic):Promise<Dynamic>;
	static function fadeIn(shown:Dynamic):Promise<Dynamic>;
	static function fadeOut(hidden:Dynamic):Promise<Dynamic>;
	static function hideEdgeUI(element:Dynamic, ?offset:Dynamic, ?options:Dynamic):Promise<Dynamic>;
	static function hidePanel(element:Dynamic, ?offset:Dynamic):Promise<Dynamic>;
	static function hidePopup(element:Dynamic):Promise<Dynamic>;
	static function pointerDown(element:Dynamic):Promise<Dynamic>;
	static function pointerUp(element:Dynamic):Promise<Dynamic>;
	static function showEdgeUI(element:Dynamic, ?offset:Dynamic, ?options:Dynamic):Promise<Dynamic>;
	static function showPanel(element:Dynamic, ?offset:Dynamic):Promise<Dynamic>;
	static function showPopup(element:Dynamic, ?offset:Dynamic):Promise<Dynamic>;
	static function swipeDeselect(deselected:Dynamic, selection:Dynamic):Promise<Dynamic>;
	static function swipeReveal(target:Dynamic, ?offset:Dynamic):Promise<Dynamic>;
	static function swipeSelect(selected:Dynamic, selection:Dynamic):Promise<Dynamic>;
	static function updateBadge(incoming:Dynamic, ?offset:Dynamic):Promise<Dynamic>;
	static function slideUp(incoming:Dynamic):Promise<Dynamic>;
	static function slideDown(incoming:Dynamic):Promise<Dynamic>;
	static function slideLeftIn(page:Dynamic, first:Dynamic, second:Dynamic, third:Dynamic):Promise<Dynamic>;
	static function slideLeftOut(page:Dynamic, first:Dynamic, second:Dynamic, third:Dynamic):Promise<Dynamic>;
	static function slideRightIn(page:Dynamic, first:Dynamic, second:Dynamic, third:Dynamic):Promise<Dynamic>;
	static function slideRightOut(page:Dynamic, first:Dynamic, second:Dynamic, third:Dynamic):Promise<Dynamic>;
	static function continuumForwardIn(page:Dynamic, itemRoot:Dynamic, itemContent:Dynamic):Promise<Dynamic>;
	static function continuumForwardOut(page:Dynamic, item:Dynamic):Promise<Dynamic>;
	static function continuumBackwardIn(page:Dynamic, item:Dynamic):Promise<Dynamic>;
	static function continuumBackwardOut(page:Dynamic):Promise<Dynamic>;
	static function turnstileForwardIn(incoming:Dynamic):Promise<Dynamic>;
	static function turnstileForwardOut(outgoing:Dynamic):Promise<Dynamic>;
	static function turnstileBackwardIn(incoming:Dynamic):Promise<Dynamic>;
	static function turnstileBackwardOut(outgoing:Dynamic):Promise<Dynamic>;
}
