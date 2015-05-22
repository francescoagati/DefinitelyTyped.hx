typedef KnockoutViewModelStatic = {
	function toModel(viewmodel:Dynamic):Dynamic;
	function fromModel(model:Dynamic, ?options:Dynamic):Dynamic;
	function updateFromModel(viewmodel:Dynamic, model:Dynamic):Dynamic;
	var logging : Bool;
};
typedef KnockoutStatic = {
	var viewmodel : KnockoutViewModelStatic;
};
