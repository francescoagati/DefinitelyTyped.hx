extern class StackMapper {
	function map(stack:Array<Callsite>):Array<Callsite>;
}
typedef Callsite = {
	var filename : String;
	var line : Float;
	var column : Float;
};
