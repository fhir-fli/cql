import 'package:cql/engine/types/types.dart';



/// 
/// 				Data elements that meet criteria using this
/// 				datatype should document an unexpected or dangerous reaction to a
/// 				device indicated by the QDM category and its corresponding value
/// 				set.
/// 			

class DeviceAdverseEvent {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? reaction;

  DeviceAdverseEvent({
 this.startDatetime,
 this.stopDatetime,
 this.reaction,
  });
}
