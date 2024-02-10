

 import '../../cql.dart';

/// Provides the base implementation for an ElmClinicalVisitor
///
 /// @param <T> The return type of the visit operation. Use {@link Void} for
 /// @param <C> The type of context passed to each visit method
 ///            operations with no return type.
 ///
abstract class BaseElmClinicalVisitor<T, C> extends BaseElmVisitor<T, C> implements ElmClinicalVisitor<T, C> {

    @override
    T visitElement(Element elm, C context) {
        if (elm is ExpressionDef) {
          return visitExpressionDef(elm, context);
        } else if (elm is CodeDef) return visitCodeDef(elm, context);
        else if (elm is CodeSystemDef) return visitCodeSystemDef(elm, context);
        else if (elm is ValueSetDef) return visitValueSetDef(elm, context);
        else if (elm is ConceptDef) return visitConceptDef(elm, context);
        else if (elm is CodeFilterElement) return visitCodeFilterElement(elm, context);
        else if (elm is DateFilterElement) return visitDateFilterElement(elm, context);
        else if (elm is OtherFilterElement) return visitOtherFilterElement(elm, context);
        else if (elm is IncludeElement) return visitIncludeElement(elm, context);
        return super.visitElement(elm, context);
    }

    
     /// Visit an Expression. This method will be called for
     /// every node in the tree that is an Expression.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
    T visitExpression(Expression elm, C context) {
        if (elm is FunctionRef) {
          return visitFunctionRef(elm, context);
        } else if (elm is ExpressionRef) return visitExpressionRef(elm, context);
        else if (elm is CodeSystemRef) return visitCodeSystemRef(elm, context);
        else if (elm is ValueSetRef) return visitValueSetRef(elm, context);
        else if (elm is CodeRef) return visitCodeRef(elm, context);
        else if (elm is ConceptRef) return visitConceptRef(elm, context);
        else if (elm is Code) return visitCode(elm, context);
        else if (elm is Concept) return visitConcept(elm, context);
        else if (elm is Quantity) return visitQuantity(elm, context);
        else if (elm is Ratio) return visitRatio(elm, context);
        else if (elm is Retrieve) return visitRetrieve(elm, context);
        else return super.visitExpression(elm, context);
    }

    
     /// Visit an OperatorExpression. This method will be called for
     /// every node in the tree that is a OperatorExpression.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
    T visitOperatorExpression(OperatorExpression elm, C context) {
        if (elm is InCodeSystem) {
          return visitInCodeSystem(elm, context);
        } else if (elm is AnyInCodeSystem) return visitAnyInCodeSystem(elm, context);
        else if (elm is InValueSet) return visitInValueSet(elm, context);
        else if (elm is AnyInValueSet) return visitAnyInValueSet(elm, context);
        else return super.visitOperatorExpression(elm, context);
    }

    
     /// Visit a UnaryExpression. This method will be called for
     /// every node in the tree that is a UnaryExpression.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
    T visitUnaryExpression(UnaryExpression elm, C context) {
        if (elm is ExpandValueSet) return visitExpandValueSet(elm, context);
        if (elm is CalculateAge) {
          return visitCalculateAge(elm, context);
        } else {
          return super.visitUnaryExpression(elm, context);
        }
    }

    
     /// Visit a BinaryExpression. This method will be called for
     /// every node in the tree that is a BinaryExpression.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
    T visitBinaryExpression(BinaryExpression elm, C context) {
        if (elm is CalculateAgeAt) {
          return visitCalculateAgeAt(elm, context);
        } else if (elm is Subsumes) return visitSubsumes(elm, context);
        else if (elm is SubsumedBy) return visitSubsumedBy(elm, context);
        else return super.visitBinaryExpression(elm, context);
    }

    
     /// Visit an ExpandValueSet. This method will be called for
     /// every node in the tree that is an ExpandValueSet.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    T visitExpandValueSet(ExpandValueSet elm, C context) {
        return visitFields(elm, context);
    }

    
     /// Visit a CodeFilterElement. This method will be called for
     /// every node in the tree that is a CodeFilterElement.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitCodeFilterElement(CodeFilterElement elm, C context) {
        T result = visitFields(elm, context);
        if (elm.getValue() != null) {
            T childResult = visitExpression(elm.getValue(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
     /// Visit a DateFilterElement. This method will be called for
     /// every node in the tree that is a DateFilterElement.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitDateFilterElement(DateFilterElement elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getValue() != null) {
            T childResult = visitExpression(elm.getValue(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
     /// Visit an OtherFilterElement. This method will be called for
     /// every node in the tree that is an OtherFilterElement.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitOtherFilterElement(OtherFilterElement elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getValue() != null) {
            T childResult = visitExpression(elm.getValue(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
     /// Visit an IncludeElement. This method will be called for
     /// every node in the tree that is an IncludeElement.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitIncludeElement(IncludeElement elm, C context) {
        return visitFields(elm, context);
    }

    
     /// Visit a Retrieve. This method will be called for
     /// every node in the tree that is a Retrieve.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitRetrieve(Retrieve elm, C context) {
        T result = visitFields(elm, context);

        for (var cfe : elm.getCodeFilter()) {
            T childResult = visitCodeFilterElement(cfe, context);
            result = aggregateResult(result, childResult);
        }

        if (elm.getCodes() != null) {
            T childResult = visitExpression(elm.getCodes(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getContext() != null) {
            T childResult = visitExpression(elm.getContext(), context);
            result = aggregateResult(result, childResult);
        }
        for (var dfe : elm.getDateFilter()) {
            T childResult = visitDateFilterElement(dfe, context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getDateRange() != null) {
            T childResult = visitExpression(elm.getDateRange(), context);
            result = aggregateResult(result, childResult);
        }

        if (elm.getId() != null) {
            T childResult = visitExpression(elm.getId(), context);
            result = aggregateResult(result, childResult);
        }

        for (var ie : elm.getInclude()) {
            T childResult = visitIncludeElement(ie, context);
            result = aggregateResult(result, childResult);
        }

        for (var ofe : elm.getOtherFilter()) {
            T childResult = visitOtherFilterElement(ofe, context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
     /// Visit a Property. This method will be called for
     /// every node in the tree that is a Property.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
    T visitProperty(Property elm, C context) {
        if (elm is Search) {
            return visitSearch(elm, context);
        }
        return super.visitProperty(elm, context);
    }

    
     /// Visit a Search. This method will be called for
     /// every node in the tree that is a Search.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitSearch(Search elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getSource() != null) {
            T childResult = visitExpression(elm.getSource(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
     /// Visit a CodeSystemDef. This method will be called for
     /// every node in the tree that is a CodeSystemDef.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitCodeSystemDef(CodeSystemDef elm, C context) {
        T result = visitFields(elm, context);
        if (elm.getAccessLevel() != null) {
            T childResult = visitAccessModifier(elm.getAccessLevel(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
     /// Visit a ValueSetDef. This method will be called for
     /// every node in the tree that is a ValueSetDef.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitValueSetDef(ValueSetDef elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getAccessLevel() != null) {
            T childResult = visitAccessModifier(elm.getAccessLevel(), context);
            result = aggregateResult(result, childResult);
        }
        for (CodeSystemRef codeSystemRef : elm.getCodeSystem()) {
            T childResult = visitCodeSystemRef(codeSystemRef, context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
     /// Visit a CodeDef. This method will be called for
     /// every node in the tree that is a CodeDef.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitCodeDef(CodeDef elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getAccessLevel() != null) {
            T childResult = visitAccessModifier(elm.getAccessLevel(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getCodeSystem() != null) {
            T childResult = visitCodeSystemRef(elm.getCodeSystem(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
     /// Visit an ConceptDef. This method will be called for
     /// every node in the tree that is an ConceptDef.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitConceptDef(ConceptDef elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getAccessLevel() != null) {
            T childResult = visitAccessModifier(elm.getAccessLevel(), context);
            result = aggregateResult(result, childResult);
        }
        for (CodeRef cr : elm.getCode()) {
            T childResult = visitCodeRef(cr, context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
     /// Visit a CodeSystemRef. This method will be called for
     /// every node in the tree that is a CodeSystemRef.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitCodeSystemRef(CodeSystemRef elm, C context) {
        return visitFields(elm, context);
    }

    
     /// Visit a ValueSetRef. This method will be called for
     /// every node in the tree that is a ValueSetRef.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitValueSetRef(ValueSetRef elm, C context) {
        return visitFields(elm, context);
    }

    
     /// Visit a CodeRef. This method will be called for
     /// every node in the tree that is a CodeRef.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitCodeRef(CodeRef elm, C context) {
        return visitFields(elm, context);
    }

    
     /// Visit a ConceptRef. This method will be called for
     /// every node in the tree that is a ConceptRef.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitConceptRef(ConceptRef elm, C context) {
        return visitFields(elm, context);
    }

    
     /// Visit a Code. This method will be called for
     /// every node in the tree that is a Code.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitCode(Code elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getSystem() != null) {
            T childResult = visitCodeSystemRef(elm.getSystem(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
     /// Visit a Concept. This method will be called for
     /// every node in the tree that is a Concept.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitConcept(Concept elm, C context) {
        T result = visitFields(elm, context);

        for (Code c : elm.getCode()) {
            T childResult = visitCode(c, context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
     /// Visit a InCodeSystem. This method will be called for
     /// every node in the tree that is a InCodeSystem.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitInCodeSystem(InCodeSystem elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getCode() != null) {
            T childResult = visitExpression(elm.getCode(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getCodesystem() != null) {
            T childResult = visitCodeSystemRef(elm.getCodesystem(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getCodesystemExpression() != null) {
            T childResult = visitExpression(elm.getCodesystemExpression(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
     /// Visit an AnyInCodeSystem. This method will be called for
     /// every node in the tree that is an AnyInCodeSystem.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitAnyInCodeSystem(AnyInCodeSystem elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getCodes() != null) {
            T childResult = visitExpression(elm.getCodes(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getCodesystem() != null) {
            T childResult = visitCodeSystemRef(elm.getCodesystem(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getCodesystemExpression() != null) {
            T childResult = visitExpression(elm.getCodesystemExpression(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
     /// Visit a InValueSet. This method will be called for
     /// every node in the tree that is a InValueSet.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitInValueSet(InValueSet elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getCode() != null) {
            T childResult = visitExpression(elm.getCode(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getValueset() != null) {
            T childResult = visitValueSetRef(elm.getValueset(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getValuesetExpression() != null) {
            T childResult = visitExpression(elm.getValuesetExpression(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
     /// Visit an AnyInValueSet. This method will be called for
     /// every node in the tree that is an AnyInValueSet.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitAnyInValueSet(AnyInValueSet elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getCodes() != null) {
            T childResult = visitExpression(elm.getCodes(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getValueset() != null) {
            T childResult = visitValueSetRef(elm.getValueset(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getValuesetExpression() != null) {
            T childResult = visitExpression(elm.getValuesetExpression(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
     /// Visit an Subsumes. This method will be called for
     /// every node in the tree that is an Subsumes.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitSubsumes(Subsumes elm, C context) {
        return visitFields(elm, context);
    }

    
     /// Visit an SubsumedBy. This method will be called for
     /// every node in the tree that is an SubsumedBy.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitSubsumedBy(SubsumedBy elm, C context) {
        return visitFields(elm, context);
    }

    
     /// Visit a Quantity. This method will be called for
     /// every node in the tree that is a Quantity.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitQuantity(Quantity elm, C context) {
        return visitFields(elm, context);
    }

    
     /// Visit a Ratio. This method will be called for
     /// every node in the tree that is a Ratio.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitRatio(Ratio elm, C context) {
        T result = visitFields(elm, context);

        if (elm.getDenominator() != null) {
            T childResult = visitQuantity(elm.getDenominator(), context);
            result = aggregateResult(result, childResult);
        }
        if (elm.getNumerator() != null) {
            T childResult = visitQuantity(elm.getNumerator(), context);
            result = aggregateResult(result, childResult);
        }

        return result;
    }

    
     /// Visit a CalculateAge. This method will be called for
     /// every node in the tree that is a CalculateAge.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitCalculateAge(CalculateAge elm, C context) {
        return visitFields(elm, context);
    }

    
     /// Visit a CalculateAgeAt. This method will be called for
     /// every node in the tree that is a CalculateAgeAt.
    ///
     /// @param elm     the ELM tree
     /// @param context the context passed to the visitor
     /// @return the visitor result
     ///
    @override
  T visitCalculateAgeAt(CalculateAgeAt elm, C context) {
        return visitFields(elm, context);
    }
}
