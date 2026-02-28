// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  name: json['name'] as String,
  age: (json['age'] as num).toInt(),
  hight: (json['hight'] as num).toDouble(),
  weight: (json['weight'] as num).toDouble(),
  gender: json['gender'] as String,
  goal: json['goal'] as String,
  selectedDiseases: json['selected_diseases'] as String,
  activityLevel: json['activity_level'] as Map<String, dynamic>,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'hight': instance.hight,
      'weight': instance.weight,
      'gender': instance.gender,
      'goal': instance.goal,
      'selected_diseases': instance.selectedDiseases,
      'activity_level': instance.activityLevel,
    };

_MacroTarget _$MacroTargetFromJson(Map<String, dynamic> json) => _MacroTarget(
  calories: (json['calories'] as num).toDouble(),
  carbs: (json['carbs'] as num).toDouble(),
  fat: (json['fat'] as num).toDouble(),
  protein: (json['protein'] as num).toDouble(),
);

Map<String, dynamic> _$MacroTargetToJson(_MacroTarget instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'carbs': instance.carbs,
      'fat': instance.fat,
      'protein': instance.protein,
    };
