typedef ICallback = { };
typedef IErrorCallback = { };
extern class Mandrill {
	var apikey : String;
	var debug : Bool;
	var templates : Templates;
	var exports : Exports;
	var users : Users;
	var rejects : Rejects;
	var inbound : Inbound;
	var tags : Tags;
	var messages : Messages;
	var whitelists : Whitelists;
	var ips : Ips;
	var internal : Internal;
	var subaccounts : Subaccounts;
	var urls : Urls;
	var webhooks : Webhooks;
	var senders : Senders;
	var metadata : Metadata;
	var onerror : IErrorCallback;
	function new(apikey:String, ?debug:Bool):Void;
	function call(uri:String, params:Dynamic, ?onresult:ICallback, ?onerror:ICallback):Void;
}
extern class Templates {
	function new(master:Mandrill):Void;
	function add(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function info(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function update(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function publish(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function delete(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function list(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function timeSeries(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function render(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
}
extern class Exports {
	function new(master:Mandrill):Void;
	function info(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function list(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function rejects(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function whitelist(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function activity(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
}
extern class Users {
	function new(master:Mandrill):Void;
	function info(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function ping(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function ping2(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function senders(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
}
extern class Rejects {
	function new(master:Mandrill):Void;
	function add(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function list(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function delete(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
}
extern class Inbound {
	function new(master:Mandrill):Void;
	function domains(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function addDomain(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function checkDomain(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function deleteDomain(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function routes(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function addRoute(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function updateRoute(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function deleteRoute(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function sendRaw(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
}
extern class Tags {
	function new(master:Mandrill):Void;
	function list(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function delete(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function info(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function timeSeries(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function allTimeSeries(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
}
extern class Messages {
	function new(master:Mandrill):Void;
	function send(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function sendTemplate(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function search(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function searchTimeSeries(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function info(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function content(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function parse(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function sendRaw(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function listScheduled(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function cancelScheduled(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function reschedule(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
}
extern class Whitelists {
	function new(master:Mandrill):Void;
	function add(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function list(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function delete(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
}
extern class Ips {
	function new(master:Mandrill):Void;
	function list(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function info(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function provision(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function startWarmup(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function cancelWarmup(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function setPool(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function delete(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function listPools(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function poolInfo(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function createPool(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function deletePool(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function checkCustomDns(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function setCustomDns(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
}
extern class Internal {
	function new(master:Mandrill):Void;
}
extern class Subaccounts {
	function new(master:Mandrill):Void;
	function list(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function add(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function info(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function update(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function delete(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function pause(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function resume(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
}
extern class Urls {
	function new(master:Mandrill):Void;
	function list(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function search(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function timeSeries(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function trackingDomains(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function addTrackingDomain(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function checkTrackingDomain(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
}
extern class Webhooks {
	function new(master:Mandrill):Void;
	function list(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function add(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function info(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function update(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function delete(params:{ var id : Float; }, ?onsuccess:ICallback, ?onerror:ICallback):Void;
}
extern class Senders {
	function new(master:Mandrill):Void;
	function list(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function domains(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function addDomain(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function checkDomain(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function verifyDomain(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function info(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function timeSeries(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
}
extern class Metadata {
	function new(master:Mandrill):Void;
	function list(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function add(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function update(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
	function delete(params:Dynamic, ?onsuccess:ICallback, ?onerror:ICallback):Void;
}
