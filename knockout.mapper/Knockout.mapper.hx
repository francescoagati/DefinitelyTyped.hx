typedef KnockoutMapper = {
	function fromJS(value:Dynamic, ?options:Dynamic, ?target:Dynamic, ?wrap:Bool):Dynamic;
	function toJS(value:Dynamic, ?options:Dynamic):Dynamic;
};
typedef KnockoutStatic = {
	var mapper : KnockoutMapper;
};
