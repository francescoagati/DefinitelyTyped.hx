typedef JQueryMaskedInputOptions = {
	@:optional
	var mask : String;
	@:optional
	var alias : String;
	@:optional
	var placeholder : String;
	@:optional
	var repeat : Float;
	@:optional
	var greedy : Bool;
	@:optional
	var skipOptionalPartCharacter : String;
	@:optional
	var clearIncomplete : Bool;
	@:optional
	var clearMaskOnLostFocus : Bool;
	@:optional
	var autoUnmask : Bool;
	@:optional
	var showMaskOnFocus : Bool;
	@:optional
	var showMaskOnHover : Bool;
	@:optional
	var showToolTip : Bool;
	@:optional
	var isComplete : Dynamic -> Dynamic -> { };
	@:optional
	var numeric : Bool;
	@:optional
	var radixPoint : String;
	@:optional
	var rightAlignNumerics : Bool;
	@:optional
	var oncomplete : ?Dynamic -> Void;
	@:optional
	var onincomplete : Void -> Void;
	@:optional
	var oncleared : Void -> Void;
	@:optional
	var onUnMask : Dynamic -> Dynamic -> Void;
	@:optional
	var onBeforeMask : Dynamic -> Void;
	@:optional
	var onKeyValidation : Dynamic -> Void;
	@:optional
	var onBeforePaste : Dynamic -> Void;
};
typedef MaskedInputStatic = {
	var defaults : MaskedInputDefaults;
	var isValid : String -> MaskedInputStaticDefaults -> Bool;
	var format : String -> MaskedInputStaticDefaults -> Bool;
};
typedef MaskedInputStaticDefaults = {
	var alias : String;
};
typedef MaskedInputDefaults = {
	var aliases : Dynamic;
	var definitions : Dynamic;
};
typedef JQueryStatic = {
	var inputmask : MaskedInputStatic;
};
typedef JQuery = {
	function inputmask(mask:String, ?options:JQueryMaskedInputOptions):JQuery;
};
