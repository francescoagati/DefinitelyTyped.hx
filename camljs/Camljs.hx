extern class CamlBuilder {
	function new():Void;
	function Where():CamlBuilder.IFieldExpression;
	function View(?viewFields:Array<String>):CamlBuilder.IView;
	function ViewFields(viewFields:Array<String>):CamlBuilder.IFinalizableToString;
	static function Expression():CamlBuilder.IFieldExpression;
}
