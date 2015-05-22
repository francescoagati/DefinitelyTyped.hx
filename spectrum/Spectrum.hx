typedef Options = {
	@:optional
	var color : String;
	@:optional
	var flat : Bool;
	@:optional
	var showInput : Bool;
	@:optional
	var showInitial : Bool;
	@:optional
	var allowEmpty : Bool;
	@:optional
	var showAlpha : Bool;
	@:optional
	var disabled : Bool;
	@:optional
	var palette : Array<Array<String>>;
	@:optional
	var showPalette : Bool;
	@:optional
	var showPaletteOnly : Bool;
	@:optional
	var togglePaletteOnly : Bool;
	@:optional
	var togglePaletteMoreText : String;
	@:optional
	var togglePaletteLessText : String;
	@:optional
	var hideAfterPaletteSelect : Bool;
	@:optional
	var showSelectionPalette : Bool;
	@:optional
	var localStorageKey : String;
	@:optional
	var clickoutFiresChange : Bool;
	@:optional
	var cancelText : String;
	@:optional
	var chooseText : String;
	@:optional
	var containerClassName : String;
	@:optional
	var replacerClassName : String;
	@:optional
	var preferredFormat : String;
	@:optional
	var showButtons : Bool;
	@:optional
	var appendTo : Dynamic;
	@:optional
	var maxSelectionSize : Float;
	@:optional
	var selectionPalette : Array<String>;
	@:optional
	var change : TinycolorInstance -> Void;
	@:optional
	var move : TinycolorInstance -> Void;
	@:optional
	var show : TinycolorInstance -> Void;
	@:optional
	var hide : TinycolorInstance -> Void;
	@:optional
	var beforeShow : TinycolorInstance -> Void;
};
