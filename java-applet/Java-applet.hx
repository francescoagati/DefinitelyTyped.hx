@:enum abstract JavaAppletStatus(Int) {
	var Loading = 1;
	var Ready = 2;
	var Error = 3;
}
typedef JavaApplet = {
	>HTMLAppletElement,
	@:optional
	var onError : haxe.Constraints.Function;
	@:optional
	var onLoad : haxe.Constraints.Function;
	@:optional
	var onStop : haxe.Constraints.Function;
	@:optional
	var status : JavaAppletStatus;
};
