import 'package:cql/engine/types/types.dart';

import 'qdm_5_4.dart';

///  Unlike other QDM datatypes, the Care Goal datatype does not indicate
/// 				a specific context of use. Instead, to meet this criterion, there must be
/// 				documentation of a care goal as defined by the Care Goal QDM category and its
/// 				corresponding value set. Timing: The Relevant Period references the period between:
/// 				startTime – when the goal is recorded, and therefore should be considered effective,
/// 				stopTime – when the target outcome is expected to be met 

class CareGoal {
  final LiteralDateTimeInterval? relevantPeriod;
  final Id? relatedTo;
  final dynamic targetOutcome;

  CareGoal({
 this.relevantPeriod,
 this.relatedTo,
 this.targetOutcome,
  });
}
