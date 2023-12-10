import 'package:antlr4/antlr4.dart' as antlr;

import '../antlr4/cqlParser.dart';
import '../elm/schema/schema.dart';
import 'base_info.dart';
import 'code_definition_info.dart';
import 'codesystem_definition_info.dart';
import 'concept_definition_info.dart';
import 'context_definition_info.dart';
import 'expression_definition_info.dart';
import 'function_definition_info.dart';
import 'include_definition_info.dart';
import 'parameter_definition_info.dart';
import '../../exceptions/result_with_possible_error.dart';
import 'using_definition_info.dart';
import 'valueset_definition_info.dart';

class LibraryInfo extends BaseInfo {
  String? namespaceName;
  String? libraryName;
  String? version;

  UsingDefinitionInfo? preferredUsingDefinition;
  Map<String, UsingDefinitionInfo> usingDefinitions = {};
  Map<String, IncludeDefinitionInfo> includeDefinitions = {};
  Map<String, CodesystemDefinitionInfo> codesystemDefinitions = {};
  Map<String, ValuesetDefinitionInfo> valuesetDefinitions = {};
  Map<String, CodeDefinitionInfo> codeDefinitions = {};
  Map<String, ConceptDefinitionInfo> conceptDefinitions = {};
  Map<String, ParameterDefinitionInfo> parameterDefinitions = {};
  Map<String, ExpressionDefinitionInfo> expressionDefinitions = {};
  Map<String, List<FunctionDefinitionInfo>> functionDefinitions = {};
  List<ContextDefinitionInfo> contextDefinitions = [];
  Map<antlr.Interval, BaseInfo> definitions = {};

  LibraryInfo() {
    usingDefinitions = {};
    includeDefinitions = {};
    codesystemDefinitions = {};
    valuesetDefinitions = {};
    codeDefinitions = {};
    conceptDefinitions = {};
    parameterDefinitions = {};
    expressionDefinitions = {};
    functionDefinitions = {};
    contextDefinitions = [];
    definitions = {};
  }

  String? getNamespaceName() {
    return namespaceName;
  }

  void setNamespaceName(String namespaceName) {
    this.namespaceName = namespaceName;
  }

  LibraryInfo withLibraryName(String value) {
    libraryName = value;
    return this;
  }

  String? getVersion() {
    return version;
  }

  void setVersion(String version) {
    this.version = version;
  }

  LibraryInfo withVersion(String value) {
    version = value;
    return this;
  }

  void addDefinition(BaseInfo definition) {
    if (definition.getDefinition() != null) {
      antlr.Interval? sourceInterval =
          definition.getDefinition()?.sourceInterval;
      if (sourceInterval == null) {
        throw ArgumentError(
            "Cannot add a definition without a source interval.");
      } else {
        definitions[sourceInterval] = definition;
      }
    }
  }

  @override
  LibraryDefinitionContext getDefinition() {
    return super.getDefinition() as LibraryDefinitionContext;
  }

  void setDefinition(antlr.ParserRuleContext value) {
    super.setDefinition(value);
    addDefinition(this);
  }

  LibraryInfo withDefinition(LibraryDefinitionContext value) {
    setDefinition(value);
    return this;
  }

  void addUsingDefinition(UsingDefinitionInfo usingDefinition) {
    // First using definition encountered is "preferred", meaning it will resolve as the default model info
    if (preferredUsingDefinition == null) {
      preferredUsingDefinition = usingDefinition;
    }
    if (usingDefinition.getName() == null) {
      throw ArgumentError(
          "A using definition with the name as null cannot be used.");
    } else {
      usingDefinitions[usingDefinition.getName()!] = usingDefinition;
      addDefinition(usingDefinition);
    }
  }

  UsingDefinitionInfo? resolveModelReference(String identifier) {
    return usingDefinitions[identifier];
  }

  UsingDefinitionInfo? getDefaultUsingDefinition() {
    return preferredUsingDefinition;
  }

  String? getDefaultModelName() {
    UsingDefinitionInfo? usingDefinitionInfo = getDefaultUsingDefinition();
    if (usingDefinitionInfo == null) {
      throw ArgumentError(
          "Could not determine a default model because no usings have been defined.");
    }
    return usingDefinitionInfo.getName();
  }

  void addIncludeDefinition(IncludeDefinitionInfo includeDefinition) {
    if (includeDefinition.getLocalName() == null) {
      throw ArgumentError(
          "An include definition with the local name as null cannot be used.");
    } else {
      includeDefinitions[includeDefinition.getLocalName()!] = includeDefinition;
      addDefinition(includeDefinition);
    }
  }

  IncludeDefinitionInfo? resolveLibraryReference(String identifier) {
    return includeDefinitions[identifier];
  }

  String? resolveLibraryName(String identifier) {
    IncludeDefinitionInfo? includeDefinition =
        resolveLibraryReference(identifier);
    return includeDefinition?.getLocalName();
  }

  void addParameterDefinition(ParameterDefinitionInfo parameterDefinition) {
    if (parameterDefinition.getName() == null) {
      throw ArgumentError(
          "A parameter definition with the name as null cannot be used.");
    } else {
      parameterDefinitions[parameterDefinition.getName()!] =
          parameterDefinition;
      addDefinition(parameterDefinition);
    }
  }

  ParameterDefinitionInfo? resolveParameterReference(String identifier) {
    return parameterDefinitions[identifier];
  }

  String? resolveParameterName(String identifier) {
    ParameterDefinitionInfo? parameterDefinition =
        resolveParameterReference(identifier);
    return parameterDefinition?.getName();
  }

  void addCodesystemDefinition(CodesystemDefinitionInfo codesystemDefinition) {
    if (codesystemDefinition.getName() == null) {
      throw ArgumentError(
          "A codesystem definition with the name as null cannot be used.");
    } else {
      codesystemDefinitions[codesystemDefinition.getName()!] =
          codesystemDefinition;
      addDefinition(codesystemDefinition);
    }
  }

  CodesystemDefinitionInfo? resolveCodesystemReference(String identifier) {
    return codesystemDefinitions[identifier];
  }

  void addValuesetDefinition(ValuesetDefinitionInfo valuesetDefinition) {
    if (valuesetDefinition.getName() == null) {
      throw ArgumentError(
          "A valueset definition with the name as null cannot be used.");
    } else {
      valuesetDefinitions[valuesetDefinition.getName()!] = valuesetDefinition;
      addDefinition(valuesetDefinition);
    }
  }

  ValuesetDefinitionInfo? resolveValuesetReference(String identifier) {
    return valuesetDefinitions[identifier];
  }

  String? resolveValuesetName(String identifier) {
    ValuesetDefinitionInfo? valuesetDefinition =
        resolveValuesetReference(identifier);
    return valuesetDefinition?.getName();
  }

  void addCodeDefinition(CodeDefinitionInfo codeDefinition) {
    if (codeDefinition.getName() == null) {
      throw ArgumentError(
          "A code definition with the name as null cannot be used.");
    } else {
      codeDefinitions[codeDefinition.getName()!] = codeDefinition;
      addDefinition(codeDefinition);
    }
  }

  CodeDefinitionInfo? resolveCodeReference(String identifier) {
    return codeDefinitions[identifier];
  }

  void addConceptDefinition(ConceptDefinitionInfo conceptDefinition) {
    if (conceptDefinition.getName() == null) {
      throw ArgumentError(
          "A concept definition with the name as null cannot be used.");
    } else {
      conceptDefinitions[conceptDefinition.getName()!] = conceptDefinition;
      addDefinition(conceptDefinition);
    }
  }

  ConceptDefinitionInfo? resolveConceptReference(String identifier) {
    return conceptDefinitions[identifier];
  }

  void addExpressionDefinition(ExpressionDefinitionInfo letStatement) {
    if (letStatement.getName() == null) {
      throw ArgumentError(
          "An expression definition with the name as null cannot be used.");
    } else {
      expressionDefinitions[letStatement.getName()!] = letStatement;
      addDefinition(letStatement);
    }
  }

  ExpressionDefinitionInfo? resolveExpressionReference(String identifier) {
    return expressionDefinitions[identifier];
  }

  String? resolveExpressionName(String identifier) {
    ExpressionDefinitionInfo? letStatement =
        resolveExpressionReference(identifier);
    return letStatement?.getName();
  }

  void addFunctionDefinition(FunctionDefinitionInfo functionDefinition) {
    List<FunctionDefinitionInfo>? infos =
        functionDefinitions[functionDefinition.getName()];
    if (infos == null) {
      infos = [];
      if (functionDefinition.getName() == null) {
        throw ArgumentError(
            "A function definition with the name as null cannot be used.");
      } else {
        functionDefinitions[functionDefinition.getName()!] = infos;
      }
    }
    infos.add(functionDefinition);
    addDefinition(functionDefinition);
  }

  Iterable<FunctionDefinitionInfo>? resolveFunctionReference(
      String identifier) {
    return functionDefinitions[identifier];
  }

  String? resolveFunctionName(String identifier) {
    Iterable<FunctionDefinitionInfo>? functionDefinitions =
        resolveFunctionReference(identifier);
    for (FunctionDefinitionInfo functionInfo in functionDefinitions ?? []) {
      return functionInfo.getName();
    }
    return null;
  }

  void addContextDefinition(ContextDefinitionInfo contextDefinition) {
    contextDefinitions.add(contextDefinition);
    addDefinition(contextDefinition);
  }

  ContextDefinitionInfo? resolveContext(ContextDefinitionContext ctx) {
    for (ContextDefinitionInfo cd in contextDefinitions) {
      if (ctx.sourceInterval == cd.getDefinition()?.sourceInterval) {
        return cd;
      }
    }
    return null;
  }

  BaseInfo? resolveDefinition(antlr.ParseTree pt) {
    return definitions[pt.sourceInterval];
  }

  bool isFunctionDefInfoAlreadyPresent(
      ResultWithPossibleError<FunctionDefinitionInfo> existingFunctionDefInfo,
      ResultWithPossibleError<FunctionDefinitionInfo> functionDefinition) {
    return matchesFunctionDefInfos(existingFunctionDefInfo, functionDefinition);
  }

  bool matchesFunctionDefInfos(
      ResultWithPossibleError<FunctionDefinitionInfo>? existingInfo,
      ResultWithPossibleError<FunctionDefinitionInfo>? newInfo) {
    if (existingInfo == null) {
      return false;
    }

    if (existingInfo.hasError() || newInfo!.hasError()) {
      return existingInfo.hasError() && (newInfo?.hasError() ?? false);
    }

    final List<OperandDef> existingOperands = existingInfo
            .getUnderlyingResultIfExists()
            .getPreCompileOutput()
            ?.functionDef
            .operand ??
        <OperandDef>[];
    final List<OperandDef> newOperands = newInfo
            .getUnderlyingResultIfExists()
            .getPreCompileOutput()
            ?.functionDef
            .operand ??
        <OperandDef>[];

    if (existingOperands.length != newOperands.length) {
      return false;
    }

    for (int index = 0; index < existingOperands.length; index++) {
      final OperandDef existingOperand = existingOperands[index];
      final OperandDef newOperand = newOperands[index];

      if (!matchesOperands(existingOperand, newOperand)) {
        return false;
      }
    }
    return true;
  }

  bool matchesOperands(OperandDef existingOperand, OperandDef newOperand) {
    return existingOperand.resultTypeSpecifier ==
        newOperand.resultTypeSpecifier;
  }
}
