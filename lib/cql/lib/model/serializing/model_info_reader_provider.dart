import '../../cql.dart';

abstract class ModelInfoReaderProvider {
  ModelInfoReader create(String contentType);
}

class ModelInfoReaderProviders {
  final Iterable<ModelInfoReaderProvider> providers;
  final bool refresh;

  ModelInfoReaderProviders(this.providers, this.refresh);
}
