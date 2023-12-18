import 'package:cql/engine/types/types.dart';

/// The Ratio type is used to represent a ratio of two quantities.

class Ratio {
  final LiteralQuantity numerator;
  final LiteralQuantity denominator;

  Ratio({
    required this.numerator,
    required this.denominator,
  });
}
