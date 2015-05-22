@:enum abstract PrintOptionStates(Int) {
	var none = 0;
	var enabled = 1;
	var constrained = 2;
}
@:enum abstract PrintOptionType(Int) {
	var unknown = 0;
	var number = 1;
	var text = 2;
	var itemList = 3;
}
typedef IPrintOptionDetails = {
	var errorText : String;
	var optionId : String;
	var optionType : Windows.Graphics.Printing.OptionDetails.PrintOptionType;
	var state : Windows.Graphics.Printing.OptionDetails.PrintOptionStates;
	var value : Dynamic;
	function trySetValue(value:Dynamic):Bool;
};
typedef IPrintNumberOptionDetails = {
	>Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails,
	var maxValue : Float;
	var minValue : Float;
};
typedef IPrintTextOptionDetails = {
	>Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails,
	var maxCharacters : Float;
};
typedef IPrintItemListOptionDetails = {
	>Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails,
	var items : Windows.Foundation.Collections.IVectorView<Dynamic>;
};
extern class PrintCopiesOptionDetails {
	var errorText : String;
	var optionId : String;
	var optionType : Windows.Graphics.Printing.OptionDetails.PrintOptionType;
	var state : Windows.Graphics.Printing.OptionDetails.PrintOptionStates;
	var value : Dynamic;
	var maxValue : Float;
	var minValue : Float;
	function trySetValue(value:Dynamic):Bool;
}
extern class PrintMediaSizeOptionDetails {
	var errorText : String;
	var optionId : String;
	var optionType : Windows.Graphics.Printing.OptionDetails.PrintOptionType;
	var state : Windows.Graphics.Printing.OptionDetails.PrintOptionStates;
	var value : Dynamic;
	var items : Windows.Foundation.Collections.IVectorView<Dynamic>;
	function trySetValue(value:Dynamic):Bool;
}
extern class PrintMediaTypeOptionDetails {
	var errorText : String;
	var optionId : String;
	var optionType : Windows.Graphics.Printing.OptionDetails.PrintOptionType;
	var state : Windows.Graphics.Printing.OptionDetails.PrintOptionStates;
	var value : Dynamic;
	var items : Windows.Foundation.Collections.IVectorView<Dynamic>;
	function trySetValue(value:Dynamic):Bool;
}
extern class PrintOrientationOptionDetails {
	var errorText : String;
	var optionId : String;
	var optionType : Windows.Graphics.Printing.OptionDetails.PrintOptionType;
	var state : Windows.Graphics.Printing.OptionDetails.PrintOptionStates;
	var value : Dynamic;
	var items : Windows.Foundation.Collections.IVectorView<Dynamic>;
	function trySetValue(value:Dynamic):Bool;
}
extern class PrintQualityOptionDetails {
	var errorText : String;
	var optionId : String;
	var optionType : Windows.Graphics.Printing.OptionDetails.PrintOptionType;
	var state : Windows.Graphics.Printing.OptionDetails.PrintOptionStates;
	var value : Dynamic;
	var items : Windows.Foundation.Collections.IVectorView<Dynamic>;
	function trySetValue(value:Dynamic):Bool;
}
extern class PrintColorModeOptionDetails {
	var errorText : String;
	var optionId : String;
	var optionType : Windows.Graphics.Printing.OptionDetails.PrintOptionType;
	var state : Windows.Graphics.Printing.OptionDetails.PrintOptionStates;
	var value : Dynamic;
	var items : Windows.Foundation.Collections.IVectorView<Dynamic>;
	function trySetValue(value:Dynamic):Bool;
}
extern class PrintDuplexOptionDetails {
	var errorText : String;
	var optionId : String;
	var optionType : Windows.Graphics.Printing.OptionDetails.PrintOptionType;
	var state : Windows.Graphics.Printing.OptionDetails.PrintOptionStates;
	var value : Dynamic;
	var items : Windows.Foundation.Collections.IVectorView<Dynamic>;
	function trySetValue(value:Dynamic):Bool;
}
extern class PrintCollationOptionDetails {
	var errorText : String;
	var optionId : String;
	var optionType : Windows.Graphics.Printing.OptionDetails.PrintOptionType;
	var state : Windows.Graphics.Printing.OptionDetails.PrintOptionStates;
	var value : Dynamic;
	var items : Windows.Foundation.Collections.IVectorView<Dynamic>;
	function trySetValue(value:Dynamic):Bool;
}
extern class PrintStapleOptionDetails {
	var errorText : String;
	var optionId : String;
	var optionType : Windows.Graphics.Printing.OptionDetails.PrintOptionType;
	var state : Windows.Graphics.Printing.OptionDetails.PrintOptionStates;
	var value : Dynamic;
	var items : Windows.Foundation.Collections.IVectorView<Dynamic>;
	function trySetValue(value:Dynamic):Bool;
}
extern class PrintHolePunchOptionDetails {
	var errorText : String;
	var optionId : String;
	var optionType : Windows.Graphics.Printing.OptionDetails.PrintOptionType;
	var state : Windows.Graphics.Printing.OptionDetails.PrintOptionStates;
	var value : Dynamic;
	var items : Windows.Foundation.Collections.IVectorView<Dynamic>;
	function trySetValue(value:Dynamic):Bool;
}
extern class PrintBindingOptionDetails {
	var errorText : String;
	var optionId : String;
	var optionType : Windows.Graphics.Printing.OptionDetails.PrintOptionType;
	var state : Windows.Graphics.Printing.OptionDetails.PrintOptionStates;
	var value : Dynamic;
	var items : Windows.Foundation.Collections.IVectorView<Dynamic>;
	function trySetValue(value:Dynamic):Bool;
}
typedef IPrintCustomOptionDetails = {
	>Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails,
	var displayName : String;
};
typedef IPrintCustomTextOptionDetails = {
	>Windows.Graphics.Printing.OptionDetails.IPrintCustomOptionDetails,
	>Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails,
	var maxCharacters : Float;
};
extern class PrintCustomTextOptionDetails {
	var errorText : String;
	var optionId : String;
	var optionType : Windows.Graphics.Printing.OptionDetails.PrintOptionType;
	var state : Windows.Graphics.Printing.OptionDetails.PrintOptionStates;
	var value : Dynamic;
	var displayName : String;
	var maxCharacters : Float;
	function trySetValue(value:Dynamic):Bool;
}
typedef IPrintCustomItemDetails = {
	var itemDisplayName : String;
	var itemId : String;
};
extern class PrintCustomItemDetails {
	var itemDisplayName : String;
	var itemId : String;
}
typedef IPrintCustomItemListOptionDetails = {
	>Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails,
	>Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails,
	>Windows.Graphics.Printing.OptionDetails.IPrintCustomOptionDetails,
	function addItem(itemId:String, displayName:String):Void;
};
extern class PrintCustomItemListOptionDetails {
	var errorText : String;
	var optionId : String;
	var optionType : Windows.Graphics.Printing.OptionDetails.PrintOptionType;
	var state : Windows.Graphics.Printing.OptionDetails.PrintOptionStates;
	var value : Dynamic;
	var displayName : String;
	var items : Windows.Foundation.Collections.IVectorView<Dynamic>;
	function trySetValue(value:Dynamic):Bool;
	function addItem(itemId:String, displayName:String):Void;
}
typedef IPrintTaskOptionChangedEventArgs = {
	var optionId : Dynamic;
};
extern class PrintTaskOptionChangedEventArgs {
	var optionId : Dynamic;
}
typedef IPrintTaskOptionDetails = {
	var options : Windows.Foundation.Collections.IMapView<String, Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails>;
	function createItemListOption(optionId:String, displayName:String):Windows.Graphics.Printing.OptionDetails.PrintCustomItemListOptionDetails;
	function createTextOption(optionId:String, displayName:String):Windows.Graphics.Printing.OptionDetails.PrintCustomTextOptionDetails;
	var onoptionchanged : Dynamic;
	var onbeginvalidation : Dynamic;
};
extern class PrintTaskOptionDetails {
	var options : Windows.Foundation.Collections.IMapView<String, Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails>;
	var displayedOptions : Windows.Foundation.Collections.IVector<String>;
	function createItemListOption(optionId:String, displayName:String):Windows.Graphics.Printing.OptionDetails.PrintCustomItemListOptionDetails;
	function createTextOption(optionId:String, displayName:String):Windows.Graphics.Printing.OptionDetails.PrintCustomTextOptionDetails;
	var onoptionchanged : Dynamic;
	var onbeginvalidation : Dynamic;
	function getPageDescription(jobPageNumber:Float):Windows.Graphics.Printing.PrintPageDescription;
	static function getFromPrintTaskOptions(printTaskOptions:Windows.Graphics.Printing.PrintTaskOptions):Windows.Graphics.Printing.OptionDetails.PrintTaskOptionDetails;
}
typedef IPrintTaskOptionDetailsStatic = {
	function getFromPrintTaskOptions(printTaskOptions:Windows.Graphics.Printing.PrintTaskOptions):Windows.Graphics.Printing.OptionDetails.PrintTaskOptionDetails;
};
