import 'package:cql/src/internal.dart';

/// Implemented by components that need the active [NamespaceManager]
/// injected.
// Deliberate capability interface mirroring the Java reference translator's
// NamespaceAware; classes opt in via `implements`, so a typedef won't do.
// ignore: one_member_abstracts
abstract class NamespaceAware {
  /// Sets the namespace manager for this implementation.
  void setNamespaceManager(NamespaceManager namespaceManager);
}
