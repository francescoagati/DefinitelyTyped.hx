typedef Element = {
	function expand(direction:String):effects.Expand;
	function expandHorizontal():effects.Expand;
	function expandVertical():effects.Expand;
	function fade(direction:String):effects.Fade;
	function fadeIn():effects.Fade;
	function fadeOut():effects.Fade;
	function flip(axis:String, face:JQuery, back:JQuery):effects.Flip;
	function flipHorizontal(face:JQuery, back:JQuery):effects.Flip;
	function flipVertical(face:JQuery, back:JQuery):effects.Flip;
	function pageturn(axis:String, face:JQuery, back:JQuery):effects.PageTurn;
	function pageturnHorizontal(face:JQuery, back:JQuery):effects.PageTurn;
	function pageturnVertical(face:JQuery, back:JQuery):effects.PageTurn;
	function slideIn(direction:String):effects.SlideIn;
	function slideInDown():effects.SlideIn;
	function slideInLeft():effects.SlideIn;
	function slideInRight():effects.SlideIn;
	function slideInUp():effects.SlideIn;
	function tile(direction:String, previous:JQuery):effects.Tile;
	function tileDown(previous:JQuery):effects.Tile;
	function tileLeft(previous:JQuery):effects.Tile;
	function tileRight(previous:JQuery):effects.Tile;
	function tileUp(previous:JQuery):effects.Tile;
	function transfer(target:JQuery):effects.Transfer;
	function zoom(direction:String):effects.Zoom;
	function zoomIn():effects.Zoom;
	function zoomOut():effects.Zoom;
};
typedef Effect = {
	function play():JQueryPromise<Dynamic>;
	function reverse():JQueryPromise<Dynamic>;
	function duration(value:Float):Effect;
	function add(effect:Effect):Effect;
	function stop():Effect;
};
typedef Expand = {
	>Effect,
	function duration(value:Float):Expand;
	function direction(value:String):Expand;
	function stop():Expand;
	function add(effect:Effect):Expand;
};
typedef Fade = {
	>Effect,
	function duration(value:Float):Fade;
	function direction(value:String):Fade;
	function stop():Fade;
	function add(effect:Effect):Fade;
	function startValue(value:Float):Fade;
	function endValue(value:Float):Fade;
};
typedef Flip = {
	>Effect,
	function duration(value:Float):Flip;
	function direction(value:String):Flip;
	function stop():Flip;
	function add(effect:Effect):Flip;
};
typedef PageTurn = {
	>Effect,
	function duration(value:Float):PageTurn;
	function direction(value:String):PageTurn;
	function stop():PageTurn;
	function add(effect:Effect):PageTurn;
};
typedef SlideIn = {
	>Effect,
	function duration(value:Float):SlideIn;
	function direction(value:String):SlideIn;
	function stop():SlideIn;
	function add(effect:Effect):SlideIn;
};
typedef Tile = {
	>Effect,
	function duration(value:Float):Tile;
	function direction(value:String):Tile;
	function stop():Tile;
	function add(effect:Effect):Tile;
};
typedef Transfer = {
	>Effect,
	function duration(value:Float):Transfer;
	function stop():Transfer;
	function add(effect:Effect):Transfer;
};
typedef Zoom = {
	>Effect,
	function duration(value:Float):Zoom;
	function direction(value:String):Zoom;
	function stop():Zoom;
	function add(effect:Effect):Zoom;
	function startValue(value:Float):Zoom;
	function endValue(value:Float):Zoom;
};
