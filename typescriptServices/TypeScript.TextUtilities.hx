typedef ICharacterSequence = {
	function charCodeAt(index:Float):Float;
	var length : Float;
};
extern class TypeScript.TextUtilitiesTopLevel {
	static function parseLineStarts(text:ICharacterSequence):Array<Float>;
	static function getLengthOfLineBreakSlow(text:ICharacterSequence, index:Float, c:Float):Float;
	static function getLengthOfLineBreak(text:ICharacterSequence, index:Float):Float;
	static function isAnyLineBreakCharacter(c:Float):Bool;
}
