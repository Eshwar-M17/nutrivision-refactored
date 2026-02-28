import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String name,
    required int age,
    required double hight,
    required double weight,
    required String gender,
    required String goal,
    @JsonKey(name: "selected_diseases") required String selectedDiseases,
    @JsonKey(name: "activity_level") required Map activityLevel,
  }) = _UserModel;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class MacroTarget with _$MacroTarget {
  const factory MacroTarget({
    required double calories,
    required double carbs,
    required double fat,
    required double protein,
  }) = _MacroTarget;

  factory MacroTarget.fromJson(Map<String, dynamic> json) =>  _$MacroTargetFromJson(json);
}
