extern class ContactsTopLevel {
	static var AUTHORIZATION_AUTHORIZED : Float;
	static var AUTHORIZATION_DENIED : Float;
	static var AUTHORIZATION_RESTRICTED : Float;
	static var AUTHORIZATION_UNKNOWN : Float;
	static var CONTACTS_KIND_ORGANIZATION : Float;
	static var CONTACTS_KIND_PERSON : Float;
	static var CONTACTS_SORT_FIRST_NAME : Float;
	static var CONTACTS_SORT_LAST_NAME : Float;
	static var apiName : String;
	static var bubbleParent : Bool;
	static var contactsAuthorization : Float;
	static function addEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function applyProperties(props:Dictionary<Dynamic>):Void;
	static function createGroup(?parameters:Dictionary<Ti.Contacts.Group>):Ti.Contacts.Group;
	static function createPerson(?parameters:Dictionary<Ti.Contacts.Person>):Ti.Contacts.Person;
	static function fireEvent(name:String, event:Dictionary<Dynamic>):Void;
	static function getAllGroups():Array<Ti.Contacts.Group>;
	static function getAllPeople(limit:Float):Array<Ti.Contacts.Person>;
	static function getApiName():String;
	static function getBubbleParent():Bool;
	static function getContactsAuthorization():Float;
	static function getGroupByID(id:Float):Ti.Contacts.Group;
	static function getPeopleWithName(name:String):Array<Ti.Contacts.Person>;
	static function getPersonByID(id:Float):Ti.Contacts.Person;
	static function removeEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function removeGroup(group:Ti.Contacts.Group):Void;
	static function removePerson(person:Ti.Contacts.Person):Void;
	static function requestAuthorization(callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function revert():Void;
	static function save(contacts:Array<Ti.Contacts.Person>):Void;
	static function setBubbleParent(bubbleParent:Bool):Void;
	static function showContacts(params:ShowContactsParams):Void;
}
