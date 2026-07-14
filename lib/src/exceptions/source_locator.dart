import 'package:cql/src/internal.dart';
import 'package:meta/meta.dart';

/// Identifies the precise origin of a CQL/ELM node for diagnostic reporting.
///
/// A [SourceLocator] combines the containing library's identity
/// ([librarySystemId], [libraryName], [libraryVersion]) with the specific ELM
/// node ([nodeId], [nodeType]) and, when available, the [Location] span within
/// the CQL source text. It is attached to a [CqlException] to tell the caller
/// where a diagnostic originated.
@immutable
class SourceLocator {
  /// Creates a [SourceLocator] from its component parts.
  ///
  /// [libraryName] and [nodeType] are required; the remaining fields refine the
  /// reference with the library's system/version, the ELM [nodeId], and the
  /// [sourceLocation] span when known.
  SourceLocator({
    required this.libraryName,
    required this.nodeType,
    this.librarySystemId,
    this.libraryVersion,
    this.nodeId,
    this.sourceLocation,
  });

  /// Builds a [SourceLocator] for an ELM [node] within [currentLibrary].
  ///
  /// Derives the library identity from [currentLibrary] (falling back to
  /// placeholder values when unavailable), takes the node's local id and type
  /// (with any trailing `Evaluator` suffix stripped via [stripEvaluator]), and
  /// parses the node's locator into a [Location] when present.
  factory SourceLocator.fromNode(Element node, CqlLibrary? currentLibrary) {
    return SourceLocator(
      librarySystemId: currentLibrary?.identifier?.system ??
          'http://cql.hl7.org/Library/unknown',
      libraryName: currentLibrary?.identifier?.id ?? '?',
      libraryVersion: currentLibrary?.identifier?.version,
      nodeId: node.localId,
      nodeType: stripEvaluator(node.runtimeType.toString()),
      sourceLocation:
          node.locator != null ? Location.fromLocator(node.locator) : null,
    );
  }

  /// The namespace/system URI of the containing library, if known.
  final String? librarySystemId;

  /// The identifier (name) of the containing library.
  final String libraryName;

  /// The version of the containing library, if known.
  final String? libraryVersion;

  /// The local id of the ELM node this locator refers to, if any.
  final String? nodeId;

  /// The type of the ELM node this locator refers to (with any `Evaluator`
  /// suffix stripped).
  final String nodeType;

  /// The span within the CQL source text for this node, if available.
  final Location? sourceLocation;

  /// Removes a trailing `Evaluator` suffix from [nodeType], leaving the bare
  /// ELM node type name.
  static String stripEvaluator(String nodeType) {
    return nodeType.endsWith('Evaluator')
        ? nodeType.substring(0, nodeType.lastIndexOf('Evaluator'))
        : nodeType;
  }

  /// Returns a compact `location(idOrType)` string combining the source
  /// [Location] locator (or `?` when absent) with the node's [nodeId] or, if
  /// null, its [nodeType].
  String getLocation() {
    final location = sourceLocation != null ? sourceLocation!.toLocator() : '?';
    final idOrType = nodeId ?? nodeType;
    return '$location($idOrType)';
  }

  Map<String, dynamic> toJson() {
    return {
      if (librarySystemId != null) 'librarySystemId': librarySystemId,
      'libraryName': libraryName,
      if (libraryVersion != null) 'libraryVersion': libraryVersion,
      if (nodeId != null) 'nodeId': nodeId,
      'nodeType': nodeType,
      if (sourceLocation != null) 'sourceLocation': sourceLocation!.toJson(),
    };
  }

  @override
  String toString() {
    final location = getLocation();
    return "${libraryName.isNotEmpty ? libraryName : "?"}$location";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SourceLocator) return false;

    return librarySystemId == other.librarySystemId &&
        libraryName == other.libraryName &&
        libraryVersion == other.libraryVersion &&
        nodeId == other.nodeId &&
        nodeType == other.nodeType &&
        sourceLocation == other.sourceLocation;
  }

  @override
  int get hashCode => Object.hash(
        librarySystemId,
        libraryName,
        libraryVersion,
        nodeId,
        nodeType,
        sourceLocation,
      );
}
