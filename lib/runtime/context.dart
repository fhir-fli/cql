import '../cql.dart';

class Context {
  // Public Constructor args
  var parent;
  dt.DateTime? executionDateTime;
  MessageListener? messageListener;

  // Private Constructor args
  TerminologyProvider? _codeService;
  Parameter? _parameters;

  // Auto-initialized properties
  var contextValues = {};
  var libraryContext = {};
  var localIdContext = {};
  var evaluatedRecords = [];

  Context(
    this.parent, [
    this._codeService,
    this._parameters,
    this.executionDateTime,
    this.messageListener,
  ]) {
    this.contextValues = {};
    this.libraryContext = {};
    this.localIdContext = {};
    this.evaluatedRecords = [];
    this.checkParameters(_parameters ?? {});
    this._parameters = _parameters ?? {};
  }

  // Getter for parameters
  get parameters => _parameters ?? (parent != null ? parent.parameters : null);

  // Setter for parameters
  set parameters(params) {
    checkParameters(params);
    _parameters = params;
  }

  // Getter for codeService
  get codeService =>
      _codeService ?? (parent != null ? parent.codeService : null);

  // Setter for codeService
  set codeService(cs) {
    _codeService = cs;
  }
}
