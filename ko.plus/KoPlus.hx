typedef Command = {
	var isRunning : KnockoutObservable<Bool>;
	var canExecute : KnockoutComputed<Bool>;
	var failed : KnockoutObservable<Bool>;
	var completed : KnockoutObservable<Bool>;
	var done : Dynamic -> Void -> Command;
	var fail : String -> Void -> Command;
	var always : Callback -> Command;
	var then : Callback -> Callback -> Command;
};
typedef CommandOptions = {
	var action : Callback;
	@:optional
	var canExecute : Void -> Bool;
	@:optional
	var context : Dynamic;
};
typedef EditableStatic = {
	>KnockoutObservableStatic,
	function makeEditable(target:Dynamic):Void;
};
typedef EditableArrayStatic = {
	>KnockoutObservableArrayStatic,
	function makeEditable(target:Dynamic):Void;
};
typedef EditableFunctions = {
	var isEditing : KnockoutObservable<Bool>;
	function beginEdit():Void;
	function endEdit():Void;
	function cancelEdit():Void;
	function rollback():Void;
};
typedef Editable<T> = {
	>KnockoutObservable<T>,
	>EditableFunctions,
};
typedef EditableArray<T> = {
	>KnockoutObservableArray<T>,
	>EditableFunctions,
};
