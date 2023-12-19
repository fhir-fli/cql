import '../../cql.dart';

/// Represents information related to a profile, extending [ClassInfo].
///
/// The [ProfileInfo] type represents details regarding a profile,
/// inheriting from ClassInfo.
class ProfileInfo extends ClassInfo {
  ProfileInfo({required super.name});

  factory ProfileInfo.fromJson(Map<String, dynamic> json) {
    return ProfileInfo(
      name: json['name'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}
