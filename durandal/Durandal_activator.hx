extern class Durandal_activatorTopLevel {
	static var defaults : DurandalActivatorSettings;
	static function create<T>(?initialActiveItem:T, ?settings:DurandalActivatorSettings):DurandalActivator<T>;
	static function isActivator(object:Dynamic):Bool;
}
