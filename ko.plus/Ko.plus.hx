typedef KnockoutStatic = {
	var command : haxe.extern.EitherType<KoPlus.Callback, KoPlus.CommandOptions> -> KoPlus.Command;
	var editable : KoPlus.EditableStatic;
	var editableArray : KoPlus.EditableArrayStatic;
};
typedef KnockoutObservableArray<T> = {
	var sortKey : KnockoutObservable<String>;
	var sortDescending : KnockoutObservable<Bool>;
	var setSourceKey : String -> Void;
};
typedef KnockoutBindingHandlers = {
	var loadingWhen : KnockoutBindingHandler;
	var command : KnockoutBindingHandler;
	var sortBy : KnockoutBindingHandler;
};
