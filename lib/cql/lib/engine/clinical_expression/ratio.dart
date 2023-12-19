import '../../cql.dart';

/// The Ratio type defines a ratio between two quantities. For example, the
/// titre 1:128, or the concentration ratio 5 mg/10 mL. The numerator and
/// denominator are both quantities.
class Ratio extends Expression {
  final Quantity numerator;
  final Quantity denominator;

  Ratio({required this.numerator, required this.denominator});

  factory Ratio.fromJson(Map<String, dynamic> json) => Ratio(
        numerator: Quantity.fromJson(json['numerator']!),
        denominator: Quantity.fromJson(json['denominator']!),
      );

  @override
  Map<String, dynamic> toJson() => {
        'numerator': numerator.toJson(),
        'denominator': denominator.toJson(),
      };
}
