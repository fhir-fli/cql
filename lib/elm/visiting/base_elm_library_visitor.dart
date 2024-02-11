import '../../cql.dart';

abstract class BaseElmLibraryVisitor<T, C> extends BaseElmClinicalVisitor<T, C>
    implements ElmLibraryVisitor<T, C> {
  ///Visit an Element in an ELM tree. This method will be called for
  ///every node in the tree that is a descendant of the Element type.
  ///
  ///@param elm     the ELM tree
  ///@param context the context passed to the visitor
  ///@return the visitor result
  ///
  @override
  T? visitElement(Element elm, C context) {
    if (elm is IncludeDef) {
      return visitIncludeDef(elm, context);
    } else if (elm is ContextDef) {
      return visitContextDef(elm, context);
    } else if (elm is Library) {
      return visitLibrary(elm, context);
    } else if (elm is UsingDef) {
      return visitUsingDef(elm, context);
    } else {
      return super.visitElement(elm, context);
    }
  }

  ///Visit a Library. This method will be called for
  ///every node in the tree that is a Library.
  ///
  ///@param elm     the ELM tree
  ///@param context the context passed to the visitor
  ///@return the visitor result
  ///
  @override
  T? visitLibrary(Library elm, C context) {
    T? result = visitFields(elm, context);
    if (elm.usings != null && elm.usings!.def.isNotEmpty) {
      for (UsingDef def in elm.usings!.def) {
        T? childResult = visitUsingDef(def, context);
        result = aggregateResult(result, childResult);
      }
    }
    if (elm.includes != null && elm.includes!.def.isNotEmpty) {
      for (IncludeDef def in elm.includes!.def) {
        T? childResult = visitIncludeDef(def, context);
        result = aggregateResult(result, childResult);
      }
    }
    if (elm.codeSystems != null && elm.codeSystems!.def.isNotEmpty) {
      for (CodeSystemDef def in elm.codeSystems!.def) {
        T? childResult = visitCodeSystemDef(def, context);
        result = aggregateResult(result, childResult);
      }
    }
    if (elm.valueSets != null && elm.valueSets!.def.isNotEmpty) {
      for (ValueSetDef def in elm.valueSets!.def) {
        T? childResult = visitValueSetDef(def, context);
        result = aggregateResult(result, childResult);
      }
    }
    if (elm.codes != null && elm.codes!.def.isNotEmpty) {
      for (CodeDef def in elm.codes!.def) {
        T? childResult = visitElement(def, context);
        result = aggregateResult(result, childResult);
      }
    }
    if (elm.concepts != null && elm.concepts!.def.isNotEmpty) {
      for (ConceptDef def in elm.concepts!.def) {
        T? childResult = visitConceptDef(def, context);
        result = aggregateResult(result, childResult);
      }
    }
    if (elm.parameters != null && elm.parameters!.def.isNotEmpty) {
      for (ParameterDef def in elm.parameters!.def) {
        T? childResult = visitParameterDef(def, context);
        result = aggregateResult(result, childResult);
      }
    }
    if (elm.contexts != null && elm.contexts!.def.isNotEmpty) {
      for (ContextDef def in elm.contexts!.def) {
        T? childResult = visitContextDef(def, context);
        result = aggregateResult(result, childResult);
      }
    }
    if (elm.statements != null && elm.statements!.def.isNotEmpty) {
      for (ExpressionDef def in elm.statements!.def) {
        T? childResult = visitExpressionDef(def, context);
        result = aggregateResult(result, childResult);
      }
    }

    return result;
  }

  ///Visit a UsingDef. This method will be called for
  ///every node in the tree that is a UsingDef.
  ///
  ///@param elm     the ELM tree
  ///@param context the context passed to the visitor
  ///@return the visitor result
  ///
  @override
  T? visitUsingDef(UsingDef elm, C context) {
    return visitFields(elm, context);
  }

  ///Visit a IncludeDef. This method will be called for
  ///every node in the tree that is a IncludeDef.
  ///
  ///@param elm     the ELM tree
  ///@param context the context passed to the visitor
  ///@return the visitor result
  ///
  @override
  T? visitIncludeDef(IncludeDef elm, C context) {
    return visitFields(elm, context);
  }

  ///Visit a ContextDef. This method will be called for
  ///every node in the tree that is a ContextDef.
  ///
  ///@param elm     the ELM tree
  ///@param context the context passed to the visitor
  ///@return the visitor result
  ///
  @override
  T? visitContextDef(ContextDef elm, C context) {
    return visitFields(elm, context);
  }
}
