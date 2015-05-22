typedef AnimationFrame = {
	function new():AnimationFrame;
	function request(callback:Void -> Void):Void;
};
extern class Animation-frameTopLevel {
	static var AnimationFrame : AnimationFrame;
}
