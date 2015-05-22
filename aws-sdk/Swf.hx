extern class Client {
	var config : ClientConfig;
	function countClosedWorkflowExecutions(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function countOpenWorkflowExecutions(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function countPendingActivityTasks(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function countPendingDecisionTasks(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function deprecateActivityType(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function deprecateDomain(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function deprecateWorkflowType(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function describeActivityType(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function describeDomain(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function describeWorkflowExecution(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function describeWorkflowType(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function getWorkflowExecutionHistory(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function listActivityTypes(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function listClosedWorkflowExecutions(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function listDomains(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function listOpenWorkflowExecutions(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function listWorkflowTypes(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function pollForActivityTask(params:Dynamic, callback:Dynamic -> ActivityTask -> Void):Void;
	function pollForDecisionTask(params:Dynamic, callback:Dynamic -> DecisionTask -> Void):Void;
	function recordActivityTaskHeartbeat(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function registerActivityType(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function registerDomain(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function registerWorkflowType(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function requestCancelWorkflowExecution(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function respondActivityTaskCanceled(params:RespondActivityTaskCanceledRequest, callback:Dynamic -> Dynamic -> Void):Void;
	function respondActivityTaskCompleted(params:RespondActivityTaskCompletedRequest, callback:Dynamic -> Dynamic -> Void):Void;
	function respondActivityTaskFailed(params:RespondActivityTaskFailedRequest, callback:Dynamic -> Dynamic -> Void):Void;
	function respondDecisionTaskCompleted(params:RespondDecisionTaskCompletedRequest, callback:Dynamic -> Dynamic -> Void):Void;
	function signalWorkflowExecution(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function startWorkflowExecution(params:Dynamic, callback:Dynamic -> StartWorkflowExecutionResult -> Void):Void;
	function terminateWorkflowExecution(params:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
}
typedef PollForActivityTaskRequest = {
	@:optional
	var domain : String;
	@:optional
	var taskList : TaskList;
	@:optional
	var identity : String;
};
typedef TaskList = {
	@:optional
	var name : String;
};
typedef PollForDecisionTaskRequest = {
	@:optional
	var domain : String;
	@:optional
	var taskList : TaskList;
	@:optional
	var identity : String;
	@:optional
	var nextPageToken : String;
	@:optional
	var maximumPageSize : Float;
	@:optional
	var reverseOrder : Boolean;
};
typedef StartWorkflowExecutionRequest = {
	@:optional
	var domain : String;
	@:optional
	var workflowId : String;
	@:optional
	var workflowType : WorkflowType;
	@:optional
	var taskList : TaskList;
	@:optional
	var input : String;
	@:optional
	var executionStartToCloseTimeout : String;
	@:optional
	var tagList : Array<String>;
	@:optional
	var taskStartToCloseTimeout : String;
	@:optional
	var childPolicy : String;
};
typedef WorkflowType = {
	@:optional
	var name : String;
	@:optional
	var version : String;
};
typedef RespondDecisionTaskCompletedRequest = {
	@:optional
	var taskToken : String;
	@:optional
	var decisions : Array<Decision>;
	@:optional
	var executionContext : String;
};
typedef Decision = {
	@:optional
	var decisionType : String;
	@:optional
	var scheduleActivityTaskDecisionAttributes : ScheduleActivityTaskDecisionAttributes;
	@:optional
	var requestCancelActivityTaskDecisionAttributes : RequestCancelActivityTaskDecisionAttributes;
	@:optional
	var completeWorkflowExecutionDecisionAttributes : CompleteWorkflowExecutionDecisionAttributes;
	@:optional
	var failWorkflowExecutionDecisionAttributes : FailWorkflowExecutionDecisionAttributes;
	@:optional
	var cancelWorkflowExecutionDecisionAttributes : CancelWorkflowExecutionDecisionAttributes;
	@:optional
	var continueAsNewWorkflowExecutionDecisionAttributes : ContinueAsNewWorkflowExecutionDecisionAttributes;
	@:optional
	var recordMarkerDecisionAttributes : RecordMarkerDecisionAttributes;
	@:optional
	var startTimerDecisionAttributes : StartTimerDecisionAttributes;
	@:optional
	var cancelTimerDecisionAttributes : CancelTimerDecisionAttributes;
	@:optional
	var signalExternalWorkflowExecutionDecisionAttributes : SignalExternalWorkflowExecutionDecisionAttributes;
	@:optional
	var requestCancelExternalWorkflowExecutionDecisionAttributes : RequestCancelExternalWorkflowExecutionDecisionAttributes;
	@:optional
	var startChildWorkflowExecutionDecisionAttributes : StartChildWorkflowExecutionDecisionAttributes;
};
typedef ScheduleActivityTaskDecisionAttributes = {
	@:optional
	var activityType : ActivityType;
	@:optional
	var activityId : String;
	@:optional
	var control : String;
	@:optional
	var input : String;
	@:optional
	var scheduleToCloseTimeout : String;
	@:optional
	var taskList : TaskList;
	@:optional
	var scheduleToStartTimeout : String;
	@:optional
	var startToCloseTimeout : String;
	@:optional
	var heartbeatTimeout : String;
};
typedef ActivityType = {
	@:optional
	var name : String;
	@:optional
	var version : String;
};
typedef RequestCancelActivityTaskDecisionAttributes = {
	@:optional
	var activityId : String;
};
typedef CompleteWorkflowExecutionDecisionAttributes = {
	@:optional
	var result : String;
};
typedef FailWorkflowExecutionDecisionAttributes = {
	@:optional
	var reason : String;
	@:optional
	var details : String;
};
typedef CancelWorkflowExecutionDecisionAttributes = {
	@:optional
	var details : String;
};
typedef ContinueAsNewWorkflowExecutionDecisionAttributes = {
	@:optional
	var input : String;
	@:optional
	var executionStartToCloseTimeout : String;
	@:optional
	var taskList : TaskList;
	@:optional
	var taskStartToCloseTimeout : String;
	@:optional
	var childPolicy : String;
	@:optional
	var tagList : Array<String>;
	@:optional
	var workflowTypeVersion : String;
};
typedef RecordMarkerDecisionAttributes = {
	@:optional
	var markerName : String;
	@:optional
	var details : String;
};
typedef StartTimerDecisionAttributes = {
	@:optional
	var timerId : String;
	@:optional
	var control : String;
	@:optional
	var startToFireTimeout : String;
};
typedef CancelTimerDecisionAttributes = {
	@:optional
	var timerId : String;
};
typedef SignalExternalWorkflowExecutionDecisionAttributes = {
	@:optional
	var workflowId : String;
	@:optional
	var runId : String;
	@:optional
	var signalName : String;
	@:optional
	var input : String;
	@:optional
	var control : String;
};
typedef RequestCancelExternalWorkflowExecutionDecisionAttributes = {
	@:optional
	var workflowId : String;
	@:optional
	var runId : String;
	@:optional
	var control : String;
};
typedef StartChildWorkflowExecutionDecisionAttributes = {
	@:optional
	var workflowType : WorkflowType;
	@:optional
	var workflowId : String;
	@:optional
	var control : String;
	@:optional
	var input : String;
	@:optional
	var executionStartToCloseTimeout : String;
	@:optional
	var taskList : TaskList;
	@:optional
	var taskStartToCloseTimeout : String;
	@:optional
	var childPolicy : String;
	@:optional
	var tagList : Array<String>;
};
typedef RespondActivityTaskCompletedRequest = {
	@:optional
	var taskToken : String;
	@:optional
	var result : String;
};
typedef RespondActivityTaskFailedRequest = {
	@:optional
	var taskToken : String;
	@:optional
	var reason : String;
	@:optional
	var details : String;
};
typedef RespondActivityTaskCanceledRequest = {
	@:optional
	var taskToken : String;
	@:optional
	var details : String;
};
typedef DecisionTask = {
	@:optional
	var taskToken : String;
	@:optional
	var startedEventId : Float;
	@:optional
	var workflowExecution : WorkflowExecution;
	@:optional
	var workflowType : WorkflowType;
	@:optional
	var events : Array<HistoryEvent>;
	@:optional
	var nextPageToken : String;
	@:optional
	var previousStartedEventId : Float;
};
typedef WorkflowExecution = {
	@:optional
	var workflowId : String;
	@:optional
	var runId : String;
};
typedef HistoryEvent = {
	@:optional
	var eventTimestamp : Dynamic;
	@:optional
	var eventType : String;
	@:optional
	var eventId : Float;
	@:optional
	var workflowExecutionStartedEventAttributes : WorkflowExecutionStartedEventAttributes;
	@:optional
	var workflowExecutionCompletedEventAttributes : WorkflowExecutionCompletedEventAttributes;
	@:optional
	var completeWorkflowExecutionFailedEventAttributes : CompleteWorkflowExecutionFailedEventAttributes;
	@:optional
	var workflowExecutionFailedEventAttributes : WorkflowExecutionFailedEventAttributes;
	@:optional
	var failWorkflowExecutionFailedEventAttributes : FailWorkflowExecutionFailedEventAttributes;
	@:optional
	var workflowExecutionTimedOutEventAttributes : WorkflowExecutionTimedOutEventAttributes;
	@:optional
	var workflowExecutionCanceledEventAttributes : WorkflowExecutionCanceledEventAttributes;
	@:optional
	var cancelWorkflowExecutionFailedEventAttributes : CancelWorkflowExecutionFailedEventAttributes;
	@:optional
	var workflowExecutionContinuedAsNewEventAttributes : WorkflowExecutionContinuedAsNewEventAttributes;
	@:optional
	var continueAsNewWorkflowExecutionFailedEventAttributes : ContinueAsNewWorkflowExecutionFailedEventAttributes;
	@:optional
	var workflowExecutionTerminatedEventAttributes : WorkflowExecutionTerminatedEventAttributes;
	@:optional
	var workflowExecutionCancelRequestedEventAttributes : WorkflowExecutionCancelRequestedEventAttributes;
	@:optional
	var decisionTaskScheduledEventAttributes : DecisionTaskScheduledEventAttributes;
	@:optional
	var decisionTaskStartedEventAttributes : DecisionTaskStartedEventAttributes;
	@:optional
	var decisionTaskCompletedEventAttributes : DecisionTaskCompletedEventAttributes;
	@:optional
	var decisionTaskTimedOutEventAttributes : DecisionTaskTimedOutEventAttributes;
	@:optional
	var activityTaskScheduledEventAttributes : ActivityTaskScheduledEventAttributes;
	@:optional
	var activityTaskStartedEventAttributes : ActivityTaskStartedEventAttributes;
	@:optional
	var activityTaskCompletedEventAttributes : ActivityTaskCompletedEventAttributes;
	@:optional
	var activityTaskFailedEventAttributes : ActivityTaskFailedEventAttributes;
	@:optional
	var activityTaskTimedOutEventAttributes : ActivityTaskTimedOutEventAttributes;
	@:optional
	var activityTaskCanceledEventAttributes : ActivityTaskCanceledEventAttributes;
	@:optional
	var activityTaskCancelRequestedEventAttributes : ActivityTaskCancelRequestedEventAttributes;
	@:optional
	var workflowExecutionSignaledEventAttributes : WorkflowExecutionSignaledEventAttributes;
	@:optional
	var markerRecordedEventAttributes : MarkerRecordedEventAttributes;
	@:optional
	var timerStartedEventAttributes : TimerStartedEventAttributes;
	@:optional
	var timerFiredEventAttributes : TimerFiredEventAttributes;
	@:optional
	var timerCanceledEventAttributes : TimerCanceledEventAttributes;
	@:optional
	var startChildWorkflowExecutionInitiatedEventAttributes : StartChildWorkflowExecutionInitiatedEventAttributes;
	@:optional
	var childWorkflowExecutionStartedEventAttributes : ChildWorkflowExecutionStartedEventAttributes;
	@:optional
	var childWorkflowExecutionCompletedEventAttributes : ChildWorkflowExecutionCompletedEventAttributes;
	@:optional
	var childWorkflowExecutionFailedEventAttributes : ChildWorkflowExecutionFailedEventAttributes;
	@:optional
	var childWorkflowExecutionTimedOutEventAttributes : ChildWorkflowExecutionTimedOutEventAttributes;
	@:optional
	var childWorkflowExecutionCanceledEventAttributes : ChildWorkflowExecutionCanceledEventAttributes;
	@:optional
	var childWorkflowExecutionTerminatedEventAttributes : ChildWorkflowExecutionTerminatedEventAttributes;
	@:optional
	var signalExternalWorkflowExecutionInitiatedEventAttributes : SignalExternalWorkflowExecutionInitiatedEventAttributes;
	@:optional
	var externalWorkflowExecutionSignaledEventAttributes : ExternalWorkflowExecutionSignaledEventAttributes;
	@:optional
	var signalExternalWorkflowExecutionFailedEventAttributes : SignalExternalWorkflowExecutionFailedEventAttributes;
	@:optional
	var externalWorkflowExecutionCancelRequestedEventAttributes : ExternalWorkflowExecutionCancelRequestedEventAttributes;
	@:optional
	var requestCancelExternalWorkflowExecutionInitiatedEventAttributes : RequestCancelExternalWorkflowExecutionInitiatedEventAttributes;
	@:optional
	var requestCancelExternalWorkflowExecutionFailedEventAttributes : RequestCancelExternalWorkflowExecutionFailedEventAttributes;
	@:optional
	var scheduleActivityTaskFailedEventAttributes : ScheduleActivityTaskFailedEventAttributes;
	@:optional
	var requestCancelActivityTaskFailedEventAttributes : RequestCancelActivityTaskFailedEventAttributes;
	@:optional
	var startTimerFailedEventAttributes : StartTimerFailedEventAttributes;
	@:optional
	var cancelTimerFailedEventAttributes : CancelTimerFailedEventAttributes;
	@:optional
	var startChildWorkflowExecutionFailedEventAttributes : StartChildWorkflowExecutionFailedEventAttributes;
};
typedef WorkflowExecutionStartedEventAttributes = {
	@:optional
	var input : String;
	@:optional
	var executionStartToCloseTimeout : String;
	@:optional
	var taskStartToCloseTimeout : String;
	@:optional
	var childPolicy : String;
	@:optional
	var taskList : TaskList;
	@:optional
	var workflowType : WorkflowType;
	@:optional
	var tagList : Array<String>;
	@:optional
	var continuedExecutionRunId : String;
	@:optional
	var parentWorkflowExecution : WorkflowExecution;
	@:optional
	var parentInitiatedEventId : Float;
};
typedef WorkflowExecutionCompletedEventAttributes = {
	@:optional
	var result : String;
	@:optional
	var decisionTaskCompletedEventId : Float;
};
typedef CompleteWorkflowExecutionFailedEventAttributes = {
	@:optional
	var cause : String;
	@:optional
	var decisionTaskCompletedEventId : Float;
};
typedef WorkflowExecutionFailedEventAttributes = {
	@:optional
	var reason : String;
	@:optional
	var details : String;
	@:optional
	var decisionTaskCompletedEventId : Float;
};
typedef FailWorkflowExecutionFailedEventAttributes = {
	@:optional
	var cause : String;
	@:optional
	var decisionTaskCompletedEventId : Float;
};
typedef WorkflowExecutionTimedOutEventAttributes = {
	@:optional
	var timeoutType : String;
	@:optional
	var childPolicy : String;
};
typedef WorkflowExecutionCanceledEventAttributes = {
	@:optional
	var details : String;
	@:optional
	var decisionTaskCompletedEventId : Float;
};
typedef CancelWorkflowExecutionFailedEventAttributes = {
	@:optional
	var cause : String;
	@:optional
	var decisionTaskCompletedEventId : Float;
};
typedef WorkflowExecutionContinuedAsNewEventAttributes = {
	@:optional
	var input : String;
	@:optional
	var decisionTaskCompletedEventId : Float;
	@:optional
	var newExecutionRunId : String;
	@:optional
	var executionStartToCloseTimeout : String;
	@:optional
	var taskList : TaskList;
	@:optional
	var taskStartToCloseTimeout : String;
	@:optional
	var childPolicy : String;
	@:optional
	var tagList : Array<String>;
	@:optional
	var workflowType : WorkflowType;
};
typedef ContinueAsNewWorkflowExecutionFailedEventAttributes = {
	@:optional
	var cause : String;
	@:optional
	var decisionTaskCompletedEventId : Float;
};
typedef WorkflowExecutionTerminatedEventAttributes = {
	@:optional
	var reason : String;
	@:optional
	var details : String;
	@:optional
	var childPolicy : String;
	@:optional
	var cause : String;
};
typedef WorkflowExecutionCancelRequestedEventAttributes = {
	@:optional
	var externalWorkflowExecution : WorkflowExecution;
	@:optional
	var externalInitiatedEventId : Float;
	@:optional
	var cause : String;
};
typedef DecisionTaskScheduledEventAttributes = {
	@:optional
	var taskList : TaskList;
	@:optional
	var startToCloseTimeout : String;
};
typedef DecisionTaskStartedEventAttributes = {
	@:optional
	var identity : String;
	@:optional
	var scheduledEventId : Float;
};
typedef DecisionTaskCompletedEventAttributes = {
	@:optional
	var executionContext : String;
	@:optional
	var scheduledEventId : Float;
	@:optional
	var startedEventId : Float;
};
typedef DecisionTaskTimedOutEventAttributes = {
	@:optional
	var timeoutType : String;
	@:optional
	var scheduledEventId : Float;
	@:optional
	var startedEventId : Float;
};
typedef ActivityTaskScheduledEventAttributes = {
	@:optional
	var activityType : ActivityType;
	@:optional
	var activityId : String;
	@:optional
	var input : String;
	@:optional
	var control : String;
	@:optional
	var scheduleToStartTimeout : String;
	@:optional
	var scheduleToCloseTimeout : String;
	@:optional
	var startToCloseTimeout : String;
	@:optional
	var taskList : TaskList;
	@:optional
	var decisionTaskCompletedEventId : Float;
	@:optional
	var heartbeatTimeout : String;
};
typedef ActivityTaskStartedEventAttributes = {
	@:optional
	var identity : String;
	@:optional
	var scheduledEventId : Float;
};
typedef ActivityTaskCompletedEventAttributes = {
	@:optional
	var result : String;
	@:optional
	var scheduledEventId : Float;
	@:optional
	var startedEventId : Float;
};
typedef ActivityTaskFailedEventAttributes = {
	@:optional
	var reason : String;
	@:optional
	var details : String;
	@:optional
	var scheduledEventId : Float;
	@:optional
	var startedEventId : Float;
};
typedef ActivityTaskTimedOutEventAttributes = {
	@:optional
	var timeoutType : String;
	@:optional
	var scheduledEventId : Float;
	@:optional
	var startedEventId : Float;
	@:optional
	var details : String;
};
typedef ActivityTaskCanceledEventAttributes = {
	@:optional
	var details : String;
	@:optional
	var scheduledEventId : Float;
	@:optional
	var startedEventId : Float;
	@:optional
	var latestCancelRequestedEventId : Float;
};
typedef ActivityTaskCancelRequestedEventAttributes = {
	@:optional
	var decisionTaskCompletedEventId : Float;
	@:optional
	var activityId : String;
};
typedef WorkflowExecutionSignaledEventAttributes = {
	@:optional
	var signalName : String;
	@:optional
	var input : String;
	@:optional
	var externalWorkflowExecution : WorkflowExecution;
	@:optional
	var externalInitiatedEventId : Float;
};
typedef MarkerRecordedEventAttributes = {
	@:optional
	var markerName : String;
	@:optional
	var details : String;
	@:optional
	var decisionTaskCompletedEventId : Float;
};
typedef TimerStartedEventAttributes = {
	@:optional
	var timerId : String;
	@:optional
	var control : String;
	@:optional
	var startToFireTimeout : String;
	@:optional
	var decisionTaskCompletedEventId : Float;
};
typedef TimerFiredEventAttributes = {
	@:optional
	var timerId : String;
	@:optional
	var startedEventId : Float;
};
typedef TimerCanceledEventAttributes = {
	@:optional
	var timerId : String;
	@:optional
	var startedEventId : Float;
	@:optional
	var decisionTaskCompletedEventId : Float;
};
typedef StartChildWorkflowExecutionInitiatedEventAttributes = {
	@:optional
	var workflowId : String;
	@:optional
	var workflowType : WorkflowType;
	@:optional
	var control : String;
	@:optional
	var input : String;
	@:optional
	var executionStartToCloseTimeout : String;
	@:optional
	var taskList : TaskList;
	@:optional
	var decisionTaskCompletedEventId : Float;
	@:optional
	var childPolicy : String;
	@:optional
	var taskStartToCloseTimeout : String;
	@:optional
	var tagList : Array<String>;
};
typedef ChildWorkflowExecutionStartedEventAttributes = {
	@:optional
	var workflowExecution : WorkflowExecution;
	@:optional
	var workflowType : WorkflowType;
	@:optional
	var initiatedEventId : Float;
};
typedef ChildWorkflowExecutionCompletedEventAttributes = {
	@:optional
	var workflowExecution : WorkflowExecution;
	@:optional
	var workflowType : WorkflowType;
	@:optional
	var result : String;
	@:optional
	var initiatedEventId : Float;
	@:optional
	var startedEventId : Float;
};
typedef ChildWorkflowExecutionFailedEventAttributes = {
	@:optional
	var workflowExecution : WorkflowExecution;
	@:optional
	var workflowType : WorkflowType;
	@:optional
	var reason : String;
	@:optional
	var details : String;
	@:optional
	var initiatedEventId : Float;
	@:optional
	var startedEventId : Float;
};
typedef ChildWorkflowExecutionTimedOutEventAttributes = {
	@:optional
	var workflowExecution : WorkflowExecution;
	@:optional
	var workflowType : WorkflowType;
	@:optional
	var timeoutType : String;
	@:optional
	var initiatedEventId : Float;
	@:optional
	var startedEventId : Float;
};
typedef ChildWorkflowExecutionCanceledEventAttributes = {
	@:optional
	var workflowExecution : WorkflowExecution;
	@:optional
	var workflowType : WorkflowType;
	@:optional
	var details : String;
	@:optional
	var initiatedEventId : Float;
	@:optional
	var startedEventId : Float;
};
typedef ChildWorkflowExecutionTerminatedEventAttributes = {
	@:optional
	var workflowExecution : WorkflowExecution;
	@:optional
	var workflowType : WorkflowType;
	@:optional
	var initiatedEventId : Float;
	@:optional
	var startedEventId : Float;
};
typedef SignalExternalWorkflowExecutionInitiatedEventAttributes = {
	@:optional
	var workflowId : String;
	@:optional
	var runId : String;
	@:optional
	var signalName : String;
	@:optional
	var input : String;
	@:optional
	var decisionTaskCompletedEventId : Float;
	@:optional
	var control : String;
};
typedef ExternalWorkflowExecutionSignaledEventAttributes = {
	@:optional
	var workflowExecution : WorkflowExecution;
	@:optional
	var initiatedEventId : Float;
};
typedef SignalExternalWorkflowExecutionFailedEventAttributes = {
	@:optional
	var workflowId : String;
	@:optional
	var runId : String;
	@:optional
	var cause : String;
	@:optional
	var initiatedEventId : Float;
	@:optional
	var decisionTaskCompletedEventId : Float;
	@:optional
	var control : String;
};
typedef ExternalWorkflowExecutionCancelRequestedEventAttributes = {
	@:optional
	var workflowExecution : WorkflowExecution;
	@:optional
	var initiatedEventId : Float;
};
typedef RequestCancelExternalWorkflowExecutionInitiatedEventAttributes = {
	@:optional
	var workflowId : String;
	@:optional
	var runId : String;
	@:optional
	var decisionTaskCompletedEventId : Float;
	@:optional
	var control : String;
};
typedef RequestCancelExternalWorkflowExecutionFailedEventAttributes = {
	@:optional
	var workflowId : String;
	@:optional
	var runId : String;
	@:optional
	var cause : String;
	@:optional
	var initiatedEventId : Float;
	@:optional
	var decisionTaskCompletedEventId : Float;
	@:optional
	var control : String;
};
typedef ScheduleActivityTaskFailedEventAttributes = {
	@:optional
	var activityType : ActivityType;
	@:optional
	var activityId : String;
	@:optional
	var cause : String;
	@:optional
	var decisionTaskCompletedEventId : Float;
};
typedef RequestCancelActivityTaskFailedEventAttributes = {
	@:optional
	var activityId : String;
	@:optional
	var cause : String;
	@:optional
	var decisionTaskCompletedEventId : Float;
};
typedef StartTimerFailedEventAttributes = {
	@:optional
	var timerId : String;
	@:optional
	var cause : String;
	@:optional
	var decisionTaskCompletedEventId : Float;
};
typedef CancelTimerFailedEventAttributes = {
	@:optional
	var timerId : String;
	@:optional
	var cause : String;
	@:optional
	var decisionTaskCompletedEventId : Float;
};
typedef StartChildWorkflowExecutionFailedEventAttributes = {
	@:optional
	var workflowType : WorkflowType;
	@:optional
	var cause : String;
	@:optional
	var workflowId : String;
	@:optional
	var initiatedEventId : Float;
	@:optional
	var decisionTaskCompletedEventId : Float;
	@:optional
	var control : String;
};
typedef ActivityTask = {
	@:optional
	var taskToken : String;
	@:optional
	var activityId : String;
	@:optional
	var startedEventId : Float;
	@:optional
	var workflowExecution : WorkflowExecution;
	@:optional
	var activityType : ActivityType;
	@:optional
	var input : String;
};
typedef PollForActivityTaskResult = {
	@:optional
	var activityTask : ActivityTask;
};
typedef PollForDecisionTaskResult = {
	@:optional
	var decisionTask : DecisionTask;
};
typedef StartWorkflowExecutionResult = {
	@:optional
	var run : Run;
};
typedef Run = {
	@:optional
	var runId : String;
};
