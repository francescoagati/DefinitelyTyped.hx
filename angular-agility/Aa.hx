typedef ILabelStrategies = { };
typedef IFieldGroupStrategies = { };
typedef IValMsgPlacementStrategies = { };
typedef IValidIconStrategy = {
	var validIcon : String;
	var invalidIcon : String;
	function getContainer(element:ng.IAugmentedJQueryStatic):Void;
};
typedef ISpinnerClickStrategies = { };
typedef IOnNavigateAwayStrategies = { };
typedef IValidationMessages = { };
typedef IGlobalSettings = { };
typedef IFormExtensionsProvider = {
	>ng.IServiceProvider,
	var defaultLabelStrategy : String;
	var defaultFieldGroupStrategy : String;
	var defaultValMsgPlacementStrategy : String;
	var validIconStrategy : IValidIconStrategy;
	var defaultSpinnerClickStrategy : String;
	var defaultNotifyTarget : String;
	var defaultOnNavigateAwayStrategy : String;
	var validationMessages : IValidationMessages;
	var valMsgForTemplate : String;
	var confirmResetStrategy : Void -> Bool;
	var globalSettings : IGlobalSettings;
	var labelStrategies : ILabelStrategies;
	var fieldGroupStrategies : IFieldGroupStrategies;
	var valMsgPlacementStrategies : IValMsgPlacementStrategies;
	var spinnerClickStrategies : ISpinnerClickStrategies;
	var onNavigateAwayStrategies : IOnNavigateAwayStrategies;
};
typedef INotifyPredicate = { };
typedef INotifyDefaults = {
	var success : INotifyPredicate;
	var info : INotifyPredicate;
	var warning : INotifyPredicate;
	var danger : INotifyPredicate;
	var error : INotifyPredicate;
};
typedef INotifyConfig = {
	var name : String;
	@:optional
	var template : String;
	@:optional
	var templateName : String;
	var options : INotifyOptions;
	var namedDefaults : INotifyDefaults;
};
typedef INotifyOptions = {
	@:optional
	var cssClasses : String;
	var messageType : String;
	var allowHtml : Bool;
	var message : String;
};
typedef INotifyConfigProvider = {
	>ng.IServiceProvider,
	var notifyConfigs : Dynamic;
	var defaultTargetContainerName : String;
	var defaultNotifyConfig : String;
	function addOrUpdateNotifyConfig(name:String, opts:INotifyConfig):Void;
	function optionsTransformer(options:INotifyOptions, $sce:ng.ISCEService):Void;
};
typedef IExternalFormValidationConfig = {
	var validations : Dynamic;
	@:optional
	var ignore : Dynamic;
	@:optional
	var globals : Dynamic;
	@:optional
	var resolve : Dynamic;
	@:optional
	var resolveFn : String -> String;
};
