import '../elm.dart';

class Expression extends ElmElement {
  String? localId;
  String? locator;
  String? descriptionField;
  Expression? arg;
  List<Expression>? args;
  Map<String, dynamic>? json;

  Expression.fromJson(Map<String, dynamic> json) {
    this.json = json;
    if (json['operand'] != null) {
      final op = build(json['operand']);
      if (typeIsArray(json['operand'])) {
        args = op.cast<Expression>();
      } else {
        arg = op as Expression;
      }
    }

    if (json['localId'] != null) {
      localId = json['localId'];
    }

    if (json['locator'] != null) {
      locator = json['locator'];
    }
  }
  List<dynamic> execute(Context ctx) {
    try {
      if (localId != null) {
        // Store the localId and result on the root context of this library
        final execValue = exec(ctx);
        ctx.rootContext().setLocalIdWithResult(localId!, execValue);
        return execValue;
      } else {
        // Ensure we this.exec before returning so AnnotatedError logic gets hit
        final execValue = exec(ctx);
        return execValue;
      }
    } catch (e) {
      if (e is AnnotatedError) {
        throw e;
      } else {
        final libraryIdentifier = getRecursiveLibraryIdentifier(ctx);
        throw AnnotatedError(
          errorCause: e is Error ? e : null,
          exceptionCause: e is Exception ? e : null,
          expressionName: runtimeType.toString(),
          libraryName: libraryIdentifier,
          localId: localId,
          locator: locator,
        );
      }
    }
  }

  dynamic exec(Context _ctx) => this;

  List<dynamic> execArgs(Context ctx) {
    if (args != null) {
      return args!
          .map((arg) => arg.execute(ctx))
          .expand((element) => element)
          .toList();
    } else if (arg != null) {
      return arg!.execute(ctx);
    } else {
      return [];
    }
  }

  // TODO(Dokotela) Even TS isn't strong enough typed for me
  String getRecursiveLibraryIdentifier(Context ctx) {
    dynamic identifier = null;
    if (ctx is PatientContext) {
      identifier = ctx.library.source['library']['identifier'];
    } else if (ctx is UnfilteredContext) {
      identifier = ctx.library.source['library']['identifier'];
    }
    if (identifier != null) {
      return '${identifier.id}${identifier.version != null ? '|${identifier.version}' : ''}';
    } else {
      return ctx.parent != null
          ? getRecursiveLibraryIdentifier(ctx.parent!)
          : '(unknown)';
    }
  }
}
