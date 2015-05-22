typedef ConnectionCosts = {
	var buffer : Int16Array;
	function put(forward_id:Float, backward_id:Float, cost:Float):Void;
	function get(forward_id:Float, backward_id:Float):Float;
	function loadConnectionCosts(connection_costs_buffer:Int16Array):Void;
};
typedef DynamicDictionaries = {
	var trie : doublearray.DoubleArray;
	var token_info_dictionary : TokenInfoDictionary;
	var connection_costs : ConnectionCosts;
	var unknown_dictionary : UnknownDictionary;
	function loadTrie(base_buffer:Int32Array, check_buffer:Int32Array):DynamicDictionaries;
};
typedef TokenInfoDictionary = {
	function buildDictionary(entries:Array<Array<Dynamic>>):{ };
	function put(left_id:Float, right_id:Float, word_cost:Float, surface_form:String, feature:String):Float;
	function addMapping(source:Float, target:Float):Void;
	function targetMapToBuffer():Uint8Array;
	function loadDictionary(array_buffer:Uint8Array):TokenInfoDictionary;
	function loadPosVector(array_buffer:Uint8Array):TokenInfoDictionary;
	function loadTargetMap(array_buffer:Uint8Array):TokenInfoDictionary;
	function getFeatures(token_info_id_str:String):String;
};
typedef UnknownDictionary = {
	>TokenInfoDictionary,
};
typedef ByteBuffer = {
	var buffer : Uint8Array;
	var position : Float;
	function size():Float;
	function reallocate():Void;
	function shrink():Uint8Array;
	function put(b:Float):Void;
	function get(index:Float):Float;
	function putShort(num:Float):Void;
	function getShort(index:Float):Float;
	function putInt(num:Float):Void;
	function getInt(index:Float):Float;
	function readInt():Float;
	function putString(str:String):Void;
	function getString(index:Float):String;
};
typedef DictionaryBuilder = {
	var tid_entries : Array<String>;
	var unk_entries : Array<String>;
	function addTokenInfoDictionary(text:String):DictionaryBuilder;
	function costMatrix(matrix_text:String):DictionaryBuilder;
	function charDef(char_text:String):DictionaryBuilder;
	function unkDef(text:String):DictionaryBuilder;
	function build():DynamicDictionaries;
	function buildTokenInfoDictionary():{ var trie : doublearray.DoubleArray; var token_info_dictionary : TokenInfoDictionary; };
	function buildUnknownDictionary():UnknownDictionary;
	function buildConnectionCosts():ConnectionCosts;
	function buildDoubleArray():doublearray.DoubleArray;
};
typedef Formatter<T> = {
	function formatEntry(word_id:Float, position:Float, type:String, features:Array<String>):T;
	function formatUnknownEntry(word_id:Float, position:Float, type:String, features:Array<String>):T;
};
typedef IpadicFormatter = {
	>Formatter<IpadicFeatures>,
};
typedef IpadicFeatures = {
	var word_id : Float;
	var word_type : String;
	var word_position : Float;
	var surface_form : String;
	var pos : String;
	var pos_detail_1 : String;
	var pos_detail_2 : String;
	var pos_detail_3 : String;
	var conjugated_type : String;
	var conjugated_form : String;
	var basic_form : String;
	@:optional
	var reading : String;
	@:optional
	var pronunciation : String;
};
typedef ViterbiBuilder = {
	var trie : doublearray.DoubleArray;
	var token_info_dictionary : TokenInfoDictionary;
	var unknown_dictionary : UnknownDictionary;
	function build(sentence_str:String):ViterbiLattice;
};
typedef ViterbiLattice = {
	function append(node:ViterbiNode):Void;
	function appendEos():Void;
};
typedef ViterbiNode = {
	var name : String;
	var cost : Float;
	var start_pos : Float;
	var length : Float;
	var left_id : Float;
	var right_id : Float;
	var prev : ViterbiNode;
	var surface_form : String;
	var shortest_cost : Float;
	var type : String;
};
typedef ViterbiSearcher = {
	var connection_costs : ConnectionCosts;
	function search(lattice:ViterbiLattice):Array<ViterbiNode>;
	function forward(lattice:ViterbiLattice):ViterbiLattice;
	function backward(lattice:ViterbiLattice):Array<ViterbiNode>;
};
typedef TokenizerStatic = {
	function splitByPunctuation(input:String):Array<String>;
};
typedef Tokenizer<T> = {
	var token_info_dictionary : TokenInfoDictionary;
	var unknown_dictionary : UnknownDictionary;
	var viterbi_builder : ViterbiBuilder;
	var viterbi_searcher : ViterbiSearcher;
	var formatter : Formatter<T>;
	function tokenize(text:String):Array<T>;
	function getLattice(text:String):ViterbiLattice;
};
typedef TokenizerBuilder<T> = {
	function build(callback:Error -> Tokenizer<T> -> Void):Void;
};
typedef TokenizerBuilderOption = {
	@:optional
	var dicPath : String;
};
extern class KuromojiTopLevel {
	static function builder(option:TokenizerBuilderOption):TokenizerBuilder<IpadicFeatures>;
	static function dictionaryBuilder():DictionaryBuilder;
}
extern class KuromojiTopLevel {
	static function builder(option:TokenizerBuilderOption):TokenizerBuilder<IpadicFeatures>;
	static function dictionaryBuilder():DictionaryBuilder;
}
