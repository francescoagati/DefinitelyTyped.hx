typedef Navigator = {
	var contacts : Contacts;
};
typedef Contacts = {
	function create(?properties:ContactProperties):Contact;
	function find(fields:Array<String>, onSuccess:Array<Contact> -> Void, onError:ContactError -> Void, ?options:ContactFindOptions):Void;
	function pickContact(onSuccess:Contact -> Void, onError:ContactError -> Void):Void;
};
typedef ContactProperties = {
	@:optional
	var id : String;
	@:optional
	var displayName : String;
	@:optional
	var name : ContactName;
	@:optional
	var nickname : String;
	@:optional
	var phoneNumbers : Array<ContactField>;
	@:optional
	var emails : Array<ContactField>;
	@:optional
	var addresses : Array<ContactAddress>;
	@:optional
	var ims : Array<ContactField>;
	@:optional
	var organizations : Array<ContactOrganization>;
	@:optional
	var birthday : Date;
	@:optional
	var note : String;
	@:optional
	var photos : Array<ContactField>;
	@:optional
	var categories : Array<ContactField>;
	@:optional
	var urls : Array<ContactField>;
};
typedef Contact = {
	>ContactProperties,
	function clone():Contact;
	function remove(onSuccess:Void -> Void, onError:Error -> Void):Void;
	function save(onSuccess:Contact -> Void, onError:Error -> Void):Void;
};
typedef ContactError = {
	var code : Float;
	var message : String;
};
typedef ContactName = {
	@:optional
	var formatted : String;
	@:optional
	var familyName : String;
	@:optional
	var givenName : String;
	@:optional
	var middleName : String;
	@:optional
	var honorificPrefix : String;
	@:optional
	var honorificSuffix : String;
};
typedef ContactField = {
	var type : String;
	var value : String;
	var pref : Bool;
};
typedef ContactAddress = {
	@:optional
	var pref : Bool;
	@:optional
	var type : String;
	@:optional
	var formatted : String;
	@:optional
	var streetAddress : String;
	@:optional
	var locality : String;
	@:optional
	var region : String;
	@:optional
	var postalCode : String;
	@:optional
	var country : String;
};
typedef ContactOrganization = {
	@:optional
	var pref : Bool;
	@:optional
	var type : String;
	@:optional
	var name : String;
	@:optional
	var department : String;
	@:optional
	var title : String;
};
typedef ContactFindOptions = {
	@:optional
	var filter : String;
	@:optional
	var multiple : Bool;
	@:optional
	var desiredFields : Array<String>;
};
extern class ContactsTopLevel {
	static var Contact : { function new(?id:String, ?displayName:String, ?name:ContactName, ?nickname:String, ?phoneNumbers:Array<ContactField>, ?emails:Array<ContactField>, ?addresses:Array<ContactAddress>, ?ims:Array<ContactField>, ?organizations:Array<ContactOrganization>, ?birthday:Date, ?note:String, ?photos:Array<ContactField>, ?categories:ContactField, ?urls:Array<ContactField>):Contact; };
	static var ContactError : { function new(code:Float):ContactError; var UNKNOWN_ERROR : Float; var INVALID_ARGUMENT_ERROR : Float; var TIMEOUT_ERROR : Float; var PENDING_OPERATION_ERROR : Float; var IO_ERROR : Float; var NOT_SUPPORTED_ERROR : Float; var PERMISSION_DENIED_ERROR : Float; };
	static var ContactName : { function new(?formatted:String, ?familyName:String, ?givenName:String, ?middleName:String, ?honorificPrefix:String, ?honorificSuffix:String):ContactName; };
	static var ContactField : { function new(?type:String, ?value:String, ?pref:Bool):ContactField; };
	static var ContactAddress : { function new(?pref:Bool, ?type:String, ?formatted:String, ?streetAddress:String, ?locality:String, ?region:String, ?postalCode:String, ?country:String):ContactAddress; };
	static var ContactOrganization : { function new(?pref:Bool, ?type:String, ?name:String, ?department:String, ?title:String):ContactOrganization; };
	static var ContactFindOptions : { function new(?filter:String, ?multiple:Bool, ?desiredFields:Array<String>):ContactFindOptions; };
}
