typedef GetFrameDetails = {
	var processId : Float;
	var tabId : Float;
	var frameId : Float;
};
typedef GetFrameResultDetails = {
	var url : String;
	var errorOccurred : Bool;
	var parentFrameId : Float;
};
typedef GetAllFrameDetails = {
	var tabId : Float;
};
typedef GetAllFrameResultDetails = {
	>GetFrameResultDetails,
	var processId : Float;
	var frameId : Float;
};
typedef CallbackBasicDetails = {
	var tabId : Float;
	var timeStamp : Float;
};
typedef CallbackDetails = {
	>CallbackBasicDetails,
	var processId : Float;
	var url : String;
	var frameId : Float;
};
typedef CallbackTransitionDetails = {
	>CallbackDetails,
	var transitionType : String;
	var transitionQualifiers : Array<String>;
};
typedef ReferenceFragmentUpdatedDetails = {
	>CallbackTransitionDetails,
};
typedef CompletedDetails = {
	>CallbackDetails,
};
typedef HistoryStateUpdatedDetails = {
	>CallbackTransitionDetails,
};
typedef CreatedNavigationTargetDetails = {
	>CallbackBasicDetails,
	var url : String;
	var sourceTabId : Float;
	var sourceProcessId : Float;
	var sourceFrameId : Float;
};
typedef TabReplacedDetails = {
	>CallbackBasicDetails,
	var replacedTabId : Float;
};
typedef BeforeNavigateDetails = {
	>CallbackDetails,
	var parentFrameId : Float;
};
typedef CommittedDetails = {
	>CallbackTransitionDetails,
};
typedef DomContentLoadedDetails = {
	>CallbackDetails,
};
typedef ErrorOccurredDetails = {
	>CallbackDetails,
	var error : String;
};
typedef WebNavigationEventFilters = {
	var url : Array<chrome.events.UrlFilter>;
};
typedef WebNavigationReferenceFragmentUpdatedEvent = {
	>chrome.events.Event,
	function addListener(callback:ReferenceFragmentUpdatedDetails -> Void, ?filters:WebNavigationEventFilters):Void;
};
typedef WebNavigationCompletedEvent = {
	>chrome.events.Event,
	function addListener(callback:CompletedDetails -> Void, ?filters:WebNavigationEventFilters):Void;
};
typedef WebNavigationHistoryStateUpdatedEvent = {
	>chrome.events.Event,
	function addListener(callback:HistoryStateUpdatedDetails -> Void, ?filters:WebNavigationEventFilters):Void;
};
typedef WebNavigationCreatedNavigationTargetEvent = {
	>chrome.events.Event,
	function addListener(callback:CreatedNavigationTargetDetails -> Void, ?filters:WebNavigationEventFilters):Void;
};
typedef WebNavigationTabReplacedEvent = {
	>chrome.events.Event,
	function addListener(callback:TabReplacedDetails -> Void):Void;
};
typedef WebNavigationBeforeNavigateEvent = {
	>chrome.events.Event,
	function addListener(callback:BeforeNavigateDetails -> Void, ?filters:WebNavigationEventFilters):Void;
};
typedef WebNavigationCommittedEvent = {
	>chrome.events.Event,
	function addListener(callback:CommittedDetails -> Void, ?filters:WebNavigationEventFilters):Void;
};
typedef WebNavigationDomContentLoadedEvent = {
	>chrome.events.Event,
	function addListener(callback:DomContentLoadedDetails -> Void, ?filters:WebNavigationEventFilters):Void;
};
typedef WebNavigationErrorOccurredEvent = {
	>chrome.events.Event,
	function addListener(callback:ErrorOccurredDetails -> Void, ?filters:WebNavigationEventFilters):Void;
};
extern class Chrome.webNavigationTopLevel {
	static function getFrame(details:GetFrameDetails, callback:?GetFrameResultDetails -> Void):Void;
	static function getAllFrames(details:GetAllFrameDetails, callback:?Array<GetAllFrameResultDetails> -> Void):Void;
	static var onReferenceFragmentUpdated : WebNavigationReferenceFragmentUpdatedEvent;
	static var onCompleted : WebNavigationCompletedEvent;
	static var onHistoryStateUpdated : WebNavigationHistoryStateUpdatedEvent;
	static var onCreatedNavigationTarget : WebNavigationCreatedNavigationTargetEvent;
	static var onTabReplaced : WebNavigationTabReplacedEvent;
	static var onBeforeNavigate : WebNavigationBeforeNavigateEvent;
	static var onCommitted : WebNavigationCommittedEvent;
	static var onDOMContentLoaded : WebNavigationDomContentLoadedEvent;
	static var onErrorOccurred : WebNavigationErrorOccurredEvent;
}
