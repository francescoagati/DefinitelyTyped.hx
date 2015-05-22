typedef IStatusBarViewStatic = {
	function content():Dynamic;
	function new(args:haxe.extern.Rest<Dynamic>):IStatusBarView;
};
typedef IStatusBarView = {
	>View,
	function initialize():Dynamic;
	function attach():Dynamic;
	function destroy():Dynamic;
	function appendLeft(view:View):Dynamic;
	function prependLeft(view:View):Dynamic;
	function appendRight(view:View):Dynamic;
	function prependRight(view:View):Dynamic;
	function getActiveBuffer():TextBuffer.ITextBuffer;
	function getActiveItem():Dynamic;
	function storeActiveBuffer():TextBuffer.ITextBuffer;
	function subscribeToBuffer(event:String, callback:haxe.Constraints.Function):Dynamic;
	function subscribeAllToBuffer():Array<Dynamic>;
	function unsubscribeAllFromBuffer():Array<Dynamic>;
};
