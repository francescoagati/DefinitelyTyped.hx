typedef GridOptions = {
	var columns : Array<Column>;
	var collection : Backbone.Collection<Backbone.Model>;
	var header : Header;
	var body : Body;
	var row : Row;
	var footer : Footer;
};
extern class Header extends Backbone.View<Backbone.Model> {

}
extern class Footer extends Backbone.View<Backbone.Model> {

}
extern class Row extends Backbone.View<Backbone.Model> {

}
extern class Command {
	function cancel():Dynamic;
	function moveDown():Dynamic;
	function moveLeft():Dynamic;
	function moveRight():Dynamic;
	function moveUp():Dynamic;
	function passThru():Dynamic;
	function save():Dynamic;
}
typedef ColumnAttr = {
	var name : String;
	var cell : String;
	var headerCell : String;
	var label : String;
	var sortable : Bool;
	var editable : Bool;
	var renderable : Bool;
	var formater : String;
};
extern class Column extends Backbone.Model {
	function initialize(?options:Dynamic):Dynamic;
}
extern class Body extends Backbone.View<Backbone.Model> {
	var tagName : String;
	function initialize(?options:Dynamic):Dynamic;
	function insertRow(model:Backbone.Model, collection:Backbone.Collection<Backbone.Model>, options:Dynamic):Dynamic;
	function moveToNextCell(model:Backbone.Model, cell:Column, command:Command):Dynamic;
	function refresh():Body;
	function remove():Body;
	function removeRow(model:Backbone.Model, collection:Backbone.Collection<Backbone.Model>, options:Dynamic):Dynamic;
	function render():Body;
}
extern class Grid extends Backbone.View<Backbone.Model> {
	var body : Backgrid.Body;
	var className : String;
	var footer : Dynamic;
	var header : Dynamic;
	var tagName : String;
	function initialize(options:Dynamic):Dynamic;
	function getSelectedModels():Array<Backbone.Model>;
	function insertColumn(options:haxe.extern.Rest<Dynamic>):Grid;
	function insertRow(model:Backbone.Model, collection:Backbone.Collection<Backbone.Model>, options:Dynamic):Dynamic;
	function remove():Grid;
	function removeColumn(options:haxe.extern.Rest<Dynamic>):Grid;
	function removeRow(model:Backbone.Model, collection:Backbone.Collection<Backbone.Model>, options:Dynamic):Dynamic;
	function render():Grid;
}
