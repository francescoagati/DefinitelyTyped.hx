typedef SlickGridAutoTooltipsOption = {
	>PluginOptions,
	@:optional
	var enableForCells : Bool;
	@:optional
	var enableForHeaderCells : Bool;
	@:optional
	var maxToolTipLength : Float;
};
extern class AutoTooltips extends Plugin<Slick.SlickData> {
	function new(?option:SlickGridAutoTooltipsOption):Void;
}
